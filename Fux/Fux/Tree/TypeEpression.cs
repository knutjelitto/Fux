namespace Fux.Tree;

public class TypeExpression : Node
{
    public TypeExpression(Name nominal)
    {
        Nominal = nominal;
    }

    public Name Nominal { get; }
}
