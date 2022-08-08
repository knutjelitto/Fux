namespace Fux.Building
{
    public sealed class Loaded : IEnumerable<Package>
    {
        private readonly Dictionary<string, Package> index = new();
        private readonly List<Package> packages = new();

        public IEnumerator<Package> GetEnumerator() => packages.GetEnumerator();

        public Package Register(PackageFile file)
        {
            if (index.TryGetValue(file.Name, out var package))
            {
                return package;
            }

            var json = file.Json;

            package = new Package(file);

            foreach (var dependency in json.Dependencies)
            {
                var found = new PackageFile(file.Repo, dependency.Name);

                package.AddDependency(Register(found));
            }

            foreach (var exposed in json.ExposedModules)
            {
                package.AddExposed(new Module(package, exposed));
            }

            foreach (var intern in json.InternModules)
            {
                package.AddIntern(new Module(package, intern));
            }

            return Add(package);
        }

        private Package Add(Package package)
        {
            if (!index.ContainsKey(package.Name))
            {
                Console.WriteLine($"adding package {package.Name}");

                index.Add(package.Name, package);
                packages.Add(package);
            }

            return package;
        }

        IEnumerator IEnumerable.GetEnumerator() => GetEnumerator();
    }
}
