using Fux.Tree;

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

    public int Offset { get; private set; }
    public Source Unit { get; }
    public ErrorBag Errors { get; }
    public TokenSpan Tokens { get; }

    public bool StartsAtomic => More() && Current.Lex.StartsAtomic;

    public bool StartsTypeAnnotation => Tokens[Offset].Lex == Lex.LowerId &&
                Offset + 1 < Tokens.Count &&
                Tokens[Offset + 1].Lex == Lex.Colon;

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
        Assert(Current.First);

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

    public bool More() => Offset < Tokens.Count;

    public bool TerminatesSomething => Offset < Tokens.Count && Tokens[Offset].Lex.TerminatesSomething;

    public Token Swallow(Lex lexKind, [CallerMemberName] string? member = null) => this.Is(lexKind) ? Advance() : throw Errors.Parser.Unexpected(lexKind, this.At(), member);

    public Token SwallowOp(string op, [CallerMemberName] string? member = null) => this.Is(Lex.Operator) && this.IsWeak(op) ? Advance() : throw Errors.Parser.Unexpected(Lex.Operator, this.At(), member);

    public bool SwallowIf(Lex lexKind)
    {
        if (this.Is(lexKind))
        {
            _ = Advance();

            return true;
        }

        return false;
    }

    public override string ToString() => More() ? Current.Dbg() : "<EOF>";
}
