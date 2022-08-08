using System.Text;

using Fux.Input;

namespace Fux.Building
{
    public class Module
    {
        public Module(Package package, ModuleFile file)
        {
            Package = package;
            File = file;

            Scope = new ModuleScope(this);
        }

        public Package Package { get; }
        public ModuleFile File { get; }
        public string Name { get; } = string.Empty;
        public bool IsBuiltin { get; } = false;
        public bool IsFux => !IsBuiltin;
        public bool IsCore => false;

        public Source? Source { get; set; } = null;
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
