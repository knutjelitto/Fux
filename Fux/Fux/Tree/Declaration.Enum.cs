namespace Fux.Tree
{
    public class EnumDeclaration : DeclarationBase
    {
        public EnumDeclaration(Annotations annotations, Name name, TypeParameters? typeParameters, EnumMembers members)
        {
            Annotations = annotations;
            Name = name;
            TypeParameters = typeParameters;
            Members = members;
        }

        public Annotations Annotations { get; }
        public Name Name { get; }
        public TypeParameters? TypeParameters { get; }
        public EnumMembers Members { get; }
    }

    public class EnumMember : NodeBase
    {
        public EnumMember(StructDeclaration @struct)
        {
            Struct = @struct;
        }

        public StructDeclaration Struct { get; }
    }

    public class EnumMembers : ListOf<StructDeclaration>
    {
        public EnumMembers(IEnumerable<StructDeclaration> items)
            : base(items)
        {
        }
    }
}