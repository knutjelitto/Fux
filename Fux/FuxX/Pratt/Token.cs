namespace Fux.Pratt
{
    public class Token
    {
        private readonly string? artifical = null;

        private Whites? whitesBefore = null;

        public Token(Lex lex, Location location)
        {
            Lex = lex;
            Location = location;
        }

        public Lex Lex { get; }
        public Location Location { get; }
        public string Text => Location.Text;
        public bool EOF => Lex == Lex.EOF;
        public bool White => Lex == Lex.Newline || Lex == Lex.Space || Lex == Lex.BlockComment || Lex == Lex.LineComment;
        public bool WhitesBefore => whitesBefore != null && whitesBefore.Count > 0;
        public IEnumerable<Token> Whites
        {
            get
            {
                if (whitesBefore == null)
                {
                    return Enumerable.Empty<Token>();
                }
                return whitesBefore;
            }
        }
        public int Column => Location.Column;
        public int Line => Location.Line;
        public int Index { get; set; } = -1;
        public int Indent { get; set; } = 0;
        public bool First { get; set; } = false;
        public bool Last { get; set; } = false;

        public Token TransferWhites(Whites whites)
        {
            whitesBefore = whites;

            return this;
        }
    }
}
