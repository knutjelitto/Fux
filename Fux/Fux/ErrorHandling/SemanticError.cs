using Fux.Parsing;

namespace Fux.ErrorHandling;

public class SemanticError : LocatedMessageError
{
    public SemanticError(Location location, string message)
        : base(location, message)
    {
    }
}
