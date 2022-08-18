﻿using Fux.Tree;

namespace Fux.Parsing;

public sealed class Cursor
{
    public Cursor(Source unit, ErrorBag errors, TokenSpan tokens)
    {
        Assert(tokens.Count > 0);
        Offset = 0;
        Unit = unit;
        Errors = errors;
        Tokens = tokens;
    }

    public Source Unit { get; }
    public ErrorBag Errors { get; }
    public TokenSpan Tokens { get; }

    public int Offset { get; private set; }
    public int Limit => Tokens.Count;

    public bool StartsPrefix
    {
        get
        {
            var hasPrev = Offset > 0;
            var hasNext = Offset + 1 < Tokens.Count;

            return
                hasNext &&
                Current.Text == "-" &&
                !Next.WhitesBefore &&
                this.IsOperator() &&
                (Current.WhitesBefore || hasPrev && Prev.Lex.IsBracket);
        }
    }

    public bool StartsInfix => this.IsOperator() &&
                !StartsPrefix;

    public int State => Offset;
    public void Reset(int state) => Offset = state;

    public int Line => Current.Location.Line;
    public int Column => Current.Location.Column;

    public Token this[int index]
    {
        get
        {
            Assert(Offset + index < Tokens.Count);

            return Tokens[Offset + index];
        }
    }

    public Token Current
    {
        get
        {
            Assert(Offset < Tokens.Count);

            return Tokens[Offset];
        }
    }

    public Token Next
    {
        get
        {
            Assert(Offset + 1 < Tokens.Count);

            return Tokens[Offset + 1];
        }
    }

    public Token Prev
    {
        get
        {
            Assert(Offset > 0);

            return Tokens[Offset - 1];
        }
    }

    public static implicit operator Token(Cursor cursor) => cursor.Current;


    public T Scope<T>(Func<Cursor, T> parser)
        where T : Node
    {
        var start = Tokens.Start + Offset;
        var expression = parser(this);
        var next = Tokens.Start + Offset;

        expression.Span = new TokenSpan(Tokens.Tokens, start, next);

        return expression;
    }

    public Cursor Subcursor()
    {
        if (!Current.First)
        {
            throw Errors.Parser.NotImplementedAt(Current);
        }

        var subs = new TokenSpan(Tokens.Tokens, Current.Index, Current.Index);

        var indent = Current.Indent;

        while (More() && Current.Indent == indent)
        {
            var current = Current;

            _ = subs.Add();

            _ = Advance();

            if (current.Last)
            {
                break;
            }
        }

        Assert(subs[^1].Last);

        while (More() && Current.Indent > indent)
        {
            _ = subs.Add();
            _ = Advance();
        }

        return new Cursor(Unit, Errors, subs);
    }

    public Token Advance()
    {
        Assert(Offset < Tokens.Count);

        return Tokens[Offset++];

    }

    public bool More()
    {
        return Offset < Tokens.Count;
    }

    public void Swallow()
    {
        if (More())
        {
            Offset++;
        }
    }

    public Token Swallow(Lex lexKind, [CallerMemberName] string? member = null)
    {
        return this.Is(lexKind) ? Advance() : throw Errors.Parser.Unexpected(lexKind, this.At(), member);
    }

    public Token SwallowOp(string op, [CallerMemberName] string? member = null)
    {
        return this.Is(Lex.Operator) && this.IsWeak(op) ? Advance() : throw Errors.Parser.Unexpected(Lex.Operator, this.At(), member);
    }

    public bool SwallowIf(Lex lexKind)
    {
        if (this.Is(lexKind))
        {
            _ = Advance();

            return true;
        }

        return false;
    }

    public override string ToString()
    {
        return More() ? Current.Dbg() : "<EOF>";
    }
}
