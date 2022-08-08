using Fux.Pratt;

namespace Fux.Errors
{
    public class Error
    {
        public static Exception UnexpectedToken(Lex expected, Token actual, string? where)
        {
            return new NotImplementedException();
        }

        public static Exception UnexpectedRune(int actual, string? where)
        {
            return new NotImplementedException();
        }

        public static Exception UnexpectedRune(int expected, int actual, string? where)
        {
            return new NotImplementedException();
        }
    }
}
