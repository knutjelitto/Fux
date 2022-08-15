using Fux.Parsing;

namespace Fux.Errors;

public class LexerError : LocatedMessageError
{
    public LexerError(Location location, string message)
        : base(location, message)
    {
    }
}
