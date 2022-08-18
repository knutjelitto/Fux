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
            cursor.More() &&
            cursor.Current.Lex.IsOperator &&
            Infix.Find(cursor, out _);
    }

    public static bool IsIdentifier(this Cursor cursor) => cursor.More() &&
            (cursor.Current.Lex == Lex.Identifier || cursor.Current.Lex == Lex.OpIdentifier || cursor.Current.Lex == Lex.WasmIdentifier);

    public static bool IsWeak(this Cursor cursor, string text) => cursor.More() && cursor.Current.Text == text;

    public static bool IsNot(this Cursor cursor, Lex lex) => cursor.More() && cursor.Current.Lex != lex;

    public static bool IsNot(this Cursor cursor, params Lex[] lexes) => cursor.More() && lexes.All(lex => cursor.Current.Lex != lex);

    public static Token At(this Cursor cursor) => cursor.Current;

    public static bool IsOperator(this Cursor cursor) => cursor.More() && cursor.Current.Lex == Lex.Operator;
}
