namespace Fux.Tree
{
    public class StackTypeDirective : Directive
    {
        public StackTypeDirective(Annotations annotations, Name name, NameValues nameValues)
        {
            Annotations = annotations;
            Name = name;
            NameValues = nameValues;
        }

        public Annotations Annotations { get; }
        public Name Name { get; }
        public NameValues NameValues { get; }
    }

    public class InjectedTypeDirective : Directive
    {
        public InjectedTypeDirective(Annotations annotations, Name name)
        {
            Name = name;
        }

        public Name Name { get; }
    }

    public class NameTypeDirective : Directive
    {
        public NameTypeDirective(Annotations annotations, Name name, Type type)
        {
            Name = name;
            Type = type;
        }

        public Name Name { get; }
        public Type Type { get; }
    }
}