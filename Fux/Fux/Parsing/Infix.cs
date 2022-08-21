using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Fux.Tree;

namespace Fux.Parsing
{
    public enum Assoc
    {
        None,
        Left,
        Right
    }

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

    public class Infix : NodeBase, Leaf
    {
        private static readonly Dictionary<string, Infix> table = new Dictionary<string, Infix>();

        private static Infix add(Infix infix)
        {
            table.Add(infix.Name, infix);

            return infix;
        }

        public static bool Find(Token token, [MaybeNullWhen(false)] out Infix infix)
        {
            return table.TryGetValue(token.Text, out infix);
        }

        public static bool Find(string text, [MaybeNullWhen(false)] out Infix infix)
        {
            return table.TryGetValue(text, out infix);
        }

        private static readonly Infix Assign = add(new("=", 10, Assoc.Right));
        private static readonly Infix OrElse = add(new("||", 20, Assoc.Left));
        private static readonly Infix AndThen = add(new("&&", 30, Assoc.Left));
        private static readonly Infix BitOr = add(new("|", 40, Assoc.Left));
        private static readonly Infix BitXor = add(new("^", 50, Assoc.Left));
        private static readonly Infix BitAnd = add(new("&", 60, Assoc.Left));
        private static readonly Infix Eq = add(new("==", 60, Assoc.Left));
        private static readonly Infix Ne = add(new("!=", 60, Assoc.Left));
        private static readonly Infix Lt = add(new("<", 70, Assoc.Left));
        private static readonly Infix Le = add(new("<=", 70, Assoc.Left));
        private static readonly Infix Gt = add(new(">", 70, Assoc.Left));
        private static readonly Infix Ge = add(new(">=", 70, Assoc.Left));
        private static readonly Infix AShr = add(new(">>>", 80, Assoc.Left));
        private static readonly Infix LShr = add(new(">>", 80, Assoc.Left));
        private static readonly Infix Shl = add(new("<<", 80, Assoc.Left));
        private static readonly Infix Add = add(new("+", 90, Assoc.Left));
        private static readonly Infix Sub = add(new("-", 90, Assoc.Left));
        private static readonly Infix Mul = add(new("*", 100, Assoc.Left));
        private static readonly Infix Div = add(new("/", 100, Assoc.Left));
        private static readonly Infix Mod = add(new("%", 100, Assoc.Left));
        private static readonly Infix Is = add(new("is", 110, Assoc.Left));
        private static readonly Infix As = add(new("as", 120, Assoc.Left));

        private Infix(string name, int power, Assoc assoc)
        {
            Name = name;
            Power = power;
            Assoc = assoc;
        }

        public string Name { get; }
        public int Power { get; }
        public Assoc Assoc { get; }

        public string Text => Name;

        public override string ToString()
        {
            return $"[{Name}:{Power}:{Assoc}]";
        }
    }
}
