namespace Fux.Input;

public sealed class LexerErrors : InputErrors
{
    public LexerErrors(ErrorBag errors, Lexer lexer)
        : base(errors) => Lexer = lexer;

    public Lexer Lexer { get; }

    public DiagnosticException UnexpectedCharacter(Location location, int rune, string? context = null)
    {
        context = context == null ? string.Empty : $" (in {context})";
        return Add(
            new LexerError(location, $"unexpected character `{(char)rune}´{context}")
        );
    }

    public DiagnosticException IllegalWhitespace(Token token) => Add(
            new LexerError(token.Location, $"illegal whitespace before {token}")
        );

    private ILocation Location => new Location(Lexer.Source, Lexer.Offset, 1);
}
