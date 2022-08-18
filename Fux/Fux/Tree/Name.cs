using Fux.Parsing;

namespace Fux.Tree;

public class Name : Node
{
    public Name(Token token)
    {
        Token = token;

        Assert(token.Lex == Lex.Identifier || token.Lex == Lex.OpIdentifier || token.Lex == Lex.WasmIdentifier || token.Lex.IsOperator);
    }

    public static bool operator ==(Name name, string text) => name.Token.Text == text;
    public static bool operator !=(Name name, string text) => name.Token.Text != text;

    public Token Token { get; }

    public override string ToString() => Token.Text;
}

public class OpName : Name
{
    public OpName(Token token)
        : base(token)
    {
    }

    public override string ToString() => $"({Token.Text})";
}
