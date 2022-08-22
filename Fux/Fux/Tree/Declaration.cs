using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Fux.Tree
{
    public interface Declaration : Node
    {
    }

    public abstract class DeclarationBase : NodeBase, Declaration
    {
    }

    public class ValDeclaration : DeclarationBase
    {
        public ValDeclaration(Annotations annotations, Name name, Type? type, Expression value)
        {
            Annotations = annotations;
            Name = name;
            Type = type;
            Value = value;
        }

        public Annotations Annotations { get; }
        public Name Name { get; }
        public Type? Type { get; }
        public Expression Value { get; }
    }
}