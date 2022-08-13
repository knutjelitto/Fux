using System.Runtime.CompilerServices;

using FuxX.Errors;

#pragma warning disable IDE1006 // Naming Styles

namespace FuxX.Pratt;

public class Lexer
{
    private static readonly HashSet<int> symbols = new()
    {
        '+',  '-',  '*',  '/',
        '%',  '^',  '$',  '&',
        '~',  '!',  '\\', '#',
        '=',  '.',  ':',  '?',
        '<',  '>',  '|',
    };

    public Lexer(Source source) => Source = source;

    public Source Source { get; }

    private int Start { get; set; }
    private int Length { get; set; }

    private int At(int offset = 0) => Source[Start + Length + offset];

    private bool Is(int offset, int rune) => At(offset) == rune;
    private bool Is(int rune) => At(0) == rune;
    private bool Is(int offset, Func<int, bool> predicate) => predicate(At(offset));
    private bool Is(Func<int, bool> predicate) => predicate(At(0));

    public Token GetNext()
    {
        Start += Length;
        Length = 0;

        if (Is(-1))
        {
            return Build(Lex.EOF);
        }
        if (Is('\n'))
        {
            return Build(Lex.Newline, 1);
        }
        if (Is('\r') && Is(1, '\n'))
        {
            return Build(Lex.Newline, 2);
        }
        while (Is(' '))
        {
            Consume();
        }
        if (Length > 0)
        {
            return Build(Lex.Space);
        }

        switch (At())
        {
            case '(':
                return LeftParentOrOperator();

            case ')':
                return Build(Lex.RightRoundBracket, 1);

            case '{' when Is(1, '-'):
                return BlockComment();

            case '{':
                return Build(Lex.LeftCurlyBracket, 1);

            case '}':
                return Build(Lex.RightCurlyBracket, 1);

            case '[':
                return Build(Lex.LeftSquareBracket, 1);

            case ']':
                return Build(Lex.RightSquareBracket, 1);

            case '.' when !Is(1, IsSymbol):
                return Build(Lex.Dot, 1);

            case ':' when !Is(1, IsSymbol):
                return Build(Lex.Colon, 1);

            case '=' when !Is(1, IsSymbol):
                return Build(Lex.Assign, 1);

            case ',':
                return Build(Lex.Comma, 1);

            case '|' when !Is(1, IsSymbol):
                return Build(Lex.Bar, 1);

            case '\\' when !Is(1, IsSymbol):
                return Build(Lex.Lambda, 1);

            case '-' when Is(1, '-'):
                return LineComment();

            case '-' when Is(1, '>') && !Is(2, IsSymbol):
                return Build(Lex.Arrow, 2);

            case '"' when Is(1, '"') && Is(2, '"'):
                return LongString();

            case '"':
                return String();

            case '\'':
                return Char();

            case '_' when !Is(1, IsLetterOrDigit):
                return Build(Lex.Wildcard, 1);

            default:
                if (Is(IsLower))
                {
                    return LowerId();
                }
                else if (Is(IsUpper))
                {
                    return UpperId();
                }
                else if (Is(IsDigit))
                {
                    return Number();
                }
                else if (Is(IsSymbol))
                {
                    return Operator();
                }
                break;
        }

        var x = (char)At();
        Assert(false);
        throw new NotImplementedException();
    }

    private Token Build(Lex lex, int plus = 0)
    {
        Length += plus;
        if (lex == Lex.Newline)
        {
            Source.NextLine(Start + Length);
        }
        return new Token(lex, new Location(Source, Start, Length));
    }

    private Token LeftParentOrOperator()
    {
        Assert(Is('('));

        if (Is(1, IsSymbol))
        {
            var offset = 1;

            do
            {
                offset += 1;
            }
            while (Is(offset, IsSymbol));

            if (Is(offset, ')'))
            {
                var token = Build(Lex.OperatorId, offset + 1);

                return token;
            }
        }

        return Build(Lex.LeftRoundBracket, 1);
    }

    private Token Operator()
    {
        Match(IsSymbol);

        while (Is(IsSymbol))
        {
            Consume();
        }

        return Build(Lex.Operator);
    }

