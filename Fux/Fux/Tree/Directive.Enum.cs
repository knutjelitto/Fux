namespace Fux.Tree
{
    public class EnumDirective : Directive
    {
        public EnumDirective(Annotations annotations, EnumDeclaration declaration)
        {
            Annotations = annotations;
            Declaration = declaration;
        }

        public Annotations Annotations { get; }
        public EnumDeclaration Declaration { get; }
    }
}