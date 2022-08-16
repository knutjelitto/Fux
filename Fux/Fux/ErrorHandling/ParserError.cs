using Fux.Parsing;

namespace Fux.ErrorHandling;

public class ParserError : LocatedMessageError
{
    public ParserError(Location location, string message)
        : base(location, message)
    {
    }
}
