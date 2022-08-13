namespace FuxX.Pratt;

public interface Source
{
    int this[int offset] { get; }
    int Count { get; }
    void NextLine(int offset);
    (int line, int column) GetLineColumn(int offset);
    public string GetText(Location location);
}
