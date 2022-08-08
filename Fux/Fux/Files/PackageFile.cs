using System.Threading;

namespace Fux.Files
{
    public sealed class PackageFile
    {
        public const string File = "package.json";

        private FuxPackageJson? json = null;
        private List<ModuleFile>? exposed = null;

        public PackageFile(Root repo, Path path)
        {
            Repo = repo;
            Path = path;

            Name = Path.Text.Replace("/", ".");
        }

        public string Name { get; }
        public FuxPackageJson Json => json ??= GetJson();

        public Root Repo { get; }
        public Path Path { get; }
        public Path FullPackageFileName => Repo / Path / File;
        public Path FullModuleFileName(ModuleFile module) => Repo / Path / "src" / module.Path;

        public IEnumerable<ModuleFile> Exposed => exposed ??= Json.ExposedModules;

        public override string ToString()
        {
            return Name;
        }

        public void Dump(Writer writer)
        {
            writer.WriteLine($"package {Name} ({FullPackageFileName})");
            writer.Indent(() =>
            {
                foreach (var module in Exposed)
                {
                    module.Dump(writer);
                }
            });
        }

        private FuxPackageJson GetJson()
        {
            var jsonFile = Repo / Path / File;

            return FuxJson.From(this, IO.File.ReadAllBytes(jsonFile));
        }
    }
}
