namespace Fux.Tree
{
    public class FunDeclaration : Declaration
    {
        public FunDeclaration(Annotations annotations, Name name, FunParameters parameters, Type result)
        {
            Annotations = annotations;
            Name = name;
            Parameters = parameters;
            Result = result;
        }

        public Annotations Annotations { get; }
        public Name Name { get; }
        public FunParameters Parameters { get; }
        public Type Result { get; }
    }

    public class FunParameters : Node
    {
        public FunParameters(IReadOnlyList<FunParameter> parameters)
        {
            Parameters = parameters;
        }

        public IReadOnlyList<FunParameter> Parameters { get; }
    }

    public class FunParameter : Node
    {
        public FunParameter(Name name, Type type)
        {
            Name = name;
            Type = type;
        }

        public Name Name { get; }
        public Type Type { get; }
    }
}