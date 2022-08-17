namespace Fux.Tree;

public class FunDirective : Directive
{
    public FunDirective(FunDeclaration declaration)
    {
        Declaration = declaration;
    }

    public FunDeclaration Declaration { get; }
}
