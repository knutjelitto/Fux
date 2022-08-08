
namespace Fux.Input
{
    public sealed class Lexer
    {
        private static readonly HashSet<int> symbols = new()
        {
            '+',  '-',  '*',  '/',
            '%',  '^',  '$',  '&',
            '~',  '!',  '\\', '#',
            '=',  '.',  ':',  '?',
            '<',  '>',  '|',
        };

        private static readonly Dictionary<string, (string name, Lex kwLex)> keywords = new();

        static Lexer()
        {
            foreach (var kw in Lex.AllLex.Where(l => l.IsKeyword))
            {
                AddKw(kw.Name, kw);
            }
        }

        public Lexer(ErrorBag errors, Source source)
        {
            Source = source;
            Offset = 0;
            Error = new LexerErrors(errors, this);
        }

        public Source Source { get; }

        public int Offset { get; private set; }
        public int Start { get; private set; }

        private int Current => Source.Ensure(Offset);
        private int Next => Source.Ensure(Offset + 1);
        private int NextNext => Source.Ensure(Offset + 2);
        private int Previous => Source.Ensure(Offset - 1);

        private int At(int offset) => Source.Ensure(Offset + offset);

        private bool Is(int offset, Func<int, bool> predicate) => predicate(At(offset));
        private bool Is(int offset, int rune) => At(offset) == rune;
        private bool Is(Func<int, bool> predicate) => predicate(At(0));
        private bool Is(int rune) => At(0) == rune;

        public LexerErrors Error { get; }

        public Token GetNext()
        {
            Start = Offset;

            if (Current == -1)
            {
                return Build(Lex.EOF);
            }

            if (Current == 0x0A) // linefeed
            {
                return Build(Lex.Newline, 1);
            }
            if (Current == 0x0D && Next == 0x0A) // return linefeed
            {
                return Build(Lex.Newline, 2);
            }
            while (Current == ' ') // space
            {
                Offset += 1;
            }
            if (Offset > Start)
            {
                return Build(Lex.Space);
            }

            switch (Current)
            {
                case '(':
                    return LeftParentOrSymbol();

                case ')':
                    return Build(Lex.RightRoundBracket, 1);

                case '{' when Next == '-':
                    return BlockComment();

                case '{':
                    return Build(Lex.LeftCurlyBracket, 1);

                case '}':
                    return Build(Lex.RCurlyBracket, 1);

                case '[':
                    return Build(Lex.LeftSquareBracket, 1);

                case ']':
                    return Build(Lex.RightSquareBracket, 1);

                case '.' when !Next.IsSymbol():
                    return Build(Lex.Dot, 1);

                case ':' when !Next.IsSymbol():
                    return Build(Lex.Colon, 1);

                case '=' when !Next.IsSymbol():
                    return Build(Lex.Assign, 1);

                case ',':
                    return Build(Lex.Comma, 1);

                case '|' when !Next.IsSymbol():
                    return Build(Lex.Bar, 1);

                case '\\' when !Next.IsSymbol():
                    return Build(Lex.Lambda, 1);

                case '-' when Next == '-':
                    return LineComment();

                case '-' when Next == '>' && !Is(2, IsSymbol):
                    return Build(Lex.Arrow, 2);

                case '"' when Next == '"' && Is(2, '"'):
                    return LongString();

                case '"':
                    return String();

                case '\'':
                    return Char();

                case '_' when !Next.IsLetterOrDigit():
                    return Wildcard();

                default:
                    if (Current.IsLower())
                    {
                        return LowerId();
                    }
                    else if (Current.IsUpper())
                    {
                        return Build(UpperId());
                    }
                    else if (Current.IsDigit())
                    {
                        return Build(Number());
                    }
                    else if (Current.IsSymbol())
                    {
                        return Build(Operator());
                    }
                    break;
            }

            throw Error.Unexpected(Current);
        }

