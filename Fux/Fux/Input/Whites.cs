namespace Fux.Input;

public sealed class Whites : List<Token>
{
    public Whites()
    {
    }

    public Whites(IEnumerable<Token> whites) => AddRange(whites);

    public override string ToString() => string.Join("", this);
}
