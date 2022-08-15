using Fux.Parsing;

namespace Fux.Errors;

public class ParserError : LocatedMessageError
{
    public ParserError(Location location, string message)
        : base(location, message)
    {
    }
}
