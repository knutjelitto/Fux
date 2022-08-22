namespace Fux.Tree
{
    public class NominalType : TypeBase
    {
        public NominalType(TypeReference name, TypeArguments? typeArguments)
        {
            Name = name;
            TypeArguments = typeArguments;
        }

        public TypeReference Name { get; }
        public TypeArguments? TypeArguments { get; }

        public override string ToString() => $"{Name}";
    }
}