namespace Fux.Errors;

public abstract class ErrorDiagnostic : Diagnostic
{
    protected ErrorDiagnostic() : base(Level.Error)
    {
    }
}
