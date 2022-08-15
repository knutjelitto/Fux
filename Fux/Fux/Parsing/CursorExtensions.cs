using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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

    public static bool WhitesBefore(this Cursor cursor) => cursor.More() && cursor.Current.WhitesBefore;

    public static bool IsIdentifier(this Cursor cursor) => cursor.More() &&
            (cursor.Current.Lex == Lex.LowerId || cursor.Current.Lex == Lex.UpperId || cursor.Current.Lex == Lex.OperatorId);

    public static bool IsWeak(this Cursor cursor, string text) => cursor.More() && cursor.Current.Text == text;

    public static bool IsNot(this Cursor cursor, Lex lex) => cursor.More() && cursor.Current.Lex != lex;

    public static bool IsNot(this Cursor cursor, params Lex[] lexes) => cursor.More() && lexes.All(lex => cursor.Current.Lex != lex);

    public static Token At(this Cursor cursor) => cursor.Current;

    public static bool IsOperator(this Cursor cursor) => cursor.More() && cursor.Current.Lex == Lex.Operator;
}
