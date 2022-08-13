namespace FuxX.Pratt;

public sealed class Liner
{
    private int current = 0;

    private readonly TokenList tokens = new();

    public Liner(Lexer lexer)
    {
        Lexer = lexer;
        CreateTokenList();
    }

    public Lexer Lexer { get; }

    public int Count => tokens.Count;

    public Element GetElement()
    {
        if (current == tokens.Count - 1)
        {
            Assert(tokens[current].Lex == Lex.EOF);
            return new Element(tokens, current, current + 1);
        }

        return BuildElement(0);
    }

    private Element BuildElement(int indent)
    {
        var starter = current;

        tokens[current].First = true;

        while (current < tokens.Count && !tokens[current].EOF && tokens[current].Line == tokens[starter].Line)
        {
            current = Consume(indent);
        }

        tokens[current - 1].Last = true;

        if (current < tokens.Count && !tokens[current].EOF && tokens[current].Column > tokens[starter].Column)
        {
            indent++;

            _ = BuildElement(indent);

            while (current < tokens.Count && !tokens[current].EOF && tokens[current].Column > tokens[starter].Column)
            {
                _ = BuildElement(indent);
            }
        }

        Assert(current > starter);

        return new Element(tokens, starter, current);
    }

    private int Consume(int indent)
    {
        tokens[current++].Indent = indent;

        return current;
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
