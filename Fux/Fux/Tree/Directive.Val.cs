namespace Fux.Tree;

public class ValDirective : Directive
{
    public ValDirective(Annotations annotations, Name name, Type? type, Expression value)
    {
        Annotations = annotations;
        Name = name;
        Type = type;
        Value = value;
    }

    public Annotations Annotations { get; }
    public Name Name { get; }
    public Type? Type { get; }
    public Expression Value { get; }
}
