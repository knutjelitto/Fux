namespace Fux.Parsing
{
    public sealed class LinerUpper
    {
        private int current = 0;

        private readonly TokenList tokens = new();

        public LinerUpper(ErrorBag errors, Lexer lexer)
        {
            Errors = errors;
            Lexer = lexer;
            CreateTokenList();
        }

        public ErrorBag Errors { get; }
        public Lexer Lexer { get; }
        public Text Source => Lexer.Source;
        public int TokenCount => tokens.Count;
        public bool Done { get; private set; }

        public Line GetElement()
        {
            if (Done)
            {
                throw new InvalidOperationException();
            }

            if (current == tokens.Count - 1)
            {
                Done = true;
                var line = new Line(new TokenSpan(tokens, current, current + 1), Enumerable.Empty<Line>().ToList());
                Assert(line.EOS);
                return line;
            }

            return ParseLine(0);
        }

        private int Consume(int indent)
        {
            tokens[current++].Indent = indent;

            return current;
        }

        private Line ParseLine(int indent)
        {
            var starter = current;

            while (current < tokens.Count && !tokens[current].EOF && tokens[current].Line == tokens[starter].Line)
            {
                current = Consume(indent);
            }

            var content = new TokenSpan(tokens, starter, current);

            var subLines = new List<Line>();

            if (current < tokens.Count && !tokens[current].EOF && tokens[current].Column > tokens[starter].Column)
            {
                indent++;

                var subLine = ParseLine(indent);
                subLines.Add(subLine);

                while (current < tokens.Count && !tokens[current].EOF && tokens[current].Column > tokens[starter].Column)
                {
                    subLine = ParseLine(indent);
                    subLines.Add(subLine);
                }
            }

            Assert(current > starter);

            return new Line(content, subLines);
        }

        private void CreateTokenList()
        {
            var current = Lexer.GetNext();

            while (true)
            {
                var whites = new Whites();

                while (current.White)
                {
                    whites.Add(current);

                    current = Lexer.GetNext();
                }

                _ = current.TransferWhites(whites);

                _ = tokens.Add(current);

                Assert(current.Index == tokens.Count - 1);

                if (current.Lex == Lex.EOF)
                {
                    break;
                }
                current = Lexer.GetNext();
            }
        }
    }

    public class Line
    {
        public Line(TokenSpan content, List<Line> subLines)
        {
            Content = content;
            SubLines = subLines;
        }

        public TokenSpan Content { get; }
        public IReadOnlyList<Line> SubLines { get; }
        public bool EOS => Content.Count == 1 && Content[0].Lex == Lex.EOF && SubLines.Count == 0;

        public void Write(Writer writer)
        {
            Write(writer, 0);
        }

        private void Write(Writer writer, int level)
        {
            writer.WriteLine($"{Content}");
            writer.Indent(() =>
            {
                foreach (var line in SubLines)
                {
                    line.Write(writer, level + 1);
                }
            });
            if (level == 0)
            {
                writer.WriteLine();
            }
        }
    }
}