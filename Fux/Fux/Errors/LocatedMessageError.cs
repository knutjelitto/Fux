using Fux.Parsing;

namespace Fux.Errors;

public abstract class LocatedMessageError : ErrorDiagnostic
{
    public LocatedMessageError(Location location, string message)
    {
        Location = location;
        Message = message;
    }

    public Location Location { get; }
    public string Message { get; }

    public override IEnumerable<string> Report()
    {
        yield return $"{Location.Source.Path}({Location.Line},{Location.Column}): {Message}";
    }
}
