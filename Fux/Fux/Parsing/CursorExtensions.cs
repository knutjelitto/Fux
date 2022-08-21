namespace Fux.Parsing;
public static class CursorExtensions
{
    public static bool Is(this Cursor cursor, params Lex[] lexes)
    {
        if (cursor.More())
        {
            foreach (var lex in lexes)
            {
                if (cursor.Current.Lex == lex)
                {
                    return true;
                }
            }
        }

        return false;
    }

    public static bool Is(this Cursor cursor, int offset, params Lex[] lexes)
    {
        if (cursor.Offset + offset < cursor.Limit)
        {
            foreach (var lex in lexes)
            {
                if (cursor[offset].Lex == lex)
                {
                    return true;
                }
            }
        }

        return false;
    }

    public static bool WhitesBefore(this Cursor cursor) => cursor.More() && cursor.Current.WhitesBefore;

    public static bool IsInfix(this Cursor cursor)
    {
        return
            cursor.IsOperator() &&
            Infix.Find(cursor, out _);
    }

    public static bool IsPrefix(this Cursor cursor)
    {
        return
            cursor.IsOperator() &&
            Prefix.Find(cursor, out _);
    }

    public static bool IsPrefixMinus(this Cursor cursor)
    {
        return
            cursor.IsOperator() &&
            Prefix.Find(cursor, out var prefix) &&
            prefix.Name == "-";
    }

    public static bool IsIdentifier(this Cursor cursor) => cursor.More() && cursor.Current.Lex.IsIdentifier;

    public static bool IsLiteral(this Cursor cursor) => cursor.More() && cursor.Current.Lex.IsLiteral;

    public static bool IsOperator(this Cursor cursor) => cursor.More() && cursor.Current.Lex.IsOperator;

    public static bool IsKeyword(this Cursor cursor) => cursor.More() && cursor.Current.Lex.IsKeyword;

    public static bool IsAtomic(this Cursor cursor)
    {
        return cursor.More() && Atomic(cursor.Current.Lex);

        static bool Atomic(Lex lex)
        {
            return lex.IsIdentifier
                || lex.IsLiteral
                || lex == Lex.LeftRoundBracket
                ;
        }
    }

    public static bool IsExpression(this Cursor cursor)
    {
        return cursor.More() && Expression(cursor.Current.Lex);

        static bool Expression(Lex lex)
        {
            return lex.IsIdentifier
                || lex.IsLiteral
                || lex.IsOperator
                || lex == Lex.LeftRoundBracket
                || lex == Lex.KwIf
                || lex == Lex.KwCase
                || lex == Lex.KwLoop
                ;
        }
    }

    public static bool IsWeak(this Cursor cursor, string text) => cursor.More() && cursor.Current.Text == text;

    public static bool IsNot(this Cursor cursor, Lex lex) => cursor.More() && cursor.Current.Lex != lex;

    public static bool IsNot(this Cursor cursor, params Lex[] lexes) => cursor.More() && lexes.All(lex => cursor.Current.Lex != lex);

    public static Token At(this Cursor cursor) => cursor.Current;
}
