namespace Fux.Tree;

public class FunDirective : Directive
{
    public FunDirective(Name name)
    {
        Name = name;
    }

    public Name Name { get; }
}
