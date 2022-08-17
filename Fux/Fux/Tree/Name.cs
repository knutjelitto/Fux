using Fux.Parsing;

namespace Fux.Tree;

public class Name : Node
{
    public Name(Token token)
    {
        Token = token;

        Assert(token.Lex == Lex.Identifier || token.Lex == Lex.OpIdentifier || token.Lex == Lex.WasmIdentifier);
    }

    public Token Token { get; }
}
