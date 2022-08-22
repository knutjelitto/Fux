namespace Fux.Tree;

public class ImportDirective : Directive
{
    public ImportDirective(Annotations annotations, QName qname)
    {
        Annotations = annotations;
        QName = qname;
    }

    public Annotations Annotations { get; }
    public QName QName { get; }
}
