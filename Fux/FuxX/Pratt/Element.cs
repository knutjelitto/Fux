namespace Fux.Pratt
{
    public class Element : IReadOnlyList<Token>
    {
        public Element(TokenList tokens, int start, int next)
        {
            Tokens = tokens;
            Start = start;
            Next = next;
        }

        public Element Add()
        {
            Next += 1;

            return this;
        }

        public Token this[int index] => Tokens[Start + index];
        public int Count => Next - Start;

        public TokenList Tokens { get; }
        public int Start { get; }
        public int Next { get; private set; }

        public bool Eof => Start == Tokens.Count - 1;

        public IEnumerator<Token> GetEnumerator()
        {
            for (var index = Start; index < Next; ++index)
            {
                yield return Tokens[index];
            }
        }

        IEnumerator IEnumerable.GetEnumerator() => GetEnumerator();

        public override string ToString()
        {
            return string.Join(" ", this);
        }
    }
}
