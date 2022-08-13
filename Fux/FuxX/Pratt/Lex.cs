namespace FuxX.Pratt;

public class Lex
{
    public Lex(string symbol) => Symbol = symbol;

    public string Symbol { get; }

    public static readonly Lex Newline = new("\\n");
    public static readonly Lex Space = new(" ");
    public static readonly Lex LineComment = new("line-comment");
    public static readonly Lex BlockComment = new("block-comment");
    public static readonly Lex EOF = new("eof");

    public static readonly Lex LeftRoundBracket = new("(");
    public static readonly Lex RightRoundBracket = new(")");
    public static readonly Lex LeftSquareBracket = new("[");
    public static readonly Lex RightSquareBracket = new("]");
    public static readonly Lex LeftCurlyBracket = new("{");
    public static readonly Lex RightCurlyBracket = new("}");

    public static readonly Lex Dot = new(".");
    public static readonly Lex Comma = new(",");
    public static readonly Lex Colon = new(":");
    public static readonly Lex Assign = new("=");
    public static readonly Lex Bar = new("|");
    public static readonly Lex Lambda = new("\\");
    public static readonly Lex Arrow = new("->");

    public static readonly Lex Wildcard = new("_");

    public static readonly Lex OperatorId = new("operator-id");
    public static readonly Lex LowerId = new("lower-id");
    public static readonly Lex UpperId = new("upper-id");
    public static readonly Lex Operator = new("operator");

    public static readonly Lex Integer = new("integer");
    public static readonly Lex Float = new("float");
    public static readonly Lex String = new("string");
    public static readonly Lex LongString = new("long-string");
    public static readonly Lex Char = new("char");
}

