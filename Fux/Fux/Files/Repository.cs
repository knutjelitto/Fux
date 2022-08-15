using System.Diagnostics.CodeAnalysis;

using Microsoft.Extensions.FileSystemGlobbing;
using Microsoft.Extensions.FileSystemGlobbing.Abstractions;

namespace Fux.Files;

public class Repository
{
    private readonly Dictionary<string, Package> Index = new();

    public Repository(Root root)
    {
        Root = root;
        Glob();
    }

    public Root Root { get; }

    public List<Package> Packages { get; private set; } = new();
    public IEnumerable<SourceUnit> Sources => Packages.SelectMany(p => p.Sources);

    public bool FindPackage(string packageName, [MaybeNullWhen(false)] out Package package) => Index.TryGetValue(packageName, out package);

    private void Glob()
    {
        var matcher = new Matcher();
        _ = matcher.AddInclude($"/**/{Package.PackageFileName}");

        var matches = matcher.Execute(new DirectoryInfoWrapper(new IO.DirectoryInfo(Root)));

        foreach (var match in matches.Files)
        {
            var package = new Package(
                this,
                match.Path[..(match.Path.Length - Package.PackageFileName.Length - 1)]);

            Console.WriteLine($"package: {package}");

            Index.Add(package.Name, package);
            Packages.Add(package);
        }

        foreach (var package in Packages)
        {
            ResolveDependencies(package);
        }

        Packages = new Sorter().Sorted(Packages);
    }

    private void ResolveDependencies(Package package)
    {
        foreach (var packageName in package.Json.Dependencies)
        {
            if (!FindPackage(packageName, out var foundPackage))
            {
                Assert(false);
                throw new NotImplementedException();
            }

            package.Dependencies.Add(foundPackage);
        }
    }

    private class Sorter
    {
        private readonly List<Package> files = new();
        private readonly HashSet<string> names = new();

        public List<Package> Sorted(IEnumerable<Package> packages)
        {
            foreach (var package in packages)
            {
                Sort(package);
            }

            return files;
        }

        public void Sort(Package file)
        {
            if (!names.Contains(file.Name))
            {
                foreach (var dependency in file.Dependencies)
                {
                    Sort(dependency);
                }
                if (names.Contains(file.Name))
                {
                    Assert(false);
                    throw new InvalidOperationException("circular dependency");
                }
                _ = names.Add(file.Name);
                files.Add(file);
                ;
            }
        }
    }
}
