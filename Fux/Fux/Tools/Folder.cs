namespace Fux.Tools;

public sealed class Folder
{
    public Folder(params string[] parts) => Name = IO.Path.Combine(parts).Replace('\\', '/');

    public string Name { get; }

    public static implicit operator string(Folder folder) => folder.Name;

    public static Folder Combine(params string[] parts) => new(parts);

    public override string ToString() => Name;
}
