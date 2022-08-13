namespace Fux.Building.AlgorithmW;

public sealed class TypeVarGenerator
{
    private int supply = 0;

    public Type.Variable GetNextTypeVar(string? name = null) => new(new TypeVariable(supply++, name));
}
