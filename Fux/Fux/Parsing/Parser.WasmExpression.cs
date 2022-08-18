using Fux.Tree;

#pragma warning disable IDE0051 // Remove unused private members

namespace Fux.Parsing
{
    public partial class Parser
    {
        private class WasmExpressionParser : Expression
        {
            public static Expression Parse(Parser parser, Cursor cursor)
            {
                return new WasmExpressionParser(parser).Parse(cursor);
            }

            private WasmExpressionParser(Parser parser)
            {
                Parser = parser;
            }

            public Parser Parser { get; }
            public ErrorBag Errors => Parser.Errors;


            private Expression Parse(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    var sexpression = SExpression(cursor);

                    return new WasmExpression(sexpression);
                });
            }

            private SExpression SExpression(Cursor cursor)
            {
                return cursor.Scope<SExpression>(cursor =>
                {
                    _ = cursor.Swallow(Lex.LeftRoundBracket);
                    var symbol = SSymbol(cursor);
                    var atoms = new List<SAtom>();
                    while (!cursor.SwallowIf(Lex.RightRoundBracket))
                    {
                        var atom = SAtom(cursor);
                        atoms.Add(atom);
                    }

                    return new SExpression(symbol, atoms);
                });
            }

            private SAtom SAtom(Cursor cursor)
            {
                return cursor.Scope<SAtom>(cursor =>
                {
                    if (cursor.Is(Lex.LeftRoundBracket))
                    {
                        return SExpression(cursor);
                    }
                    if (cursor.Is(Lex.Identifier, Lex.WasmIdentifier))
                    {
                        return SName(cursor);
                    }
                    if (cursor.Is(Lex.Integer))
                    {
                        return SNumber(cursor);
                    }

                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private SSymbol SSymbol(Cursor cursor)
            {
                return cursor.Scope(cursor =>
                {
                    var names = new List<Name>();
                    do
                    {
                        var name = Parser.ParseName(cursor);
                        names.Add(name);
                    }
                    while (cursor.SwallowIf(Lex.Dot));

                    return new SSymbol(names);
                });
            }

            private SName SName(Cursor cursor)
            {
                return cursor.Scope(cursor =>
                {
                    var names = new List<Name>();
                    var name = WasmName(cursor);
                    names.Add(name);
                    while (cursor.SwallowIf(Lex.CoCo))
                    {
                        name = Parser.ParseName(cursor);
                        names.Add(name);
                    }

                    var qname = new QName(names);

                    return new SName(qname);
                });
            }

            private SNumber SNumber(Cursor cursor)
            {
                return cursor.Scope(cursor =>
                {
                    if (cursor.Is(Lex.Integer))
                    {
                        return new SNumber(cursor.Swallow(Lex.Integer));
                    }

                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Name WasmName(Cursor cursor)
            {
                return cursor.Scope(cursor =>
                {
                    if (cursor.Is(Lex.Identifier))
                    {
                        return new Name(cursor.Swallow(Lex.Identifier));
                    }

                    return new Name(cursor.Swallow(Lex.WasmIdentifier));
                });
            }
        }
    }
}