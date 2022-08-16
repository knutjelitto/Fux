namespace Fux.ErrorHandling;

public class GlobalError : ErrorDiagnostic
{
    public GlobalError(string message) => Message = message;

    public string Message { get; }

    public override IEnumerable<string> Report()
    {
        yield return Message;
    }
}
