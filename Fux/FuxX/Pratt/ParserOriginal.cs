﻿namespace FuxX.Pratt;

public class ParserOriginal
{
    private readonly LexerOriginal tokens;
    private readonly List<TokenOriginal> read = new();
    private readonly Dictionary<TokenType, IPrefixParselet> prefixParselets = new();
    private readonly Dictionary<TokenType, IInfixParselet> infixParselets = new();

    public ParserOriginal(LexerOriginal tokens) => this.tokens = tokens;

    public void Register(TokenType token, IPrefixParselet parselet) => prefixParselets.Add(token, parselet);

    public void Register(TokenType token, IInfixParselet parselet) => infixParselets.Add(token, parselet);

    public Expression ParseExpression(int precedence)
    {
        var token = Consume();

        if (!prefixParselets.TryGetValue(token.Type, out var prefix))
        {
            throw new ParseException("Could not parse \"" + token.Text + "\".");
        }

        var left = prefix.Parse(this, token);

        while (precedence < GetBindingPower())
        {
            token = Consume();

            if (!infixParselets.TryGetValue(token.Type, out var infix))
            {
                throw new ParseException("Could not parse \"" + token.Text + "\".");
            }
            left = infix.Parse(this, left, token);
        }
        return left;
    }

    public Expression ParseExpression() => ParseExpression(0);

    public bool Match(TokenType expected)
    {
        var token = LookAhead(0);
        if (token.Type != expected)
        {
            return false;
        }

        _ = Consume();
        return true;
    }

    public TokenOriginal Consume(TokenType expected)
    {
        var token = LookAhead(0);
        return token.Type != expected ? throw new ParseException("Expected token " + expected + " and found " + token.Type) : Consume();
    }

    public TokenOriginal Consume()
    {
        // Make sure we've read the token.
        var token = LookAhead(0);
        _ = read.Remove(token);
        return token;
    }

    private TokenOriginal LookAhead(int distance)
    {
        // Read in as many as needed.
        while (distance >= read.Count)
        {
            read.Add(tokens.Next());
        }

        // Get the queued token.
        return read[distance];
    }

    private int GetBindingPower() => infixParselets.TryGetValue(LookAhead(0).Type, out var parselet) ? parselet.GetBindingPower() : 0;
}
