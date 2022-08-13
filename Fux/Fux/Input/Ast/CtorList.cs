namespace Fux.Input.Ast;

public sealed class CtorList : ListOf<Decl.Ctor>
{
    public CtorList(IEnumerable<Decl.Ctor> items)
        : base(items)
    {
    }

    public CtorList(params Decl.Ctor[] items)
        : this(items.AsEnumerable())
    {
    }

    public new void Add(Decl.Ctor ctor) => base.Add(ctor);

    public override string ToString() => string.Join(" | ", this);
}

