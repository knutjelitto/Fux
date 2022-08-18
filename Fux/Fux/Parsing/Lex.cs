namespace Fux.Parsing;

public abstract class Lex
{
    public static readonly List<Lex> allLex = new();

    private Lex(string name,
        bool isKeyword,
        bool isWhite,
        bool isIdentifier,
        bool isBracket,
        bool isOperator,
        bool isLiteral)
    {
        Name = string.Intern(name);
        IsKeyword = isKeyword;
        IsWhite = isWhite;
        IsIdentifier = isIdentifier;
        IsBracket = isBracket;
        IsOperator = isOperator;
        IsLiteral = isLiteral;
    }

    public string Name { get; }
    public bool IsKeyword { get; }
    public bool IsWhite { get; }
    public bool IsIdentifier { get; }
    public bool IsBracket { get; }
    public bool IsOperator { get; }
    public bool IsLiteral { get; }

    public static IReadOnlyList<Lex> AllLex => allLex;

    public string PP() => IsKeyword ? $"keyword `{Name}´" : $"token `{Name}´";

    public override string ToString() => Name;

    private static Lex Add(Lex lex)
    {
        allLex.Add(lex);

        return lex;
    }

    public static readonly Lex BOF = Add(new Fix("<BOF>"));
    public static readonly Lex EOF = Add(new Fix("<EOF>"));

    public static readonly Lex Newline = Add(new Fix("newline", isWhite: true));
    public static readonly Lex Space = Add(new Var("space", isWhite: true));
    public static readonly Lex LineComment = Add(new Fix("line-comment", isWhite: true));
    public static readonly Lex BlockComment = Add(new Fix("block-comment", isWhite: true));

    public static readonly Lex Identifier = Add(new Var("identifier", isIdentifier: true));
    public static readonly Lex OpIdentifier = Add(new Var("op-identifier", isIdentifier: true));
    public static readonly Lex WasmIdentifier = Add(new Var("wasm-identifier", isIdentifier: true));

    public static readonly Lex GroupOpen = Add(new Fix("⟦"));
    public static readonly Lex GroupClose = Add(new Fix("⟧"));
    public static readonly Lex Operator = Add(new Var("operator"));
    public static readonly Lex Integer = Add(new Var("integer", isLiteral: true));
    public static readonly Lex Float = Add(new Var("float", isLiteral: true));
    public static readonly Lex String = Add(new Var("string", isLiteral: true));
    public static readonly Lex LongString = Add(new Var("long-string", isLiteral: true));
    public static readonly Lex Char = Add(new Var("char", isLiteral: true));

    public static readonly Lex Wildcard = Add(new Fix("wildcard"));

    public static readonly Lex Dot = Add(new Fix("."));
    public static readonly Lex DotUp = Add(new Fix(".^"));

    public static readonly Lex Colon = Add(new Fix(":"));
    public static readonly Lex Comma = Add(new Fix(","));
    public static readonly Lex LightArrow = Add(new Fix("->"));
    public static readonly Lex BoldArrow = Add(new Fix("=>"));
    public static readonly Lex Lambda = Add(new Fix("\\"));
    public static readonly Lex Hash = Add(new Fix("#"));
    public static readonly Lex CoCo = Add(new Fix("::"));

    public static readonly Lex OpAssign = Add(new Fix("=", isOperator: true));

    public static readonly Lex OpOr = Add(new Fix("|", isOperator: true));
    public static readonly Lex OpAnd = Add(new Fix("&", isOperator: true));
    public static readonly Lex OpXor = Add(new Fix("^", isOperator: true));

    public static readonly Lex OpOrElse = Add(new Fix("||", isOperator: true));
    public static readonly Lex OpAndThen = Add(new Fix("&&", isOperator: true));

    public static readonly Lex Equal = Add(new Fix("==", isOperator: true));
    public static readonly Lex Unequal = Add(new Fix("!=", isOperator: true));
    public static readonly Lex LessEqual = Add(new Fix("<=", isOperator: true));
    public static readonly Lex GreaterEqual = Add(new Fix(">=", isOperator: true));

    public static readonly Lex OpShl = Add(new Fix("<<", isOperator: true));

    public static readonly Lex OpAs = Add(new Fix("as", isOperator: true));

