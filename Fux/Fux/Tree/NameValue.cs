using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Fux.Tree
{
    public class NameValue : NodeBase
    {
        public NameValue(Name name, Expression value)
        {
            Name = name;
            Value = value;
        }

        public Name Name { get; }
        public Expression Value { get; }
    }

    public class NameValues : ListOf<NameValue>
    {
        public NameValues(IEnumerable<NameValue> items) : base(items)
        {
        }
    }
}
