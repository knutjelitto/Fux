using System.Diagnostics.CodeAnalysis;

using Fux.Tree;

#pragma warning disable IDE1006 // Naming Styles

namespace Fux.Parsing
{
    public interface Cursor
    {
        Source Source { get; }
        ErrorBag Errors { get; }

        Token Current { get; }
        bool More { get; }
        Token Previous { get; }
        void Advance();
        Token Swallow();
        T Scope<T>(Func<Cursor, T> parser) where T : Node;
        Cursor SubCursor();
        Cursor SubCursor2();

        IDisposable Speculate();
    }

    public abstract class CursorBase
    {
        [DebuggerStepThrough]
        protected CursorBase(Source source, ErrorBag errors)
        {
            Source = source;
            Errors = errors;
        }

        public Source Source { get; }
        public ErrorBag Errors { get; }
    }

    public sealed class SimCursor : CursorBase, Cursor
    {
        private int offset;

        [DebuggerStepThrough]
        public SimCursor(Source source, ErrorBag errors, TokenSpan tokens)
            : base(source, errors)
        {
            Tokens = tokens;
            offset = 0;
        }

        public TokenSpan Tokens { get; }

        public Token Current
        {
            get
            {
                Assert(offset < Tokens.Count);

                return Tokens[offset];
            }
        }

        public Token Previous
        {
            get
            {
                var idx = Tokens.Start + offset - 1;
                Assert(idx >= 0);

                return Tokens.Tokens[idx];
            }
        }

        public bool More => offset < Tokens.Count;

        public T Scope<T>(Func<Cursor, T> parser)
            where T : Node
        {
            var start = Tokens.Start + offset;
            var expression = parser(this);
            var next = Tokens.Start + offset;

            expression.Span = new TokenSpan(Tokens.Tokens, start, next);

            return expression;
        }

        public Cursor SubCursor()
        {
            var start = Current.Index;
            var limit = Current.Index;
            var indent = Current.Indent;

            while (More && Current.Indent == indent)
            {
                var current = Current;

                limit++;
                Advance();

                if (current.Last)
                {
                    break;
                }
            }

            while (More && Current.Indent > indent)
            {
                limit++;
                Advance();
            }

            var tokens = new TokenSpan(Tokens.Tokens, start, limit);

            return new SimCursor(Source, Errors, tokens);
        }

        [DebuggerStepThrough]
        public Cursor SubCursor2()
        {
            var start = Current.Index;
            var limit = Current.Index;
            var indent = Current.Indent;

            while (More && Current.Indent >= indent)
            {
                limit++;
                Advance();
            }

            return new SimCursor(Source, Errors, new TokenSpan(Tokens.Tokens, start, limit));
        }

        [DebuggerStepThrough]
        public void Advance()
        {
            Assert(offset < Tokens.Count);

            offset++;

        }

        [DebuggerStepThrough]
        public Token Swallow()
        {
            Assert(offset < Tokens.Count);

            return Tokens[offset++];
        }

        public IDisposable Speculate()
        {
            var savedOffset = offset;

            return new Disposable(() =>
            {
                offset = savedOffset;
            });
        }
        public override string ToString() => More ? Current.Dbg() : "<EOF>";
    }

    public sealed class LinCursor : CursorBase, Cursor
    {
        private Token? previous = null;
        private Token? current = null;

        [DebuggerStepThrough]
        public LinCursor(Source source, ErrorBag errors, Line line, int offset)
            : base(source, errors)
        {
            Toks = line.Content.Tokens;
            Inner = new InnerCursor(line, offset);
        }

        private LinCursor(Source source, ErrorBag errors, TokenList tokens, InnerCursor inner, Token? previous, Token? current)
            : base(source, errors)
        {
            Toks = tokens;
            Inner = inner;
            this.previous = previous;
            this.current = current;
        }

        private LinCursor(LinCursor from)
            : base(from.Source, from.Errors)
        {
            previous = from.previous;
            current = from.current;
            Inner = from.Inner.Clone();
            Toks = from.Toks;
        }

        private InnerCursor Inner { get; set; }
        private TokenList Toks { get; set; }

        public Token Current
        {
            get
            {
                if (current == null)
                {
                    if (Inner.GetNext(out var token))
                    {
                        current = token;
                    }
                    else
                    {
                        throw new InvalidOperationException();
                    }
                }
                return current;
            }
        }

        public Token Previous
        {
            get
            {
                Assert(previous != null);

                return previous;
            }
        }

        public bool More
        {
            get
            {
                if (current is null)
                {
                    if (Inner.GetNext(out var token))
                    {
                        current = token;
                        return true;
                    }
                    return false;
                }

                return true;
            }
        }

        public T Scope<T>(Func<Cursor, T> parser)
            where T : Node
        {
            var start = Current.Index;
            var expression = parser(this);
            var limit = Current.Index;

            expression.Span = new TokenSpan(Toks, start, limit);

            return expression;
        }

        public Cursor SubCursor()
        {
            return new LinCursor(Source, Errors, Toks, Inner.Inner(), previous, current);
        }

        [DebuggerStepThrough]
        public Cursor SubCursor2()
        {
            return new LinCursor(Source, Errors, Toks, Inner.Inner(), previous, current);
        }

        [DebuggerStepThrough]
        public void Advance()
        {
            previous = current;

            if (Inner.GetNext(out var token))
            {
                current = token;
                return;
            }
            Assert(false);
        }

        [DebuggerStepThrough]
        public Token Swallow()
        {
            previous = current;
            current = null;

            if (previous != null)
            {
                return previous;
            }

            throw new InvalidOperationException();
        }

        public IDisposable Speculate()
        {
            var savedPrevious = previous;
            var savedCurrent = current;
            var savedInner = Inner.Clone();
            var savedToks = Toks;

            return new Disposable(() =>
            {
                previous = savedPrevious;
                current = savedCurrent;
                Inner = savedInner;
                Toks = savedToks;
            });
        }

        public override string ToString() => More ? Current.Dbg() : "<EOF>";

        private class InnerCursor
        {
            private readonly Line line;
            private int offset;
            private int innerLine = -1;
            private InnerCursor? inner = null;

            public InnerCursor(Line line, int offset)
            {
                this.line = line;
                this.offset = offset;
            }

            public InnerCursor Clone()
            {
                var clone = new InnerCursor(line, offset);
                clone.innerLine = innerLine;
                clone.inner = inner;

                return clone;
            }

            public InnerCursor Inner()
            {
                if (inner == null)
                {
                    return this;
                }
                return inner.Inner();
            }

            public bool GetNext([MaybeNullWhen(false)]out Token token)
            {
                if (inner == null)
                {
                    if (offset < line.Content.Count)
                    {
                        token = line.Content[offset++];
                        return true;
                    }

                    innerLine = 0;
                    if (innerLine < line.SubLines.Count)
                    {
                        inner = new InnerCursor(line.SubLines[innerLine], 0);
                    }
                }

                if (inner != null)
                {
                    if (inner.GetNext(out token))
                    {
                        return true;
                    }

                    innerLine++;

                    if (innerLine < line.SubLines.Count)
                    {
                        inner = new InnerCursor(line.SubLines[innerLine], 0);

                        return inner.GetNext(out token);
                    }
                }

                token = null;
                return false;
            }
        }
    }
}