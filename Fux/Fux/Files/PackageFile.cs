using System.Threading;

using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.FileSystemGlobbing;
using Microsoft.Extensions.FileSystemGlobbing.Abstractions;

namespace Fux.Files
{
    public sealed class PackageFile
    {
        public const string PackageFileName = "Package.json";

        public PackageFile(PackageRepo repo, Path path)
        {
            Repo = repo;
            Path = path;

            Json = Bind();
        }

        public PackageRepo Repo { get; }
        public Path Path { get; }
        public string Name => Json.Name;
        public PackageConfig Json { get; }

        public Path FullPath => Repo.Root / Path;
        public Path FullPackageFileName => FullPath / PackageFileName;

        public Path FullSourceFileName(SourceFile sourceFile) => FullPath / sourceFile.Path;

        public void Glob()
        {
            var matcher = new Matcher();
            foreach (var pattern in Json.Sources)
            {
                matcher.AddInclude(pattern);
            }

            var matches = matcher.Execute(new DirectoryInfoWrapper(new IO.DirectoryInfo(FullPath)));

            foreach (var sourceMatch in matches.Files.Select(sm => new SourceFile(this, sm.Path)))
            {
                Console.WriteLine($"file: {sourceMatch}");
            }
        }

        private PackageConfig Bind()
        {
            var cfg = new ConfigurationBuilder()
                .AddJsonFile(FullPackageFileName)
                .Build();

            return cfg.Get<PackageConfig>();
        }

        public override string ToString()
        {
            return Name;
        }

        public void Dump(Writer writer, IEnumerable<SourceFile> files)
        {
            writer.WriteLine($"package {Name} ({FullPackageFileName})");
            writer.Indent(() =>
            {
                foreach (var module in files)
                {
                    module.Dump(writer);
                }
            });
        }
    }
}