        private Token LeftParentOrSymbol()
        {
            Assert(Current == '(');

            if (Next.IsSymbol())
            {
                var offset = 1;

                do
                {
                    offset += 1;
                }
                while (At(offset).IsSymbol());

                if (At(offset) == ')')
                {
                    var token = Build(Lex.OperatorId, offset + 1);

                    return token;
                }
            }

            return Build(Lex.LeftRoundBracket, 1);
        }

        private Token Wildcard()
        {
            Assert(Current == '_');

            return Build(Lex.Wildcard, 1);
        }

        private Token BlockComment()
        {
            Assert(Current == '{' && Next == '-');

            Offset += 2;

            while (true)
            {
                if (Current == '{' && Next == '-')
                {
                    BlockComment();
                }
                else if (Current == '-' && Next == '}')
                {
                    return Build(Lex.BlockComment, 2);
                }
                else
                {
                    if (Current == '\n')
                    {
                        Source.NextLine(Offset + 1);
                    }
                    Offset += 1;
                }
            }
        }

        private Token LineComment()
        {
            Assert(Current == '-' && Next == '-');

            Offset += 2;

            while (true)
            {
                if (Current == '\n' || Current == '\r' || Current == '\0')
                {
                    return Build(Lex.LineComment);
                }
                else
                {
                    Offset += 1;
                }
            }
        }

        private Lex Operator()
        {
            Assert(Current.IsSymbol());

            Offset += 1;

            while (Current.IsSymbol())
            {
                Offset += 1;
            }

            return Lex.Operator;
        }

        private Lex Number()
        {
            if (Current == '-')
            {
                Offset += 1;
            }

            Assert(Current.IsDigit());

            Offset += 1;

            if (Current == 'x')
            {
                Offset += 1;

                while (Current.IsHexDigit())
                {
                    Offset += 1;
                }

                return Lex.Integer;
            }
            else
            {
                while (Current.IsDigit())
                {
                    Offset += 1;
                }
            }

            if (Current != '.')
            {
                return Lex.Integer;
            }
            else
            {
                Offset += 1;

                Assert(Current.IsDigit());

                do
                {
                    Offset += 1;
                }
                while (Current.IsDigit());

                Assert(Current != '.');

                return Lex.Float;
            }
        }

        private Token String()
        {
            Assert(Current == '"');
            Offset += 1;

            while (Current != '"')
            {
                switch (Current)
                {
                    case '\\':
                        Escape();
                        break;
                    default:
                        if (Current.IsCharacter())
                        {
                            Offset += 1;
                        }
                        else
                        {
                            if (Current == '\0')
                            {
                                throw new NotImplementedException("unexpected end in string literal");
                            }
                            throw Error.Unexpected(Current, "string literal");
                        }
                        break;
                }
            }

            Assert(Current == '"');

            Offset += 1;

            return Build(Lex.String);
        }

        private Token LongString()
        {
            Assert(Current == '"');
            Offset += 1;
            Assert(Current == '"');
            Offset += 1;
            Assert(Current == '"');
            Offset += 1;

            while (Current != '"' || Next != '"' || NextNext != '"')
            {
                Offset += 1;
            }

            Assert(Current == '"');
            Offset += 1;
            Assert(Current == '"');
            Offset += 1;
            Assert(Current == '"');
            Offset += 1;

            return Build(Lex.LongString);
        }

        private Token Char()
        {
            Assert(Current == '\'');
            Offset += 1;
            Assert(Current != '\'');

            switch (Current)
            {
                case '\\':
                    Escape();
                    break;
                default:
                    if (Current.IsCharacter())
                    {
                        Offset += 1;
                    }
                    else
                    {
                        if (Current == '\0')
                        {
                            throw new NotImplementedException("unexpected end in string literal");
                        }
                        throw new NotImplementedException("illegal character in string literal");
                    }
                    break;
            }

            Assert(Current == '\'');

            Offset += 1;

            return Build(Lex.Char);
        }

