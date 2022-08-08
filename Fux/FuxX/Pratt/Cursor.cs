using System.Reflection;
using System.Runtime.CompilerServices;

using Fux.Errors;

namespace Fux.Pratt
{
    public sealed class Cursor
    {
        public Cursor(Module module, Element tokens)
        {
            Assert(tokens.Count > 0);
            Offset = 0;
            Module = module;
            Tokens = tokens;
        }

        public int Offset { get; private set; }
        public Module Module { get; }
        public Element Tokens { get; }

        public int State => Offset;

        public void Reset(int state)
        {
            Offset = state;
        }

        public int Line => Current.Line;
        public int Column => Current.Column;

        public Token Current
        {
            get
            {
                Assert(Offset < Tokens.Count);

                return Tokens[Offset];
            }
        }

        public Token Next
        {
            get
            {
                Assert(Offset + 1 < Tokens.Count);

                return Tokens[Offset + 1];
            }
        }


        public Token Prev
        {
            get
            {
                Assert(Offset > 0);

                return Tokens[Offset - 1];
            }
        }

        public T Scope<T>(Func<Cursor, T> parser)
        {
            var start = Tokens.Start + Offset;
            var expression = parser(this);
            var next = Tokens.Start + Offset;

            return expression;
        }

        public Cursor Subcursor()
        {
            Assert(Current.First);

            var subs = new Element(Tokens.Tokens, Current.Index, Current.Index);

            var indent = Current.Indent;

            while (More() && Current.Indent == indent)
            {
                var current = Current;

                subs.Add();
                Advance();

                if (current.Last)
                {
                    break;
                }
            }

            Assert(subs[^1].Last);

            while (More() && Current.Indent > indent)
            {
                subs.Add();
                Advance();
            }

            return new Cursor(Module, subs);
        }

        public Token Advance()
        {
            Assert(Offset < Tokens.Count);

            return Tokens[Offset++];

        }

        public bool More()
        {
            return Offset < Tokens.Count;
        }

        public bool Is(Lex lexKind)
        {
            return Current.Lex == lexKind;
        }

        public Token Consume(Lex lexKind, [CallerMemberName] string? member = null)
        {
            if (Is(lexKind))
            {
                return Advance();
            }

            throw Error.UnexpectedToken(lexKind, Current, member);
        }

        public bool Match(Lex lexKind)
        {
            if (Is(lexKind))
            {
                Advance();

                return true;
            }

            return false;
        }

        public override string ToString()
        {
            if (More())
            {
                return $"{Current}";
            }
            return "<EOF>";
        }
    }
}
