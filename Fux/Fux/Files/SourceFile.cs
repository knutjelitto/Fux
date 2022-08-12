namespace Fux.Files
{
    public sealed class SourceFile
    {
        public SourceFile(PackageFile packageFile, string name)
        {
            PackageFile = packageFile;
            Name = name;
            Path = new Path(name.Replace("/", ".") + ".elm");
        }

        public PackageFile PackageFile { get; }
        public string Name { get; }
        public Path Path { get; }
        public Path FullPath => PackageFile.FullSourceFileName(this);

        public bool Exists => FullPath.FileExists;

        public void Dump(Writer writer)
        {
            var ok = Exists ? "✓" : "⨯";
            writer.WriteLine($"module {ok} {Name} ({FullPath})");
        }

        public override string ToString() => Name;
    }
}
