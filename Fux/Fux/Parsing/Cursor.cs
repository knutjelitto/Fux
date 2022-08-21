using Fux.Tree;

namespace Fux.Parsing
{
    public sealed class Cursor
    {
        [DebuggerStepThrough]
        public Cursor(Source source, ErrorBag errors, TokenSpan tokens)
        {
            Source = source;
            Errors = errors;
            Tokens = tokens;
            Offset = 0;
        }

        public Source Source { get; }
        public ErrorBag Errors { get; }
        public TokenSpan Tokens { get; }

        public int Offset { get; set; }
        public int Limit => Tokens.Count;

        public int State => Offset;
        public void Reset(int state) => Offset = state;

        public int Line => Current.Location.Line;
        public int Column => Current.Location.Column;

        public Token this[int index]
        {
            get
            {
                Assert(Offset + index < Tokens.Count);

                return Tokens[Offset + index];
            }
        }

        public Token Current
        {
            get
            {
                Assert(Offset < Tokens.Count);

                return Tokens[Offset];
            }
        }

        public Token Previous
        {
            get
            {
                Assert(Offset > 0);

                return Tokens[Offset - 1];
            }
        }

        public static implicit operator Token(Cursor cursor) => cursor.Current;

        public T Scope<T>(Func<Cursor, T> parser)
            where T : Node
        {
            var start = Tokens.Start + Offset;
            var expression = parser(this);
            var next = Tokens.Start + Offset;

            expression.Span = new TokenSpan(Tokens.Tokens, start, next);

            return expression;
        }

        public Cursor SubCursor()
        {
            if (!Current.First)
            {
                throw Errors.Parser.NotImplementedAt(Current);
            }

            var subs = new TokenSpan(Tokens.Tokens, Current.Index, Current.Index);

            var indent = Current.Indent;

            while (More() && Current.Indent == indent)
            {
                var current = Current;

                _ = subs.Add();

                Advance();

                if (current.Last)
                {
                    break;
                }
            }

            Assert(subs[^1].Last);

            while (More() && Current.Indent > indent)
            {
                _ = subs.Add();
                Advance();
            }

            return new Cursor(Source, Errors, subs);
        }

        [DebuggerStepThrough]
        public Cursor SubCursor2()
        {
            var start = Current.Index;
            var limit = Current.Index;
            var indent = Current.Indent;

            while (More() && Current.Indent >= indent)
            {
                limit++;
                Advance();
            }

            return new Cursor(Source, Errors, new TokenSpan(Tokens.Tokens, start, limit));
        }

        [DebuggerStepThrough]
        public void Advance(int steps = 1)
        {
            Assert(Offset < Tokens.Count);

            Offset = Math.Min(Tokens.Count, Offset + steps);

        }

        [DebuggerStepThrough]
        public bool More()
        {
            return Offset < Tokens.Count;
        }

        public Token Swallow()
        {
            Assert(Offset < Tokens.Count);

            return Tokens[Offset++];
        }

        public Token Swallow(Lex lexKind, [CallerMemberName] string? member = null)
        {
            return this.Is(lexKind) ? Swallow() : throw Errors.Parser.Unexpected(lexKind, this.At(), member);
        }

        public bool SwallowIf(Lex lexKind)
        {
            if (this.Is(lexKind))
            {
                Advance();

                return true;
            }

            return false;
        }

        public override string ToString()
        {
            return More() ? Current.Dbg() : "<EOF>";
        }
    }
}