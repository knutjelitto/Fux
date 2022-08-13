using FuxX.Pratt;

namespace FuxX.Errors;

public class Error
{
    public static Exception UnexpectedToken(Lex expected, Token actual, string? where) => new NotImplementedException();

    public static Exception UnexpectedRune(int actual, string? where) => new NotImplementedException();

    public static Exception UnexpectedRune(int expected, int actual, string? where) => new NotImplementedException();
}
