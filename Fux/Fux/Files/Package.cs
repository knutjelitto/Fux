using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.FileSystemGlobbing;
using Microsoft.Extensions.FileSystemGlobbing.Abstractions;

namespace Fux.Files;

public class Package
{
    public const string PackageFileName = "Package.json";

    private readonly List<Package> dependencies = new();
    private readonly List<Source> exposed = new();
    private readonly Dictionary<string, Source> exposedIndex = new();
    private readonly List<Source> intern = new();
    private readonly Dictionary<string, Source> internIndex = new();

    public Package(Repository repo, Path path)
    {
        Repo = repo;
        Path = path;

        Json = Bind();
        Glob();
    }

    public Repository Repo { get; }
    public Path Path { get; }
    public string Name => Json.Name;
    public List<Source> Sources { get; } = new();
    public List<Package> Dependencies { get; } = new();
    public PackageConfig Json { get; }
    public Path FullPath => Repo.Root / Path;
    public Path FullPackageFileName => FullPath / PackageFileName;
    public Path FullSourceFileName(Source sourceFile) => FullPath / sourceFile.Path;

    public IReadOnlyList<Source> Exposed => exposed;
    public IReadOnlyList<Source> Intern => intern;
    public IEnumerable<Source> Modules => exposed.Concat(intern);

    private void Glob()
    {
        var matcher = new Matcher();
        foreach (var pattern in Json.Sources)
        {
            _ = matcher.AddInclude(pattern);
        }

        var matches = matcher.Execute(new DirectoryInfoWrapper(new IO.DirectoryInfo(FullPath)));

        foreach (var sourceFile in matches.Files.Select(sm => new Source(this, sm.Path)))
        {
            Sources.Add(sourceFile);
        }
    }

    private PackageConfig Bind()
    {
        var cfg = new ConfigurationBuilder()
            .AddJsonFile(FullPackageFileName)
            .Build();

        return cfg.Get<PackageConfig>();
    }

    public void AddDependency(Package dependency) => dependencies.Add(dependency);

    public void AddExposed(Source module)
    {
        exposed.Add(module);
        exposedIndex.Add(module.Name, module);
    }

    public void AddIntern(Source module)
    {
        intern.Add(module);
        internIndex.Add(module.Name, module);
    }

    public Source? TryGetExposed(string name) => exposedIndex.TryGetValue(name, out var module) ? module : null;

    public Source? FindImport(string importPath)
    {
        var module = FindIntern(importPath);

        if (module == null)
        {
            foreach (var dependency in dependencies)
            {
                module = dependency.FindExtern(importPath);

                if (module != null)
                {
                    break;
                }
            }
        }

        if (module == null)
        {
            foreach (var dependency in dependencies)
            {
                module = dependency.FindIntern(importPath);

                if (module != null)
                {
                    break;
                }
            }
        }

        return module;
    }

    private Source? FindIntern(string name) => exposedIndex.TryGetValue(name, out var module) ? module : internIndex.TryGetValue(name, out module) ? module : module;

    private Source? FindExtern(string importPath) => exposedIndex.TryGetValue(importPath, out var module) ? module : null;

    public override string ToString() => Name;

    public void Dump(Writer writer, IEnumerable<Source> files)
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
