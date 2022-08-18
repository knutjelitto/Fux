namespace Fux.Tree
{
    public class Annotation : Node
    {
        public Annotation(Name name, IReadOnlyList<Expression> arguments)
        {
            Name = name;
            Arguments = arguments;
        }

        public Name Name { get; }
        public IReadOnlyList<Expression> Arguments { get; }

        public override string ToString()
        {
            var arguments = Arguments.Count > 0 ? $"({string.Join(", ", Arguments)})" : "";
            return $"{Name}{arguments}";
        }
    }

    public class Annotations : ListOf<Annotation>
    {
        public Annotations(IEnumerable<Annotation> annotations)
            : base(annotations)
        {
        }

        public bool IsWasm => this.Any(a =>
        {
            return a.Name == "wasm" && a.Arguments.Count == 0;
        });
    }
}
