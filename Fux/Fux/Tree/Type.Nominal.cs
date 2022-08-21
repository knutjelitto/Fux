namespace Fux.Tree
{
    public class NominalType : TypeBase
    {
        public NominalType(Name name, TypeArguments? typeArguments)
        {
            Name = name;
            TypeArguments = typeArguments;
        }

        public Name Name { get; }
        public TypeArguments? TypeArguments { get; }

        public override string ToString() => $"{Name}";
    }
}