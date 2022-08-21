namespace Fux.Tree
{
    public class TraitDirective : Directive
    {
        public TraitDirective(Annotations annotations, Name name, TypeParameters? typeParameters, Types traits, Elements elements)
        {
            Annotations = annotations;
            Name = name;
            TypeParameters = typeParameters;
            Traits = traits;
            Elements = elements;
        }

        public Annotations Annotations { get; }
        public Name Name { get; }
        public TypeParameters? TypeParameters { get; }
        public Types Traits { get; }
        public Elements Elements { get; }
    }
}