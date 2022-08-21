namespace Fux.Tree
{
    public class Annotation : NodeBase
    {
        public Annotation(Name name, Expressions arguments)
        {
            Name = name;
            Arguments = arguments;
        }

        public Name Name { get; }
        public Expressions Arguments { get; }

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

        public Annotations()
            : base(Enumerable.Empty<Annotation>())
        {
        }

        public bool IsWasm => this.Any(a =>
        {
            return a.Name == "wasm" && a.Arguments.Count == 0;
        });
    }
}
