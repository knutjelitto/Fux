namespace Fux.ErrorHandling;

public sealed class InternalError : ErrorDiagnostic
{
    public InternalError(string message) => Message = message;

    public string Message { get; }

    public override IEnumerable<string> Report()
    {
        yield return $"internal error: {Message}";
    }
}
