namespace Fux.Tree;

public class NominalType : Type
{
    public NominalType(Name name)
    {
        Name = name;
    }

    public Name Name { get; }

    public override string ToString() => $"{Name}";
}
