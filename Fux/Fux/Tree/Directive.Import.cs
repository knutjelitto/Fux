namespace Fux.Tree;

public class ImportDirective : Directive
{
    public ImportDirective(QName qname)
    {
        QName = qname;
    }

    public QName QName { get; }
}
