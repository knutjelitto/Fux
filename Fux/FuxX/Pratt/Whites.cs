using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Fux.Pratt
{
    public sealed class Whites : List<Token>
    {
        public override string ToString()
        {
            return string.Join("", this);
        }
    }
}
