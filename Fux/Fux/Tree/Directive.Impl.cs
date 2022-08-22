namespace Fux.Tree
{
    public class ImplDirective : Directive
    {
        public ImplDirective(Annotations annotations, Name name, NominalType? forType, Elements elements)
        {
            Annotations = annotations;
            Name = name;
            ForType = forType;
            Elements = elements;
        }

        public Annotations Annotations { get; }
        public Name Name { get; }
        public NominalType? ForType { get; }
        public Elements Elements { get; }
    }
}