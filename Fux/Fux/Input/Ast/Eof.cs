using Fux.Building;

namespace Fux.Input.Ast
{
    public sealed class Eof : Decl.DeclImpl
    {
        public Eof(Module module, Token token)
            : base(module)
        {
            Token = token;
        }

        public Token Token { get; }

        public override void PP(Writer writer)
        {
            writer.WriteLine(Lex.EOF);
        }
    }
}
