namespace Fux.Tree
{
    public class Document : ListOf<Element>
    {
        public Document(IEnumerable<Element> items) : base(items)
        {
        }
    }
}