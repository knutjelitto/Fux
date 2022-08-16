namespace Fux.Tree;

public class ImplDirective : Directive
{
    public ImplDirective(Name name, IReadOnlyList<Element> elements)
    {
        Name = name;
        Elements = elements;
    }

    public Name Name { get; }
    public IReadOnlyList<Element> Elements { get; }
}
