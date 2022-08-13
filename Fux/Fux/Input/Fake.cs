using Fux.Building;

namespace Fux.Input;

public static class Fake
{
    public static A.Expr NativeNegate(Module module, Source source)
    {
        var basics = A.Identifier.Artificial(source, "Fux.Core.Basics");
        basics.InModule = module;

        var name = A.Identifier.Artificial(source, "negate");
        name.InModule = module;

        var native = new A.Decl.Native(module, basics, name);
        native.InModule = module;
        native.Span = basics.Span;

        var reference = new A.Expr.Ref.Native(native);
        reference.InModule = module;

        return reference;
    }
}
