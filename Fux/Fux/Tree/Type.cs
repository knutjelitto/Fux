namespace Fux.Tree
{
    public interface Type : Node
    {
    }

    public abstract class TypeBase : NodeBase, Type
    {
    }

    public class Types : ListOf<Type>
    {
        public Types(IEnumerable<Type> items) : base(items)
        {
        }
    }

    public class TypeParameter : NodeBase
    {
        public TypeParameter(Name name, Name? @default)
        {
            Name = name;
            Default = @default;
        }

        public Name Name { get; }
        public Name? Default { get; }
    }

    public class TypeParameters : ListOf<TypeParameter>
    {
        public TypeParameters(IEnumerable<TypeParameter> parameters)
            : base(parameters)
        {
        }
    }

    public class TypeArguments : ListOf<Type>
    {
        public TypeArguments(IEnumerable<Type> items) : base(items)
        {
        }
    }
}