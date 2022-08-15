namespace Fux.Parsing;

public class TokenSpan : IReadOnlyList<Token>
{
    public TokenSpan(TokenList tokens, int start, int limit)
    {
        Tokens = tokens;
        Start = start;
        Limit = limit;
    }

    public TokenSpan Add()
    {
        Limit += 1;

        return this;
    }

    public Token this[int index] => Tokens[Start + index];
    public int Count => Limit - Start;

    public TokenList Tokens { get; }
    public int Start { get; }
    public int Limit { get; private set; }

    public bool Eof => Start == Tokens.Count - 1;

    public IEnumerator<Token> GetEnumerator()
    {
        for (var index = Start; index < Limit; ++index)
        {
            yield return Tokens[index];
        }
    }

    IEnumerator IEnumerable.GetEnumerator() => GetEnumerator();

    public override string ToString() => string.Join(" ", this);
}
