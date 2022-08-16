namespace Fux.Parsing;

public sealed class LexerErrors : InputErrors
{
    public LexerErrors(ErrorBag errors)
        : base(errors)
    {
    }

    public DiagnosticException UnexpectedCharacter(Location location, int rune, string? context = null)
    {
        context = context == null ? string.Empty : $" (in {context})";
        return Add(
            new LexerError(location, $"unexpected character `{(char)rune}´{context}")
        );
    }

    public DiagnosticException UnexprectedEndInCharacter(Location location, int rune, string? context = null)
    {
        context = context == null ? string.Empty : $" (in {context})";
        return Add(
            new LexerError(location, $"unexpected character `{(char)rune}´{context}")
        );
    }

    public DiagnosticException UnterminatedCharacterLiteral(Location location, int rune, string? context = null)
    {
        context = context == null ? string.Empty : $" (in {context})";
        return Add(
            new LexerError(location, $"unterminated character literal (found `{(char)rune}´ instead of `'´){context}")
        );
    }

    public DiagnosticException IllegalWhitespace(Token token) => Add(
            new LexerError(token.Location, $"illegal whitespace before {token}")
        );
}
