using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Fux.Tree
{
    public class CallArguments : ListOf<Expression>
    {
        public CallArguments(IEnumerable<Expression> arguments)
            : base(arguments)
        {
        }
    }
}
