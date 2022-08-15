using Fux.Parsing;

namespace Fux.Errors;

public class SemanticError : LocatedMessageError
{
    public SemanticError(Location location, string message)
        : base(location, message)
    {
    }
}
