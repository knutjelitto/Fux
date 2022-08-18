namespace Fux.Tree;

public class FunDirective : Directive
{
    public FunDirective(Annotations annotations, FunDeclaration declaration)
    {
        Annotations = annotations;
        Declaration = declaration;
    }

    public Annotations Annotations { get; }
    public FunDeclaration Declaration { get; }
}
