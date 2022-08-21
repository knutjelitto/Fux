namespace Fux.Tree
{
    public class EnumDeclaration : Declaration
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
        public EnumMember(Name name, StructFields fields)
        {
            Name = name;
            Fields = fields;
        }

        public Name Name { get; }
        public StructFields Fields { get; }
    }

    public class EnumMembers : ListOf<EnumMember>
    {
        public EnumMembers(IEnumerable<EnumMember> items)
            : base(items)
        {
        }
    }
}