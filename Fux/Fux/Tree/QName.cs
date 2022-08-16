namespace Fux.Tree;

public class QName : Node
{
    public QName(IReadOnlyList<Name> names)
    {
        Assert(names.Count >= 1);

        Names = names;
    }

    public IReadOnlyList<Name> Names { get; }
}
