﻿namespace Fux.Parsing
{
    [Flags]
    public enum LexClass
    {
        None = 0,
        Other = 1 << 0,
        White = 1 << 1,
        Keyword = 1 << 2,
        Identifier = 1 << 3,
        Operator = 1 << 4,
        Literal = 1 << 5,
        Punctuation = 1 << 6,
        Bracket = 1 << 7,

        Prefix = 1 << 8 | Operator,
        Infix = 1 << 9 | Operator,

        CoreExpression = 1 << 10,
        StmtExpression = 1 << 11,
        AnyExpression = CoreExpression | StmtExpression
    }
}
