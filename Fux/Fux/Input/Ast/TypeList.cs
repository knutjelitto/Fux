namespace Fux.Input.Ast;

public class TypeList : ListOf<Type>
{
    public TypeList(IEnumerable<Type> items) : base(items)
    {
    }

    public new void Add(Type type) => base.Add(type);
}
