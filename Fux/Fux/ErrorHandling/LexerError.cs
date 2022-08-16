using Fux.Parsing;

namespace Fux.ErrorHandling;

public class LexerError : LocatedMessageError
{
    public LexerError(Location location, string message)
        : base(location, message)
    {
    }
}
