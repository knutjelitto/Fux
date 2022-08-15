namespace Fux.Input;

public sealed class Source
{
    public Source(string display, Path path, string content)
    {
        Display = display;
        Path = path;
        Content = content;
        Lines = new List<int> { 0 };
    }

    public string Display { get; }
    public Path Path { get; }
    public string Content { get; }
    public List<int> Lines { get; }
    public bool EOS { get; }

    public int Count => Content.Length;

    public Source Clone() => new(Display, Path, Content);

    public int Ensure(int offset) => offset < Content.Length ? Content[offset] : -1;

    public void NextLine(int offset)
    {
        Assert(offset <= Content.Length);
        Assert(offset > Lines.Last());

        Lines.Add(offset);
    }

    public (int line, int column) GetLineColumn(int offset)
    {
        var lineNo = GetLineNoFromIndex(offset);
        var colNo = offset - GetIndexFromLineNo(lineNo) + 1;

        return (lineNo, colNo);
    }

    public string GetText(Location location) => Content.Substring(location.Offset, location.Length);

    private int GetLineNoFromIndex(int index)
    {
        var line = Lines.BinarySearch(Math.Max(0, index));
        return line < 0 ? ~line : line + 1;
    }

    private int GetIndexFromLineNo(int lineNo)
    {
        var lineIdx = Math.Max(0, Math.Min(lineNo - 1, Lines.Count - 1));

        return Lines[lineIdx];
    }
}