    public static readonly Lex LeftRoundBracket = Add(new Fix("(", isBracket: true));
    public static readonly Lex RightRoundBracket = Add(new Fix(")", isBracket: true));
    public static readonly Lex LeftCurlyBracket = Add(new Fix("{", isBracket: true));
    public static readonly Lex RightCurlyBracket = Add(new Fix("}", isBracket: true));
    public static readonly Lex LeftSquareBracket = Add(new Fix("[", isBracket: true));
    public static readonly Lex RightSquareBracket = Add(new Fix("]", isBracket: true));
    public static readonly Lex LeftAngleBracket = Add(new Fix("<", isBracket: true));
    public static readonly Lex RightAngleBracket = Add(new Fix(">", isBracket: true));

    public static readonly Lex KxStack = Add(new Fix("%stack", isKeyword: true));
    public static readonly Lex KxWasm = Add(new Fix("%wasm", isKeyword: true));

    public static readonly Lex KwIf = Add(new Fix("if", isKeyword: true));
    public static readonly Lex KwThen = Add(new Fix("then", isKeyword: true));
    public static readonly Lex KwElse = Add(new Fix("else", isKeyword: true));

    public static readonly Lex KwMatch = Add(new Fix("match", isKeyword: true));

    public static readonly Lex KwLoop = Add(new Fix("loop", isKeyword: true));
    public static readonly Lex KwBreak = Add(new Fix("break", isKeyword: true));
    public static readonly Lex KwContinue = Add(new Fix("continue", isKeyword: true));

    public static readonly Lex KwVal = Add(new Fix("val", isKeyword: true));

    //public static readonly Lex KwAs = Add(new Fix("as", isKeyword: true));
    //public static readonly Lex KwIs = Add(new Fix("is", isKeyword: true));

    public static readonly Lex KwCase = Add(new Fix("case", isKeyword: true));
    public static readonly Lex KwClass = Add(new Fix("class", isKeyword: true));
    public static readonly Lex KwFun = Add(new Fix("fun", isKeyword: true));
    public static readonly Lex KwImpl = Add(new Fix("impl", isKeyword: true));
    public static readonly Lex KwOf = Add(new Fix("of", isKeyword: true));
    public static readonly Lex KwLet = Add(new Fix("let", isKeyword: true));
    public static readonly Lex KwIn = Add(new Fix("in", isKeyword: true));
    public static readonly Lex KwType = Add(new Fix("type", isKeyword: true));
    public static readonly Lex KwModule = Add(new Fix("module", isKeyword: true));
    public static readonly Lex KwImport = Add(new Fix("import", isKeyword: true));
    public static readonly Lex KwInfix = Add(new Fix("infix", isKeyword: true));
    public static readonly Lex KwAlias = Add(new Fix("alias", isKeyword: true));
    public static readonly Lex KwEffect = Add(new Fix("effect", isKeyword: true));
    public static readonly Lex KwExposing = Add(new Fix("exposing", isKeyword: true));
    public static readonly Lex KwPort = Add(new Fix("port", isKeyword: true));
    public static readonly Lex KwWhere = Add(new Fix("where", isKeyword: true));
    public static readonly Lex KwInstance = Add(new Fix("instance", isKeyword: true));
    public static readonly Lex KwNamespace = Add(new Fix("namespace", isKeyword: true));

    public static class Weak
    {
        public const string ExposeAll = "(..)";
    }

    public static class Primitive
    {
        public const string Int = "Int";
        public const string Float = "Float";
        public const string Bool = "Bool";
        public const string String = "String";
        public const string Char = "Char";
        public const string List = "List";
    }

    public static class Symbol
    {
        public const string LeftAngle = "<";
        public const string RightAngle = ">";
        public const string Wildcard = "_";
        public const string Unit = "()";
        public const string Empty = "[]";
        public const string Cons = "::";
        public const string ListCons = "(::)";
    }

    public static class Term
    {
        public const string Type = "Type";
    }

    private class Fix : Lex
    {
        public Fix(
            string name,
            bool isKeyword = false,
            bool isWhite = false,
            bool isIdentifier = false,
            bool isBracket = false,
            bool isOperator = false,
            bool isLiteral = false)
            : base(
                  name: name,
                  isKeyword: isKeyword,
                  isWhite: isWhite,
                  isIdentifier: isIdentifier,
                  isBracket: isBracket,
                  isOperator: isOperator,
                  isLiteral: isLiteral)
        {
        }
    }

    private class Var : Lex
    {
        public Var(
            string name,
            bool isKeyword = false,
            bool isWhite = false,
            bool isIdentifier = false,
            bool isBracket = false,
            bool isOperator = false,
            bool isLiteral = false)
            : base(
                  name: name,
                  isKeyword: isKeyword,
                  isWhite: isWhite,
                  isIdentifier: isIdentifier,
                  isBracket: isBracket,
                  isOperator: isOperator,
                  isLiteral: isLiteral)
        {
        }
    }
}
