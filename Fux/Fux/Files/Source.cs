using Fux.Parsing;

namespace Fux.Files;

public sealed class Source
{
    public Source(Package package, Path path)
    {
        Package = package;
        Path = path;
        Name = Path.ToString().Replace("/", ".");
        Text = new(Name, FullPath, FullPath.ReadText());
    }

    public Package Package { get; }
    public string Name { get; }
    public Path Path { get; }
    public Path FullPath => Package.FullSourceFileName(this);

    public Text Text { get; }

    public bool Exists => FullPath.FileExists;

    public void Dump(Writer writer)
    {
        var ok = Exists ? "✓" : "⨯";
        writer.WriteLine($"module {ok} {Name} ({FullPath})");
    }

    public override string ToString() => Path;
}
