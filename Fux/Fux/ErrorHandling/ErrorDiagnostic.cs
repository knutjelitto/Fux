namespace Fux.ErrorHandling;

public abstract class ErrorDiagnostic : Diagnostic
{
    protected ErrorDiagnostic() : base(Level.Error)
    {
    }
}
