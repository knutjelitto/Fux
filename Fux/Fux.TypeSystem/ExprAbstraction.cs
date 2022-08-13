using Fux.TypeSystem.Abstract;

namespace Fux.TypeSystem;

public sealed class ExprAbstraction : Expr, IEquatable<ExprAbstraction>
{
    public ExprAbstraction(ExprVariable x, Expr e)
    {
        this.x = x;
        this.e = e;
    }

    public ExprVariable x { get; }
    public Expr e { get; }

    public bool Equals(ExprAbstraction? other) => other != null && x.Equals(other.x) && e.Equals(other.e);

    public override bool Equals(object? obj) => Equals(obj as ExprAbstraction);

    public override int GetHashCode() => HashCode.Combine(x, e);
}
