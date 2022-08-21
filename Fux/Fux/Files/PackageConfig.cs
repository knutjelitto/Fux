namespace Fux.Files
{
    public class PackageConfig
    {
        public string Name { get; set; } = "";
        public string Summary { get; set; } = "";
        public List<string> Include { get; set; } = new();
        public List<string> Exclude { get; set; } = new();
        public List<string> Dependencies { get; set; } = new();
    }
}