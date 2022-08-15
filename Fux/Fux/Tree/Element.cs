namespace Fux.Tree;
public class Element
{
    public Element(List<Node> nodes)
    {
        Nodes = nodes;
    }

    public List<Node> Nodes { get; }
}
