namespace Fux.Tree
{
    public class StructDeclaration : DeclarationBase
    {
        public StructDeclaration(Annotations annotations, Name name, TypeParameters? typeParameters, StructFields fields)
        {
            Annotations = annotations;
            Name = name;
            TypeParameters = typeParameters;
            Fields = fields;
        }

        public Annotations Annotations { get; }
        public Name Name { get; }
        public TypeParameters? TypeParameters { get; }
        public StructFields Fields { get; }
    }

    public class StructField : NodeBase
    {
        public StructField(Name name, Type type)
        {
            Name = name;
            Type = type;
        }

        public Name Name { get; }
        public Type Type { get; }
    }

    public class StructFields : ListOf<StructField>
    {
        public StructFields(IEnumerable<StructField> items)
            : base(items)
        {
        }
    }
}