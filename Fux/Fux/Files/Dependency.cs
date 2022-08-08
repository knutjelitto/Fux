namespace Fux.Files
{
    public sealed class Dependency
    {
        public Dependency(string name)
        {
            if (name.Contains('.'))
            {
                Assert(false);
            }
            Name = name;
        }

        public string Name { get; }

        public override string ToString()
        {
            return $"{Name}";
        }
    }
}
