namespace Fux.Tree
{
    public class FunDeclaration : DeclarationBase
    {
        public FunDeclaration(Annotations annotations, Name name, TypeParameters? typeParameters, FunParameters funParameters, Type result, Expression? expression)
        {
            Annotations = annotations;
            Name = name;
            TypeParameters = typeParameters;
            FunParameters = funParameters;
            Result = result;
            Expression = expression;
        }

        public Annotations Annotations { get; }
        public Name Name { get; }
        public TypeParameters? TypeParameters { get; }
        public FunParameters FunParameters { get; }
        public Type Result { get; }
        public Expression? Expression { get; }
    }

    public class FunParameters : ListOf<FunParameter>
    {
        public FunParameters(IEnumerable<FunParameter> items)
            : base(items)
        {
        }

        public override string ToString()
        {
            return $"({string.Join(", ", items)})";
        }
    }

    public class FunParameter : NodeBase
    {
        public FunParameter(Name name, Type type)
        {
            Name = name;
            Type = type;
        }

        public Name Name { get; }
        public Type Type { get; }

        public override string ToString()
        {
            return $"{Name}: {Type}";
        }
    }
}