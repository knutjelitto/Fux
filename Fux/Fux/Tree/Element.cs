namespace Fux.Tree
{
    public abstract class Element : NodeBase
    {
    }

    public class Elements : ListOf<Element>
    {
        public Elements(IEnumerable<Element> items) : base(items)
        {
        }
    }
}