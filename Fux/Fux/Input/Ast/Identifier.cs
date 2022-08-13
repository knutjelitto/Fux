﻿using Fux.Building;

namespace Fux.Input.Ast;

public sealed class Identifier : ListOf<Token>, IEquatable<Identifier>
{
    private readonly int hashCode;

    public Identifier(IEnumerable<Token> tokens)
        : base(tokens)
    {
        Assert(Count > 0);
        Assert(this.All(token => token.Lex.IsIdentifier));

        Text = $"{string.Join('.', this)}";
        hashCode = Text.GetHashCode();
    }

    public Identifier(params Token[] tokens)
        : this(tokens.AsEnumerable())
    {
    }

    public static Identifier Artificial(Module module, string artifical)
    {
        var identifier = Artificial(module.Ast!.Header.Name.items.First().Location.Source, artifical);
        identifier.InModule = module;
        return identifier;
    }

    public static Identifier Artificial(Source source, string artifical) => Artificial(new Location(source, 0, 0), artifical);

    public static Identifier Artificial(Location location, string artifical)
    {
        var tokens = new List<Token>();
        foreach (var text in artifical.Split('.'))
        {
            if (char.IsUpper(text, 0))
            {
                tokens.Add(Token.Artifical(Lex.UpperId, location, text));
            }
            else if (text[0] == '(')
            {
                tokens.Add(Token.Artifical(Lex.OperatorId, location, text));
            }
            else if (char.IsLower(text, 0) || text[0] == '_')
            {
                tokens.Add(Token.Artifical(Lex.LowerId, location, text));
            }
            else
            {
                Assert(false);
                throw new InvalidOperationException();
            }
        }
        return new Identifier(tokens);
    }

    public string Text { get; }

    public bool IsSingle(Lex lex) => Count == 1 && this[0].Lex == lex;
    public bool IsMulti(Lex lex) => this.All(t => t.Lex == lex);

    public bool IsSingleLower => IsSingle(Lex.LowerId);
    public bool IsSingleLowerOrOp => IsSingleLower || IsSingleOp;
    public bool IsSingleUpper => IsSingle(Lex.UpperId);
    public bool IsSingleOp => IsSingle(Lex.OperatorId);
    public bool IsMultiUpper => IsMulti(Lex.UpperId);

    public bool IsMulti2Plus => Count >= 2;

    public bool IsQualified => Count >= 2
                && this.SkipLast(1).All(t => t.Lex == Lex.UpperId)
                && this[Count - 1].Lex == Lex.LowerId;

    public (Identifier module, Identifier name) SplitLast() => (new Identifier(this.SkipLast(1)), new Identifier(this.TakeLast(1)));

    public Identifier SingleLower()
    {
        Assert(IsSingleLower);

        return this;
    }

    public Identifier SingleLowerOrOp()
    {
        Assert(IsSingleLower || IsSingleOp);

        return this;
    }

    public Identifier SingleOp()
    {
        Assert(IsSingleOp);

        return this;
    }

    public Identifier SingleUpper()
    {
        Assert(IsSingleUpper);

        return this;
    }

    public Identifier MultiUpper()
    {
        Assert(IsMultiUpper);

        return this;
    }

    public Identifier Qualified()
    {
        Assert(IsSingleLower || IsQualified);

        return this;
    }

    public override bool Equals(object? obj) => obj is Identifier other && Text == other.Text;
    public bool Equals(Identifier? other) => other != null && hashCode == other.hashCode && Text == other.Text;
    public override int GetHashCode() => hashCode;
    public override string ToString() => Text;

    public override void PP(Writer writer) => writer.Write(ToString());

}
