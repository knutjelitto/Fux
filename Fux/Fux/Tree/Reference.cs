using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Fux.Parsing;

namespace Fux.Tree
{
    public abstract class Reference : NodeBase
    {
        public Reference(Name name)
        {
            Name = name;
        }

        public Name Name { get; }

        public string Text => Name.Text;
    }

    public class ExpressionReference : Reference, Expression
    {
        public ExpressionReference(Name name)
            : base(name)
        {
        }

        public static implicit operator ExpressionReference(Name name) => new ExpressionReference(name);
    }

    public class TypeReference : Reference, Type
    {
        public TypeReference(Name name)
            : base(name)
        {
        }

        public static implicit operator TypeReference(Name name) => new TypeReference(name);
    }
}
