namespace Fux.Tree;

public class FunParameter : Node
{
    public FunParameter(Name name, TypeExpression type)
    {
        Name = name;
        Type = type;
    }

    public Name Name { get; }
    public TypeExpression Type { get; }
}
