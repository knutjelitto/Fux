using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Fux.Tree;

namespace Fux.Parsing
{
    public class Prefix : NodeBase, Leaf
    {
        private static readonly Dictionary<string, Prefix> table = new();

        private static Prefix add(Prefix prefix)
        {
            table.Add(prefix.Name, prefix);

            return prefix;
        }

        public static bool Find(Token token, [MaybeNullWhen(false)] out Prefix infix)
        {
            return table.TryGetValue(token.Text, out infix);
        }

        public static bool Find(string text, [MaybeNullWhen(false)] out Prefix infix)
        {
            return table.TryGetValue(text, out infix);
        }

        private static readonly Prefix Not = add(new("!"));
        private static readonly Prefix BitNot = add(new("~"));
        private static readonly Prefix Negate = add(new("-"));

        private Prefix(string name)
        {
            Name = name;
        }

        public string Name { get; }
        public string Text => Name;
    }
}
