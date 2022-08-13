#pragma warning disable IDE1006 // Naming Styles

namespace Fux.TypeSystem.Abstract;

public interface WithFree
{
    ISet<MonoVariable> free();
}
