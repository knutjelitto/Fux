using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Fux.Parsing;

namespace Fux.Tree
{
    public class Reference : NodeBase, Leaf
    {
        public Reference(TokenSpan tokens)
        {
            Tokens = tokens;
            Text = Tokens.Text;
        }

        public TokenSpan Tokens { get; }

        public string Text { get; };
    }
}
