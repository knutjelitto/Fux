namespace Fux.Tree;

public class QName : NodeBase, Leaf
{
    public QName(IReadOnlyList<Name> names)
    {
        Assert(names.Count >= 1);

        Names = names;
    }

    public IReadOnlyList<Name> Names { get; }

    public string Text => string.Join("::", Names);

    public override string ToString()
    {
        return Text;
    }
}
