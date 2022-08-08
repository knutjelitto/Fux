namespace Fux.Files
{
    public sealed class ModuleGroup : IReadOnlyList<string>
    {
        private readonly List<string> modules = new();

        public ModuleGroup(string name, IEnumerable<string> modules)
        {
            Name = name;
            this.modules = modules.ToList();
        }

        public string Name { get; }

        public void Add(string module)
        {
            modules.Add(module);
        }

        public string this[int index] => modules[index];
        public int Count => modules.Count;

        public IEnumerator<string> GetEnumerator() => modules.GetEnumerator();
        IEnumerator IEnumerable.GetEnumerator() => GetEnumerator();
    }
}
