namespace Fux.Tree;

public class Unit : NodeBase
{
    public Unit(IEnumerable<Element> elements)
    {
        Elements = elements;
    }

    public IEnumerable<Element> Elements { get; }
}
