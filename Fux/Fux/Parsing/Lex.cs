namespace Fux.Parsing
{
    public class Lex
    {
        public static readonly List<Lex> allLex = new();

        private Lex(string name, LexClass klass)
        {
            Name = string.Intern(name);
            Klass = klass;
        }

        public string Name { get; }
        public LexClass Klass { get; }
        public bool IsKeyword => (Klass & LexClass.Keyword) != 0;
        public bool IsWhite => (Klass & LexClass.White) != 0;
        public bool IsIdentifier => (Klass & LexClass.Identifier) != 0;
        public bool IsBracket => (Klass & LexClass.Bracket) != 0;
        public bool IsOperator => (Klass & LexClass.Operator) != 0;
        public bool IsPrefix => (Klass & LexClass.Prefix) != 0;
        public bool IsInfix => (Klass & LexClass.Infix) != 0;
        public bool IsLiteral => (Klass & LexClass.Literal) != 0;
        public bool IsPunctuation => (Klass & LexClass.Punctuation) != 0;
        public bool IsOther => (Klass & LexClass.Other) != 0;

        public bool IsCoreExpression => (Klass & LexClass.CoreExpression) != 0;
        public bool IsStmtExpression => (Klass & LexClass.StmtExpression) != 0;
        public bool IsAnyExpression => (Klass & LexClass.AnyExpression) != 0;

        public static IReadOnlyList<Lex> AllLex => allLex;

        public string PP() => IsKeyword ? $"keyword `{Name}´" : $"token `{Name}´";

        public override string ToString() => Name;

        private static Lex Add(Lex lex)
        {
            allLex.Add(lex);

            return lex;
        }

        public static readonly Lex EOF = Add(new("<EOF>", LexClass.Other));

        public static readonly Lex Newline = Add(new("newline", LexClass.White));
        public static readonly Lex Space = Add(new("space", LexClass.White));
        public static readonly Lex LineComment = Add(new("line-comment", LexClass.White));
        public static readonly Lex BlockComment = Add(new("block-comment", LexClass.White));
        public static readonly Lex GroupOpen = Add(new("⟦", LexClass.White));
        public static readonly Lex GroupClose = Add(new("⟧", LexClass.White));

        public static readonly Lex Identifier = Add(new("identifier", LexClass.Identifier | LexClass.CoreExpression));
        public static readonly Lex OpIdentifier = Add(new("op-identifier", LexClass.Identifier | LexClass.CoreExpression));
        public static readonly Lex WasmIdentifier = Add(new("wasm-identifier", LexClass.Identifier | LexClass.CoreExpression));

        public static readonly Lex Integer = Add(new("integer", LexClass.Literal | LexClass.CoreExpression));
        public static readonly Lex Float = Add(new("float", LexClass.Literal | LexClass.CoreExpression));
        public static readonly Lex String = Add(new("string", LexClass.Literal | LexClass.CoreExpression));
        public static readonly Lex LongString = Add(new("long-string", LexClass.Literal | LexClass.CoreExpression));
        public static readonly Lex Char = Add(new("char", LexClass.Literal | LexClass.CoreExpression));

        public static readonly Lex Wildcard = Add(new("wildcard", LexClass.Other | LexClass.CoreExpression));

        public static readonly Lex Dot = Add(new(".", LexClass.Punctuation));
        public static readonly Lex DotUp = Add(new(".^", LexClass.Punctuation));

        public static readonly Lex Colon = Add(new(":", LexClass.Punctuation));
        public static readonly Lex Comma = Add(new(",", LexClass.Punctuation));
        public static readonly Lex LightArrow = Add(new("->", LexClass.Punctuation));
        public static readonly Lex BoldArrow = Add(new("=>", LexClass.Punctuation));
        public static readonly Lex Hash = Add(new("#", LexClass.Other));
        public static readonly Lex CoCo = Add(new("::", LexClass.Punctuation));

        public static readonly Lex OpAssign = Add(new("=", LexClass.Infix));

        public static readonly Lex OpBitOr = Add(new("|", LexClass.Infix));
        public static readonly Lex OpBitAnd = Add(new("&", LexClass.Infix));
        public static readonly Lex OpXor = Add(new("^", LexClass.Infix));

        public static readonly Lex OpNot = Add(new("!", LexClass.Prefix | LexClass.CoreExpression));
        public static readonly Lex OpBitNot = Add(new("~", LexClass.Prefix | LexClass.CoreExpression));

        public static readonly Lex OpOrElse = Add(new("||", LexClass.Infix));
        public static readonly Lex OpAndThen = Add(new("&&", LexClass.Infix));

        public static readonly Lex OpEqual = Add(new("==", LexClass.Infix));
        public static readonly Lex OpUnequal = Add(new("!=", LexClass.Infix));
        public static readonly Lex OpLessEqual = Add(new("<=", LexClass.Infix));
        public static readonly Lex OpGreaterEqual = Add(new(">=", LexClass.Infix));

        public static readonly Lex OpAdd = Add(new("+", LexClass.Infix));
        public static readonly Lex OpSub = Add(new("-", LexClass.Infix | LexClass.Prefix | LexClass.CoreExpression));
        public static readonly Lex OpAppend = Add(new("++", LexClass.Infix));

        public static readonly Lex OpMul = Add(new("*", LexClass.Infix));
        public static readonly Lex OpDiv = Add(new("/", LexClass.Infix));
        public static readonly Lex OpMod = Add(new("%", LexClass.Infix));

        public static readonly Lex OpShl = Add(new("<<", LexClass.Infix));

        public static readonly Lex OpAs = Add(new("as", LexClass.Infix));

        public static readonly Lex OpIndex = Add(new("[]", LexClass.Operator));

        public static readonly Lex LeftRoundBracket = Add(new("(", LexClass.Bracket | LexClass.CoreExpression));
        public static readonly Lex RightRoundBracket = Add(new(")", LexClass.Bracket));
        public static readonly Lex LeftCurlyBracket = Add(new("{", LexClass.Bracket));
        public static readonly Lex RightCurlyBracket = Add(new("}", LexClass.Bracket));
        public static readonly Lex LeftSquareBracket = Add(new("[", LexClass.Bracket));
        public static readonly Lex RightSquareBracket = Add(new("]", LexClass.Bracket));
        public static readonly Lex LeftAngleBracket = Add(new("<", LexClass.Infix | LexClass.Bracket));
        public static readonly Lex RightAngleBracket = Add(new(">", LexClass.Infix | LexClass.Bracket));

        public static readonly Lex KxStack = Add(new("%stack", LexClass.Keyword));
        public static readonly Lex KxInjected = Add(new("%injected", LexClass.Keyword));

        public static readonly Lex KwImport = Add(new("import", LexClass.Keyword));
        public static readonly Lex KwFun = Add(new("fun", LexClass.Keyword));
        public static readonly Lex KwType = Add(new("type", LexClass.Keyword));
        public static readonly Lex KwTrait = Add(new("trait", LexClass.Keyword));
        public static readonly Lex KwFor = Add(new("for", LexClass.Keyword));
        public static readonly Lex KwStruct = Add(new("struct", LexClass.Keyword));
        public static readonly Lex KwEnum = Add(new("enum", LexClass.Keyword));

        public static readonly Lex KwIf = Add(new("if", LexClass.Keyword | LexClass.CoreExpression));
        public static readonly Lex KwThen = Add(new("then", LexClass.Keyword));
        public static readonly Lex KwElse = Add(new("else", LexClass.Keyword));

        public static readonly Lex KwWhen = Add(new("when", LexClass.Keyword | LexClass.StmtExpression));

        public static readonly Lex KwCase = Add(new("case", LexClass.Keyword | LexClass.CoreExpression));
        public static readonly Lex KwOf = Add(new("of", LexClass.Keyword));

        public static readonly Lex KwLoop = Add(new("loop", LexClass.Keyword | LexClass.CoreExpression | LexClass.StmtExpression));
        public static readonly Lex KwBreak = Add(new("break", LexClass.Keyword | LexClass.StmtExpression));
        public static readonly Lex KwContinue = Add(new("continue", LexClass.Keyword | LexClass.StmtExpression));

        public static readonly Lex KwVal = Add(new("val", LexClass.Keyword | LexClass.StmtExpression));
        public static readonly Lex KwVar = Add(new("var", LexClass.Keyword | LexClass.StmtExpression));
        public static readonly Lex KwWasm = Add(new("wasm", LexClass.Keyword | LexClass.StmtExpression));

        public static readonly Lex KwAs = Add(new("as", LexClass.Keyword | LexClass.Infix));
        public static readonly Lex KwIs = Add(new("is", LexClass.Keyword | LexClass.Infix));

        public static readonly Lex KwImpl = Add(new("impl", LexClass.Keyword));
        public static readonly Lex KwLet = Add(new("let", LexClass.Keyword));
        public static readonly Lex KwIn = Add(new("in", LexClass.Keyword));
        public static readonly Lex KwInfix = Add(new("infix", LexClass.Keyword));
        public static readonly Lex KwAlias = Add(new("alias", LexClass.Keyword));
        public static readonly Lex KwEffect = Add(new("effect", LexClass.Keyword));
        public static readonly Lex KwExposing = Add(new("exposing", LexClass.Keyword));
        public static readonly Lex KwPort = Add(new("port", LexClass.Keyword));
        public static readonly Lex KwWhere = Add(new("where", LexClass.Keyword));
    }
}