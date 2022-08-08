namespace Fux.Pratt
{
    public class Location
    {
        private (int line, int column)? lineColumn = null;

        public Location(Source source, int offset, int length)
        {
            Source = source;
            Offset = offset;
            Length = length;
        }

        public Source Source { get; }
        public int Offset { get; }
        public int Length { get; }
        public int Next => Offset + Length;
        public int Line => (lineColumn ??= Source.GetLineColumn(Offset)).line;
        public int Column => (lineColumn ??= Source.GetLineColumn(Offset)).column;

        public string Text => Source.GetText(this);

        public override string ToString()
        {
            return $"({Line},{Column})";
        }
    }
}
