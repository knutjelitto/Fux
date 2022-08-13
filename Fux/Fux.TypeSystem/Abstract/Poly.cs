namespace Fux.TypeSystem.Abstract;

public abstract class Poly : Type, WithFree
{
    public abstract ISet<MonoVariable> free();
}