    private Token Number()
    {
        Match(IsDigit);

        if (Is('x'))
        {
            Consume();

            while (Is(IsHexDigit))
            {
                Consume();
            }

            return Build(Lex.Integer);
        }
        else
        {
            while (Is(IsDigit))
            {
                Consume();
            }
        }

        if (Is('.'))
        {
            Consume();

            Assert(Is(IsDigit));

            do
            {
                Consume();
            }
            while (Is(IsDigit));

            return Build(Lex.Float);
        }
        else
        {
            return Build(Lex.Integer);
        }
    }

    private Token BlockComment()
    {
        Match('{');
        Match('-');

        while (true)
        {
            if (Is('{') && Is(1, '-'))
            {
                _ = BlockComment();
            }
            else if (Is('-') && Is(1, '}'))
            {
                return Build(Lex.BlockComment, 2);
            }
            else
            {
                if (Is('\n'))
                {
                    Source.NextLine(Start + Length + 1);
                }
                Consume();
            }
        }
    }

    private Token LineComment()
    {
        Match('-');
        Match('-');

        while (true)
        {
            if (Is('\n') || Is(-1))
            {
                return Build(Lex.LineComment);
            }
            else
            {
                Consume();
            }
        }
    }
    private Token LowerId()
    {
        Assert(Is(IsLower));

        IdTail();

        return Build(Lex.LowerId);
    }

    private Token UpperId()
    {
        Assert(Is(IsUpper));

        IdTail();

        return Build(Lex.UpperId);
    }

    private void IdTail()
    {
        Consume();
        while (Is(IsLower) || Is(IsUpper) || Is(IsDigit) || Is('_') || Is('-'))
        {
            if (Is('-') && (!Is(-1, IsLetter) || !Is(1, IsLetter)))
            {
                break;
            }
            else
            {
                Consume();
            }
        }
    }

    private Token String()
    {
        Match('"');

        while (!Is('"'))
        {
            switch (At())
            {
                case '\\':
                    Escape();
                    break;
                default:
                    if (Is(IsCharacter))
                    {
                        Consume();
                    }
                    else
                    {
                        if (Is(-1))
                        {
                            throw new NotImplementedException("unexpected end in string literal");
                        }
                        throw Error.UnexpectedRune(At(), "string literal");
                    }
                    break;
            }
        }

        Match('"');

        return Build(Lex.String);
    }

    private void Match(int rune, [CallerMemberName] string? member = null)
    {
        if (!Is(rune))
        {
            throw Error.UnexpectedRune(At(), rune, member);
        }
        Consume();
    }

    private void Match(Func<int, bool> predicate, [CallerMemberName] string? member = null)
    {
        if (!predicate(At()))
        {
            throw Error.UnexpectedRune(At(), member);
        }
    }

    private void Match(int num, Func<int, bool> predicate, [CallerMemberName] string? member = null)
    {
        for (var i = 0; i < num; i++)
        {
            Match(predicate, member);
        }
    }

    private void Consume() => Length++;

    private Token LongString()
    {
        Match('"');
        Match('"');
        Match('"');

        while (!Is('"') || !Is(1, '"') || !Is(2, '"'))
        {
            Consume();
        }

        Match('"');
        Match('"');
        Match('"');

        return Build(Lex.LongString);
    }

    private Token Char()
    {
        Match('\'');

        Assert(!Is('\''));

        switch (At())
        {
            case '\\':
                Escape();
                break;
            default:
                if (Is(IsCharacter))
                {
                    Consume();
                }
                else
                {
                    if (Is(-1))
                    {
                        throw new NotImplementedException("unexpected end of input in string literal");
                    }
                    throw new NotImplementedException("illegal character in string literal");
                }
                break;
        }

        Match('\'');

        return Build(Lex.Char);
    }

    private void Escape()
    {
        Match('\\');

        switch (At())
        {
            case 'n':
            case 'r':
            case 't':
            case '\\':
            case '\'':
            case '\"':
                Consume();
                break;
            case 'x':
                Consume();
                Match(2, IsHexDigit);
                break;
            case 'u':
                Consume();
                Match('{');
                do
                {
                    Match(IsHexDigit);
                }
                while (!Is('}'));
                Match('}');
                break;
            case 'U':
                Consume();
                Match(6, IsHexDigit);
                break;
            default:
                Assert(false);
                break;
        }
    }

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
