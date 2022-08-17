namespace Fux.Parsing;

public sealed class ParserErrors : InputErrors
{
    public ParserErrors(ErrorBag errors)
        : base(errors)
    {
    }

    public DiagnosticException NotImplementedAt(Token current, [CallerMemberName] string? member = null)
    {
        member = member == null ? "" : $" (in {member})";
        return Add(
            new ParserError(current.Location, $"not implemented at {current.Lex.PP()}{member}")
        );
    }

    public DiagnosticException Internal(Token current, string text, [CallerMemberName] string? member = null) => Add(
            new ParserError(current.Location, $"internal - {text} (in {member})")
        );

    public DiagnosticException Unexpected(Lex expected, Token unexpected, [CallerMemberName] string? member = null)
    {
        var context = member == null ? "" : $" (in {member})";
        return Add(
            new ParserError(unexpected.Location, $"unexpected {unexpected.Lex.PP()} (expecting {expected.PP()}){context}")
        );
    }

    public DiagnosticException Unexpected(Token unexpected, string? context = null)
    {
        context = context == null ? "" : $" (in {context})";
        return Add(
            new ParserError(unexpected.Location, $"unexpected {unexpected.Lex.PP()}{context}")
        );
    }

    public DiagnosticException IllegalFirstLexeme(Token first) => Add(
            new ParserError(first.Location, $"first lexeme on line can not preceeded by a comment")
        );

#if false
    public DiagnosticException IllegalInfixAssoc(Token assoc) => Add(
            new ParserError(assoc.Location, $"illegal infix associativity '{assoc.Text}' (known are {A.InfixAssoc.KnownAssocs})")
        );
#endif
}
