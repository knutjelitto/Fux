using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Fux.Tree
{
    public class Expressions : ListOf<Expression>
    {
        public Expressions(IEnumerable<Expression> expressions)
            : base(expressions)
        {
        }
        public Expressions(Expression expression)
            : base(Enumerable.Repeat(expression, 1))
        {
        }
    }
}
