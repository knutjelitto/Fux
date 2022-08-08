using System.Text;

namespace Fux.Input
{
    public sealed class Source
    {
        public Source(string display, string path, string content)
        {
            Display = display;
            Path = path;
            Text = content;
            Lines = new List<int> { 0 };
        }

        public string Display { get; }
        public string Path { get; }
        public string Text { get; }
        public List<int> Lines { get; }
        public bool EOS { get; }

        public int Count => Text.Length;

        public Source Clone()
        {
            return new Source(Display, Path, Text);
        }

        public int Ensure(int offset)
        {
            if (offset < Text.Length)
            {
                return Text[offset];
            }
            return -1;
        }

        public void NextLine(int offset)
        {
            Assert(offset <= Text.Length);
            Assert(offset > Lines.Last());

            Lines.Add(offset);
        }

        public (int line, int column) GetLineColumn(int offset)
        {
            var lineNo = GetLineNoFromIndex(offset);
            var colNo = offset - GetIndexFromLineNo(lineNo) + 1;

            return (lineNo, colNo);
        }

        public string GetText(ILocation location)
        {
            return new Runes(Text.Skip(location.Offset).Take(location.Length)).ToString();
        }

        private int GetLineNoFromIndex(int index)
        {
            var line = Lines.BinarySearch(Math.Max(0, index));
            if (line < 0)
            {
                return ~line;
            }
            return line + 1;
        }

        private int GetIndexFromLineNo(int lineNo)
        {
            var lineIdx = Math.Max(0, Math.Min(lineNo - 1, Lines.Count - 1));

            return Lines[lineIdx];
        }
    }
}
