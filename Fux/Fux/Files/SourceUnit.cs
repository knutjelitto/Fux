using Fux.Parsing;

namespace Fux.Files;

public sealed class SourceUnit
{
    public SourceUnit(Package package, Path path)
    {
        Package = package;
        Path = path;
        Name = Path.ToString().Replace("/", ".");
        Source = new(Name, FullPath, FullPath.ReadText());
    }

    public Package Package { get; }
    public string Name { get; }
    public Path Path { get; }
    public Path FullPath => Package.FullSourceFileName(this);

    public Source Source { get; }

    public bool Exists => FullPath.FileExists;

    public void Dump(Writer writer)
    {
        var ok = Exists ? "✓" : "⨯";
        writer.WriteLine($"module {ok} {Name} ({FullPath})");
    }

    public override string ToString() => Path;
}
