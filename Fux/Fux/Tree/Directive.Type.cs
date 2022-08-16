namespace Fux.Tree;

public class TypeDirective : Directive
{
    public TypeDirective(Name name)
    {
        Name = name;
    }

    public Name Name { get; }
}
