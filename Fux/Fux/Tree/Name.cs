using Fux.Parsing;

namespace Fux.Tree
{
    public abstract class Name : NodeBase, Leaf
    {
        public abstract string Text { get; }
        public override string ToString() => Text;
        public static bool operator ==(Name name, string text) => name.Text == text;
        public static bool operator !=(Name name, string text) => name.Text != text;
        public override bool Equals(object? obj) => obj is Name name && name.Text == Text;
        public override int GetHashCode() => Text.GetHashCode();
    }

    public sealed class KwName : Name
    {
        public KwName(Token token)
        {
            Assert(token.Lex.IsKeyword);

            Token = token;
        }

        public Token Token { get; }
        public override string Text => Token.Text;
    }

    public sealed class IdName : Name
    {
        public IdName(Token token)
        {
            Assert(token.Lex == Lex.Identifier || token.Lex == Lex.OpIdentifier || token.Lex == Lex.WasmIdentifier || token.Lex.IsOperator);

            Token = token;
        }

        public Token Token { get; }
        public override string Text => Token.Text;
    }

    public class OpName : Name
    {
        public OpName(params Token[] tokens)
        {
            Tokens = tokens;
        }

        public IReadOnlyList<Token> Tokens { get; }
        public override string Text => string.Join("", Tokens.Select(t => t.Text));
    }
}