namespace Fux.Tree
{
    public class ImplDirective : Directive
    {
        public ImplDirective(Name name, NominalType? forType, Elements elements)
        {
            Name = name;
            ForType = forType;
            Elements = elements;
        }

        public Name Name { get; }
        public NominalType? ForType { get; }
        public Elements Elements { get; }
    }
}