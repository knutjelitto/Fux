namespace Fux.Building.Typing;

public sealed class TypingContext
{
    private readonly IdentityDictionary<A.Expr, A.Expr> mapper = new();
}
