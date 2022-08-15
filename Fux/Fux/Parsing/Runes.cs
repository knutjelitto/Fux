namespace Fux.Parsing;

public sealed class Runes : IReadOnlyList<char>
{
    private readonly List<char> runes;

    public Runes(IEnumerable<char> runes) => this.runes = new List<char>(runes);

    public char this[int index] => runes[index];
    public int Count => runes.Count;
    public IEnumerator<char> GetEnumerator() => runes.GetEnumerator();
    IEnumerator IEnumerable.GetEnumerator() => ((IEnumerable)runes).GetEnumerator();

    public override string ToString()
    {
        var builder = new StringBuilder();
        foreach (var rune in runes)
        {
            _ = rune == '\n' ? builder.Append("\\n") : rune == '\r' ? builder.Append("\\r") : builder.Append(rune);
        }
        return builder.ToString();
    }
}
