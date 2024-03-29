﻿namespace Fux.Parsing;

public class TokenSpan : IReadOnlyList<Token>
{
    [DebuggerStepThrough]
    public TokenSpan(TokenList tokens, int start, int limit)
    {
        Tokens = tokens;
        Start = start;
        Limit = limit;
    }

    public Token this[int index] => Tokens[Start + index];
    public int Count => Limit - Start;
    public string Text => string.Join("", this);

    public TokenList Tokens { get; }
    public int Start { get; }
    public int Limit { get; private set; }

    public bool EOF => Start == Tokens.Count - 1 && Tokens[Start].Lex == Lex.EOF;

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
