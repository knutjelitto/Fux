namespace Fux.Parsing;

public sealed class Lexer
{
    public Lexer(ErrorBag errors, Text source)
    {
        Errors = errors;
        Source = source;
        Offset = 0;
    }

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

    public ErrorBag Errors { get; }
    public Text Source { get; }

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

    public Token GetNext()
    {
        Start = Offset;

        switch (Current)
        {
            case -1:
                return Build(Lex.EOF);

            case '\r' when Next == '\n':
                return White(Lex.Newline, 2);

            case '\n': // line-feed
                return White(Lex.Newline, 1);

            case '\r':
                return White(Lex.Newline, 1);

            case '/' when Next == '*':
                return BlockComment();

            case '/' when Next == '/':
                return LineComment();

            case '{' when Next == '-':
                return BlockComment2();

            case '-' when Next == '-':
                return LineComment2();

            case ' ':
                {
                    do
                    {
                        Offset += 1;
                    }
                    while (Current == ' ');
                    return White(Lex.Space);
                }

            case '|' when Next != '|':
                return Build(Lex.OpOr, 1);

            case '|' when Next == '|':
                return Build(Lex.OpOrElse, 2);

            case '&' when Next != '&':
                return Build(Lex.OpAnd, 1);

            case '&' when Next == '&':
                return Build(Lex.OpAndThen, 2);

            case '^':
                return Build(Lex.OpXor, 1);

            case '\\' when !Next.IsSymbol():
                return Build(Lex.Lambda, 1);

            case '-' when Next == '>':
                return Build(Lex.LightArrow, 2);

            case '=' when Next == '>':
                return Build(Lex.BoldArrow, 2);

            case '"' when Next == '"' && Is(2, '"'):
                return LongString();

            case '(':
                return LeftParentOrSymbol();

            case ')':
                return Build(Lex.RightRoundBracket, 1);

            case '{':
                return Build(Lex.LeftCurlyBracket, 1);

            case '}':
                return Build(Lex.RightCurlyBracket, 1);

            case '[':
                return Build(Lex.LeftSquareBracket, 1);

            case ']':
                return Build(Lex.RightSquareBracket, 1);

            case '=' when Next == '=':
                return Build(Lex.Equal, 2);

            case '!' when Next == '=':
                return Build(Lex.Unequal, 2);

            case '<' when Next == '=':
                return Build(Lex.LessEqual, 1);

            case '>' when Next == '=':
                return Build(Lex.LessEqual, 1);

            case '.' when !Next.IsSymbol():
                return Build(Lex.Dot, 1);

            case ':' when Is(1, ':'):
                return Build(Lex.CoCo, 2);

            case ':' when !Next.IsSymbol():
                return Build(Lex.Colon, 1);

            case '%' when Is(1, IsLower):
                return XIdentifier();

            case '=':
                return Build(Lex.Assign, 1);
            case ',':
                return Build(Lex.Comma, 1);

            case '"':
                return String();

            case '\'':
                return Char();

            case '_' when !Next.IsLetterOrDigit():
                return Wildcard();

            case '#':
                {
                    return Build(Lex.Hash, 1);
                }

            case '$' when Next.IsLetter():
                {
                    return WasmIdentifier();
                }

            default:
                if (Current.IsLetter())
                {
                    return Identifier();
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

        throw Errors.Lexer.UnexpectedCharacter(Location, Current);
    }

    private Location Location => new(Source, Offset, 1);

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
                var token = Build(Lex.OpIdentifier, offset + 1);

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
        Assert(Current == '/' && Next == '*');

        Offset += 2;

        while (true)
        {
            if (Current == '*' && Next == '/')
            {
                return White(Lex.BlockComment, 2);
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

    private Token BlockComment2()
    {
        Assert(Current == '{' && Next == '-');

        Offset += 2;

        while (true)
        {
            if (Current == '{' && Next == '-')
            {
                _ = BlockComment2();
            }
            else if (Current == '-' && Next == '}')
            {
                return White(Lex.BlockComment, 2);
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
        Assert(Current == '/' && Next == '/');

        Offset += 2;

        while (true)
        {
            if (Current is '\n' or '\r' or -1)
            {
                return White(Lex.LineComment);
            }
            else
            {
                Offset += 1;
            }
        }
    }

    private Token LineComment2()
    {
        Assert(Current == '-' && Next == '-');

        Offset += 2;

        while (true)
        {
            if (Current is '\n' or '\r' or '\0')
            {
                return White(Lex.LineComment);
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
                        throw Errors.Lexer.UnexpectedCharacter(Location, Current, "string literal");
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
                    if (Current == -1)
                    {
                        throw new NotImplementedException("unexpected end in string literal");
                    }
                    throw new NotImplementedException("illegal character in string literal");
                }
                break;
        }

        if (Current != '\'')
        {
            throw Errors.Lexer.UnterminatedCharacterLiteral(Location, Current);
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
                _ = Match(rune => rune.IsHexDigit());
                _ = Match(rune => rune.IsHexDigit());
                break;
            case 'u':
                Offset += 1;
                _ = Match('{');
                do
                {
                    _ = Match(rune => rune.IsHexDigit());
                }
                while (Current != '}');
                _ = Match('}');
                break;
            case 'U':
                Offset += 1;
                _ = Match(rune => rune.IsHexDigit());
                _ = Match(rune => rune.IsHexDigit());
                _ = Match(rune => rune.IsHexDigit());
                _ = Match(rune => rune.IsHexDigit());
                _ = Match(rune => rune.IsHexDigit());
                _ = Match(rune => rune.IsHexDigit());
                break;
            default:
                Assert(false);
                break;
        }
    }

    private void Consume() => Offset++;

    private int Match(Func<int, bool> predicate)
    {
        if (predicate(Current))
        {
            var current = Current;

            Offset++;

            return current;
        }

        throw Errors.Lexer.UnexpectedCharacter(Location, Current);
    }

    private int Match(int rune) => Match(current => current == rune);

    private Token Identifier()
    {
        Assert(Current.IsLetter());

        IdTail();

        var token = Build(Lex.Identifier);

        if (keywords.TryGetValue(token.Text, out var tuple))
        {
            token = new Token(tuple.kwLex, token);
        }

        return token;
    }

    private Token WasmIdentifier()
    {
        Assert(Current == '$');

        Offset += 1;
        Assert(Current.IsLetter());

        IdTail();

        return Build(Lex.WasmIdentifier);
    }

    private Token XIdentifier()
    {
        Assert(Is('%'));

        IdTail();

        var token = Build(Lex.Identifier);

        if (keywords.TryGetValue(token.Text, out var tuple))
        {
            token = new Token(tuple.kwLex, token);
        }

        return token;
    }

    private void IdTail()
    {
        Offset += 1;
        while (Current.IsLetterOrDigit() || Current == '_' || Current == '-')
        {
            if (Current == '-' && (!Is(-1, IsLetter) || !Is(1, IsLetter)))
            {
                break;
            }

            Offset += 1;
        }
    }

    private Token White(Lex lex, int plus = 0)
    {
        Assert(lex.IsWhite);

        Offset += plus;
        if (lex == Lex.Newline)
        {
            Source.NextLine(Offset);
        }
        return new Token(lex, new Location(Source, Start, Offset - Start));
    }

    private Token Build(Lex lex, int plus = 0)
    {
        Assert(!lex.IsWhite);

        Offset += plus;
        return new Token(lex, new Location(Source, Start, Offset - Start));
    }

    private static void AddKw(string name, Lex kwLex) => keywords.Add(name, (name, kwLex));

    public static bool IsCharacter(int rune) => IsUnicode(rune) && !IsControl(rune) && !IsSurrogate(rune) && !IsBidi(rune);
    public static bool IsUnicode(int rune) => rune is >= 0x00 and <= 0x10FFFF;
    public static bool IsControl(int rune) => rune is >= 0x00 and <= 0x1F or 0x7F or >= 0x80 and <= 0x9F;
    public static bool IsSurrogate(int rune) => rune is >= 0xD800 and <= 0xDFFF;
    public static bool IsBidi(int rune) => rune is 0x200E or 0x200F or >= 0x202A and <= 0x202E or >= 0x2066 and <= 0x2069;
    public static bool IsLower(int rune) => rune is >= 'a' and <= 'z';
    public static bool IsUpper(int rune) => rune is >= 'A' and <= 'Z';
    public static bool IsLetter(int rune) => rune is >= 'a' and <= 'z' or >= 'A' and <= 'Z';
    public static bool IsDigit(int rune) => rune is >= '0' and <= '9';
    public static bool IsLetterOrDigit(int rune) => rune is >= 'a' and <= 'z' or >= 'A' and <= 'Z' or >= '0' and <= '9';
    public static bool IsPosDigit(int rune) => rune is >= '1' and <= '9';
    public static bool IsHexDigit(int rune) => 'a' <= rune && rune <= 'f' || 'A' <= rune && rune <= 'F' || IsDigit(rune);
    public static bool IsSymbol(int rune) => symbols.Contains(rune);
}
