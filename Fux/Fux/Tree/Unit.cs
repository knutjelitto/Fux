namespace Fux.Tree;

public class Unit : Node
{
    public Unit(IEnumerable<Element> elements)
    {
        Elements = elements;
    }

    public IEnumerable<Element> Elements { get; }
}
