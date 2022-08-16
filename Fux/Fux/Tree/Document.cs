namespace Fux.Tree;

public class Document : Node
{
    public Document(IReadOnlyList<Element> elements)
    {
        Elements = elements;
    }

    public IReadOnlyList<Element> Elements { get; }
}