        private void Escape()
        {
            Assert(Current == '\\');

            Offset += 1;

            switch (Current)
            {
                case 'n':
                case 'r':
                case 't':
                case '\\':
                case '\'':
                case '\"':
                    Offset += 1;
                    break;
                case 'x':
                    Offset += 1;
                    Match(rune => rune.IsHexDigit());
                    Match(rune => rune.IsHexDigit());
                    break;
                case 'u':
                    Offset += 1;
                    Match('{');
                    do
                    {
                        Match(rune => rune.IsHexDigit());
                    }
                    while (Current != '}');
                    Match('}');
                    break;
                case 'U':
                    Offset += 1;
                    Match(rune => rune.IsHexDigit());
                    Match(rune => rune.IsHexDigit());
                    Match(rune => rune.IsHexDigit());
                    Match(rune => rune.IsHexDigit());
                    Match(rune => rune.IsHexDigit());
                    Match(rune => rune.IsHexDigit());
                    break;
                default:
                    Assert(false);
                    break;
            }
        }

        private void Consume()
        {
            Offset++;
        }

        private int Match(Func<int, bool> predicate)
        {
            if (predicate(Current))
            {
                var current = Current;

                Offset++;

                return current;
            }

            throw Error.Unexpected(Current);
        }

        private int Match(int rune)
        {
            return Match(current => current == rune);
        }

        private Token LowerId()
        {
            Assert(Current.IsLower());

            IdTail();

            var token = Build(Lex.LowerId);

            if (keywords.TryGetValue(token.Text, out var tuple))
            {
                token = new Token(tuple.kwLex, token);
            }

            return token;
        }

        private Lex UpperId()
        {
            Assert(Current.IsUpper());

            IdTail();

            return Lex.UpperId;
        }

        private void IdTail()
        {
            Offset += 1;
            while (Current.IsLower() || Current.IsUpper() || Current.IsDigit() || Current == '_' || Current == '-')
            {
                if (Current == '-' && (!Is(-1, IsLetter) || !Is(1, IsLetter)))
                {
                    break;
                }

                Offset += 1;
            }
        }

        private Token Build(Lex lex, int plus = 0)
        {
            Offset += plus;
            if (lex == Lex.Newline)
            {
                Source.NextLine(Offset);
            }
            return new Token(lex, new Location(Source, Start, Offset - Start));
        }

        private static void AddKw(string name, Lex kwLex)
        {
            keywords.Add(name, (name, kwLex));
        }

        public static bool IsCharacter(int rune) => IsUnicode(rune) && !IsControl(rune) && !IsSurrogate(rune) && !IsBidi(rune);
        public static bool IsUnicode(int rune) => 0x00 <= rune && rune <= 0x10FFFF;
        public static bool IsControl(int rune) => 0x00 <= rune && rune <= 0x1F || 0x7F == rune || 0x80 <= rune && rune <= 0x9F;
        public static bool IsSurrogate(int rune) => 0xD800 <= rune && rune <= 0xDFFF;
        public static bool IsBidi(int rune) => 0x200E == rune || 0x200F == rune || 0x202A <= rune && rune <= 0x202E || 0x2066 <= rune && rune <= 0x2069;
        public static bool IsLower(int rune) => 'a' <= rune && rune <= 'z';
        public static bool IsUpper(int rune) => 'A' <= rune && rune <= 'Z';
        public static bool IsLetter(int rune) => 'a' <= rune && rune <= 'z' || 'A' <= rune && rune <= 'Z';
        public static bool IsDigit(int rune) => '0' <= rune && rune <= '9';
        public static bool IsLetterOrDigit(int rune) => 'a' <= rune && rune <= 'z' || 'A' <= rune && rune <= 'Z' || '0' <= rune && rune <= '9';
        public static bool IsPosDigit(int rune) => '1' <= rune && rune <= '9';
        public static bool IsHexDigit(int rune) => 'a' <= rune && rune <= 'f' || 'A' <= rune && rune <= 'F' || IsDigit(rune);
        public static bool IsSymbol(int rune) => symbols.Contains(rune);
    }
}
