namespace Fux.Parsing;
public static class CursorExtensions
{
    [DebuggerStepThrough]
    public static Token Swallow(this Cursor cursor, Lex lexKind, [CallerMemberName] string? member = null)
    {
        return cursor.Is(lexKind) ? cursor.Swallow() : throw cursor.Errors.Parser.Unexpected(lexKind, cursor.At(), member);
    }


    [DebuggerStepThrough]
    public static bool SwallowIf(this Cursor cursor, Lex lexKind)
    {
        if (cursor.Is(lexKind))
        {
            cursor.Advance();

            return true;
        }

        return false;
    }


    [DebuggerStepThrough]
    public static void Advance(this Cursor cursor, int steps)
    {
        while (steps-- > 0)
        {
            cursor.Advance();
        }
    }

    public static bool Is(this Cursor cursor, params Lex[] lexes)
    {
        if (cursor.More)
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
    
    public static bool WhitesBefore(this Cursor cursor) => cursor.More && cursor.Current.WhitesBefore;

    public static bool IsInfix(this Cursor cursor) => cursor.More && cursor.Current.Lex.IsInfix;

    public static bool IsPrefix(this Cursor cursor) => cursor.More && cursor.Current.Lex.IsPrefix;

    public static bool IsPrefixMinus(this Cursor cursor)
    {
        return
            cursor.IsOperator() &&
            Prefix.Find(cursor.Current, out var prefix) &&
            prefix.Name == "-";
    }

    public static bool IsIdentifier(this Cursor cursor) => cursor.More && cursor.Current.Lex.IsIdentifier;

    public static bool IsLiteral(this Cursor cursor) => cursor.More && cursor.Current.Lex.IsLiteral;

    public static bool IsOperator(this Cursor cursor) => cursor.More && cursor.Current.Lex.IsOperator;

    public static bool IsKeyword(this Cursor cursor) => cursor.More && cursor.Current.Lex.IsKeyword;

    public static bool IsExpression(this Cursor cursor)
    {
        return cursor.More && Expression(cursor.Current.Lex);

        static bool Expression(Lex lex)
        {
            return lex.IsIdentifier
                || lex.IsLiteral
                || lex.IsPrefix
                || lex == Lex.LeftRoundBracket
                || lex == Lex.KwIf
                || lex == Lex.KwCase
                || lex == Lex.KwLoop
                ;
        }
    }

    public static bool IsNot(this Cursor cursor, Lex lex) => cursor.More && cursor.Current.Lex != lex;

    public static bool IsNot(this Cursor cursor, params Lex[] lexes) => cursor.More && lexes.All(lex => cursor.Current.Lex != lex);

    public static Token At(this Cursor cursor) => cursor.Current;
}
