namespace Fux.Tree
{
    public class OrType : ListOf<Type>, Type
    {
        public OrType(IEnumerable<Type> items) : base(items)
        {
        }

        public override string ToString() => $"{string.Join(" | ", items)}";
    }
}