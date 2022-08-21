namespace Fux.Tree
{
    public class StackTypeDirective : Directive
    {
        public StackTypeDirective(Name name, NameValues nameValues)
        {
            Name = name;
            NameValues = nameValues;
        }

        public Name Name { get; }
        public NameValues NameValues { get; }
    }

    public class InjectedTypeDirective : Directive
    {
        public InjectedTypeDirective(Name name)
        {
            Name = name;
        }

        public Name Name { get; }
    }

    public class NameTypeDirective : Directive
    {
        public NameTypeDirective(Name name, Type type)
        {
            Name = name;
            Type = type;
        }

        public Name Name { get; }
        public Type Type { get; }
    }
}