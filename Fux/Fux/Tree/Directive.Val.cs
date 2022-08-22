namespace Fux.Tree;

public class ValDirective : Directive
{
    public ValDirective(Annotations annotations, ValDeclaration declaration)
    {
        Annotations = annotations;
        Declaration = declaration;
    }

    public Annotations Annotations { get; }
    public ValDeclaration Declaration { get; }
}
