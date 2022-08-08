using static System.Net.Mime.MediaTypeNames;

namespace Fux.Pratt
{
    public class StringSource : Source
    {
        private readonly string text;
        private readonly List<int> lines = new List<int> { 0 };

        public StringSource(string text)
        {
            this.text = text;
        }

        public int this[int index] => index < text.Length ? text[index] : -1;

        public int Count => text.Length;

        public void NextLine(int offset)
        {
            Assert(offset <= text.Length);

            lines.Add(offset);
        }
        public (int line, int column) GetLineColumn(int offset)
        {
            var lineNo = GetLineNoFromIndex(offset);
            var colNo = offset - GetIndexFromLineNo(lineNo) + 1;

            return (lineNo, colNo);
        }

        public string GetText(Location location)
        {
            return text.Substring(location.Offset, location.Length);
        }

        private int GetLineNoFromIndex(int index)
        {
            var line = lines.BinarySearch(Math.Max(0, index));
            if (line < 0)
            {
                return ~line;
            }
            return line + 1;
        }

        private int GetIndexFromLineNo(int lineNo)
        {
            var lineIdx = Math.Max(0, Math.Min(lineNo - 1, lines.Count - 1));

            return lines[lineIdx];
        }
    }
}
