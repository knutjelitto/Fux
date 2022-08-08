using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Fux.Tools
{
    public class RepoX
    {
        public RepoX(PathX path)
        {
            Path = path;
        }

        public RepoX() : this(FindRoot())
        {
        }

        public PathX Path { get; }

        public RepoX Sub(params string[] paths)
        {
            var sub = Path.Combine(paths);
            return new RepoX(sub);
        }

        public RepoX EnshureFolder()
        {
            IO.Directory.CreateDirectory(Path);

            return this;
        }

        public PathX Enshure(PathX relative)
        {
            var absolute = this / relative;
            IO.Directory.CreateDirectory(IO.Path.GetDirectoryName(absolute)!);
            return absolute;
        }

        public IEnumerable<PathX> EnumerateFiles(string pattern)
        {
            return IO.Directory
                .GetFiles(Path, pattern, SearchOption.AllDirectories)
                .Select(p => new PathX(p[(Path.Text.Length + 1) ..]));
        }

        public string ReadText(PathX relative)
        {
            return IO.File.ReadAllText(Path.Combine(relative), Encoding.UTF8);
        }

        public static PathX operator /(RepoX repo, PathX path)
        {
            return IO.Path.Combine(repo.Path, path) ?? throw new ArgumentException();
        }

        public override string ToString() => $"{Path}";

        private static PathX FindRoot()
        {
            var root = Environment.CurrentDirectory;
            while (root != null && !Directory.Exists(IO.Path.Combine(root, ".git")))
            {
                root = IO.Path.GetDirectoryName(root);
            }
            Assert(root != null);
            Assert(Directory.Exists(IO.Path.Combine(root, ".git")));

            return new PathX(root);
        }
    }
}
