namespace Fux.Parsing;

public sealed class Lex
{
    public static readonly List<Lex> allLex = new();

    private Lex(string name,
        bool isKeyword = false,
        bool isWhite = false,
        bool startsAtomic = false,
        bool terminatesSomething = false,
        bool isIdentifier = false,
        bool isBracket = false)
    {
        Name = string.Intern(name);
        IsKeyword = isKeyword;
        IsWhite = isWhite;
        StartsAtomic = startsAtomic;
        TerminatesSomething = terminatesSomething || isKeyword;
        IsIdentifier = isIdentifier;
        IsBracket = isBracket;
    }

    public string Name { get; }
    public bool IsKeyword { get; }
    public bool IsWhite { get; }
    public bool StartsAtomic { get; }
    public bool TerminatesSomething { get; }
    public bool IsIdentifier { get; }
    public bool IsBracket { get; }

    public static IReadOnlyList<Lex> AllLex => allLex;

    public string PP() => IsKeyword ? $"keyword `{Name}´" : $"token `{Name}´";

    public override string ToString() => Name;

    private static Lex Add(Lex lex)
    {
        allLex.Add(lex);

        return lex;
    }

    public static readonly Lex BOF = Add(new("<BOF>"));
    public static readonly Lex EOF = Add(new("<EOF>", terminatesSomething: true));

    public static readonly Lex Newline = Add(new("_nl_", isWhite: true));
    public static readonly Lex Space = Add(new("_sp_", isWhite: true));
    public static readonly Lex LineComment = Add(new("line-comment", isWhite: true));
    public static readonly Lex BlockComment = Add(new("block-comment", isWhite: true));

    public static readonly Lex GroupOpen = Add(new("⟦", startsAtomic: true));
    public static readonly Lex GroupClose = Add(new("⟧"));
    public static readonly Lex Identifier = Add(new("identifier", startsAtomic: true, isIdentifier: true));
    public static readonly Lex OpIdentifier = Add(new("op-identifier", startsAtomic: true, isIdentifier: true));
    public static readonly Lex WasmIdentifier = Add(new("wasm-identifier", startsAtomic: true, isIdentifier: true));
    public static readonly Lex Wildcard = Add(new("wildcard", startsAtomic: true));
    public static readonly Lex Operator = Add(new("operator"));
    public static readonly Lex Integer = Add(new("Int", startsAtomic: true));
    public static readonly Lex Float = Add(new("Float", startsAtomic: true));
    public static readonly Lex String = Add(new("String", startsAtomic: true));
    public static readonly Lex LongString = Add(new("LongString", startsAtomic: true));
    public static readonly Lex Char = Add(new("Char", startsAtomic: true));
    public static readonly Lex Dot = Add(new(".", startsAtomic: true));
    public static readonly Lex Colon = Add(new(":", terminatesSomething: true));
    public static readonly Lex Assign = Add(new("=", terminatesSomething: true));
    public static readonly Lex Comma = Add(new(",", terminatesSomething: true));
    public static readonly Lex LightArrow = Add(new("->", terminatesSomething: true));
    public static readonly Lex BoldArrow = Add(new("=>", terminatesSomething: true));
    public static readonly Lex Lambda = Add(new("\\", startsAtomic: true));
    public static readonly Lex Hash = Add(new("#", startsAtomic: true));
    public static readonly Lex CoCo = Add(new("::"));

    public static readonly Lex OpOr = Add(new("|", terminatesSomething: true));
    public static readonly Lex OpAnd = Add(new("&", terminatesSomething: true));
    public static readonly Lex OpXor = Add(new("^", terminatesSomething: true));

    public static readonly Lex OpOrElse = Add(new("||"));
    public static readonly Lex OpAndThen = Add(new("&&"));

    public static readonly Lex Equal = Add(new("==", terminatesSomething: true));
    public static readonly Lex Unequal = Add(new("!=", terminatesSomething: true));
    public static readonly Lex LessEqual = Add(new("<=", startsAtomic: true));
    public static readonly Lex GreaterEqual = Add(new(">=", startsAtomic: true));

    public static readonly Lex LeftRoundBracket = Add(new("(", startsAtomic: true, isBracket: true));
    public static readonly Lex RightRoundBracket = Add(new(")", terminatesSomething: true, isBracket: true));
    public static readonly Lex LeftCurlyBracket = Add(new("{", startsAtomic: true, isBracket: true));
    public static readonly Lex RightCurlyBracket = Add(new("}", terminatesSomething: true, isBracket: true));
    public static readonly Lex LeftSquareBracket = Add(new("[", startsAtomic: true, isBracket: true));
    public static readonly Lex RightSquareBracket = Add(new("]", terminatesSomething: true, isBracket: true));
    public static readonly Lex LeftAngleBracket = Add(new("<", startsAtomic: true, isBracket: true));
    public static readonly Lex RightAngleBracket = Add(new(">", terminatesSomething: true, isBracket: true));

    public static readonly Lex KxStack = Add(new("%stack", isKeyword: true));
    public static readonly Lex KxWasm = Add(new("%wasm", isKeyword: true));

    public static readonly Lex KwIf = Add(new("if", isKeyword: true, startsAtomic: true));
    public static readonly Lex KwThen = Add(new("then", isKeyword: true));
    public static readonly Lex KwElse = Add(new("else", isKeyword: true));

    public static readonly Lex KwMatch = Add(new("match", isKeyword: true));

    public static readonly Lex KwLoop = Add(new("loop", isKeyword: true, startsAtomic: true));
    public static readonly Lex KwBreak = Add(new("break", isKeyword: true, startsAtomic: true));
    public static readonly Lex KwContinue = Add(new("continue", isKeyword: true, startsAtomic: true));

    public static readonly Lex KwAs = Add(new("as", isKeyword: true));
    public static readonly Lex KwCase = Add(new("case", isKeyword: true, startsAtomic: true));
    public static readonly Lex KwClass = Add(new("class", isKeyword: true));
    public static readonly Lex KwFun = Add(new("fun", isKeyword: true));
    public static readonly Lex KwImpl = Add(new("impl", isKeyword: true, startsAtomic: true));
    public static readonly Lex KwOf = Add(new("of", isKeyword: true));
    public static readonly Lex KwLet = Add(new("let", isKeyword: true, startsAtomic: true));
    public static readonly Lex KwIn = Add(new("in", isKeyword: true));
    public static readonly Lex KwType = Add(new("type", isKeyword: true));
    public static readonly Lex KwModule = Add(new("module", isKeyword: true));
    public static readonly Lex KwImport = Add(new("import", isKeyword: true));
    public static readonly Lex KwInfix = Add(new("infix", isKeyword: true));
    public static readonly Lex KwAlias = Add(new("alias", isKeyword: true));
    public static readonly Lex KwEffect = Add(new("effect", isKeyword: true));
    public static readonly Lex KwExposing = Add(new("exposing", isKeyword: true));
    public static readonly Lex KwPort = Add(new("port", isKeyword: true));
    public static readonly Lex KwWhere = Add(new("where", isKeyword: true));
    public static readonly Lex KwInstance = Add(new("instance", isKeyword: true));
    public static readonly Lex KwNamespace = Add(new("namespace", isKeyword: true));

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
}
