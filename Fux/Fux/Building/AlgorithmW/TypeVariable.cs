namespace Fux.Building.AlgorithmW;

public sealed record TypeVariable(int ID, string? Name = null)
{
    public override string ToString() => Name != null ? $"{Name}" : $"'t{ID}";
}
