namespace Fux.Tools
{
    public class Root
    {
        public Root(Path path)
        {
            Path = path;
        }

        public Root() : this(FindRoot())
        {
        }

        public Path Path { get; }

        public Root Sub(params string[] paths)
        {
            var sub = Path.Combine(paths);
            return new Root(sub);
        }

        public Root EnshureFolder()
        {
            IO.Directory.CreateDirectory(Path);

            return this;
        }

        public Path EnshureFolder(Path relative)
        {
            var absolute = this / relative;
            IO.Directory.CreateDirectory(IO.Path.GetDirectoryName(absolute)!);
            return absolute;
        }

        public IEnumerable<Path> EnumerateFiles(string pattern)
        {
            return IO.Directory
                .GetFiles(Path, pattern, IO.SearchOption.AllDirectories)
                .Select(p => new Path(p[(Path.Text.Length + 1) ..]));
        }

        public string ReadText(Path relative)
        {
            return IO.File.ReadAllText(Path.Combine(relative), Encoding.UTF8);
        }

        public byte[] ReadBytes(Path relative)
        {
            return IO.File.ReadAllBytes(Path.Combine(relative));
        }

        public static Path operator /(Root repo, Path path)
        {
            return IO.Path.Combine(repo.Path, path) ?? throw new ArgumentException();
        }

        public override string ToString() => $"{Path}";

        private static Path FindRoot()
        {
            var root = Environment.CurrentDirectory;
            while (root != null && !IO.Directory.Exists(IO.Path.Combine(root, ".git")))
            {
                root = IO.Path.GetDirectoryName(root);
            }
            Assert(root != null);
            Assert(IO.Directory.Exists(IO.Path.Combine(root, ".git")));

            return new Path(root);
        }
    }
}
