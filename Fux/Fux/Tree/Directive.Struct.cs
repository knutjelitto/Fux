namespace Fux.Tree
{
    public class StructDirective : Directive
    {
        public StructDirective(Annotations annotations, StructDeclaration declaration)
        {
            Annotations = annotations;
            Declaration = declaration;
        }

        public Annotations Annotations { get; }
        public StructDeclaration Declaration { get; }
    }
}