namespace Fux.Input;

public sealed class Tokener
{
    private readonly List<Token> tokens = new();

    public Tokener(Lexer lexer) => Lexer = lexer;

    public Lexer Lexer { get; }
}
