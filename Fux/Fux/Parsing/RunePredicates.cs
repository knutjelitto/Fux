namespace Fux.Parsing;

public static class LexerPredicates
{
    private static readonly HashSet<int> symbols = new()
    {
        '+',  '-',  '*',  '/',
        '%',  '^',  '$',  '&',
        '~',  '!',  '\\', '#',
        '=',  '.',  ':',  '?',
        '<',  '>',  '|',
    };

    public static bool IsCharacter(this int rune) => rune.IsUnicode() && !rune.IsControl() && !rune.IsSurrogate() && !rune.IsBidi();
    public static bool IsUnicode(this int rune) => rune is >= 0x00 and <= 0x10FFFF;
    public static bool IsControl(this int rune) => rune is >= 0x00 and <= 0x1F or 0x7F or >= 0x80 and <= 0x9F;
    public static bool IsSurrogate(this int rune) => rune is >= 0xD800 and <= 0xDFFF;
    public static bool IsBidi(this int rune) => rune is 0x200E or 0x200F or >= 0x202A and <= 0x202E or >= 0x2066 and <= 0x2069;
    public static bool IsLower(this int rune) => rune is >= 'a' and <= 'z';
    public static bool IsUpper(this int rune) => rune is >= 'A' and <= 'Z';
    public static bool IsLetter(this int rune) => rune is >= 'a' and <= 'z' or >= 'A' and <= 'Z';
    public static bool IsDigit(this int rune) => rune is >= '0' and <= '9';
    public static bool IsLetterOrDigit(this int rune) => rune is >= 'a' and <= 'z' or >= 'A' and <= 'Z' or >= '0' and <= '9';
    public static bool IsLetterOrDigitOrUnderscore(this int rune) => IsLetterOrDigit(rune) || rune == '_' ;
    public static bool IsPosDigit(this int rune) => rune is >= '1' and <= '9';
    public static bool IsHexDigit(this int rune) => 'a' <= rune && rune <= 'f' || 'A' <= rune && rune <= 'F' || rune.IsDigit();
    public static bool IsSymbol(this int rune) => symbols.Contains(rune);
}
