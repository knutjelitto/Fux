using System.Text;

using Fux.Input;

namespace Fux.Building
{
    public class Module
    {
        private Source? source = null;
        public Module(Package package, SourceFile file)
        {
            Package = package;
            File = file;
            Name = File.Name;

            Scope = new ModuleScope(this);
        }

        public Package Package { get; }
        public SourceFile File { get; }
        public string Name { get; } = string.Empty;

        public Source Source => source ??= GetSource();
        public List<Tokens> Lines { get; } = new();
        public A.ModuleAst? Ast { get; set; } = null;
        public ModuleScope Scope { get; }

        public List<A.Exposed> Exposed { get; } = new();
        
        public Source GetSource()
        {
            return new Source(Name, File.FullPath, File.FullPath.ReadText());
        }

        public override string ToString() => Name;
    }
}
