using Fux.Tree;

#pragma warning disable IDE0051 // Remove unused private members

namespace Fux.Parsing
{
    public partial class Parser
    {
        private Expression ParseExpression(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                if (cursor.Is(Lex.KxWasm))
                {
                    return WasmExpressionParser.Parse(this, cursor);
                }
                return ExpressionParser.Parse(this, cursor);
            });
        }

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
                    _ = cursor.Swallow(Lex.KxWasm);
                    var sexpression = ParseSExpression(cursor);

                    return new WasmExpression(sexpression);
                });
            }

            private SExpression ParseSExpression(Cursor cursor)
            {
                return cursor.Scope<SExpression>(cursor =>
                {
                    _ = cursor.Swallow(Lex.LeftRoundBracket);
                    var symbol = ParseSSymbol(cursor);
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
                        return ParseSExpression(cursor);
                    }
                    if (cursor.Is(Lex.WasmIdentifier))
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

            private SSymbol ParseSSymbol(Cursor cursor)
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
                    while (cursor.SwallowIf(Lex.Dot))
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
                    var id = cursor.Swallow(Lex.WasmIdentifier);

                    return new Name(id);
                });
            }
        }

        private class ExpressionParser
        {
            public static Expression Parse(Parser parser, Cursor cursor)
            {
                return new ExpressionParser(parser).Parse(cursor);
            }

            private ExpressionParser(Parser parser)
            {
                Parser = parser;
            }

            public Parser Parser { get; }
            public ErrorBag Errors => Parser.Errors;

            public Expression Parse(Cursor cursor)
            {
                return cursor.Scope(cursor =>
                {
                    if (cursor.Is(Lex.KwIf))
                    {
                        return If(cursor);
                    }
                    if (cursor.Is(Lex.KwMatch))
                    {
                        throw Errors.Parser.NotImplementedAt(cursor);
                    }
                    if (cursor.Is(Lex.KwLoop))
                    {
                        throw Errors.Parser.NotImplementedAt(cursor);
                    }

                    return Assign(cursor);
                });

            }

            private Expression If(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    _ = cursor.Swallow(Lex.KwIf);

                    if (cursor.SwallowIf(Lex.LeftRoundBracket))
                    {
                        var condition = Parse(cursor);
                        _ = cursor.Swallow(Lex.RightRoundBracket);
                    }

                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Expression Assign(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    var exprs = new List<Expression>();

                    var expr = Or(cursor);
                    exprs.Add(expr);

                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Expression Or(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Expression And(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Expression BitOr(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Expression BitXor(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Expression BitAnd(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Expression Eq(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Expression Rel(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Expression Shift(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Expression Add(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Expression Mul(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Expression Is(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Expression As(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Expression Unary(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Expression Atomic(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }
        }

        private Expression ParseIfExpression(Cursor cursor)
        {
            return cursor.Scope<Expression>(cursor =>
            {
                _ = cursor.Swallow(Lex.KwIf);

                if (cursor.SwallowIf(Lex.LeftRoundBracket))
                {
                    var condition = ParseExpression(cursor);
                    cursor.Swallow(Lex.RightRoundBracket);
                }

                throw Errors.Parser.NotImplementedAt(cursor);
            });
        }

        private Expression ParseWasmExpression(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                _ = cursor.Swallow(Lex.KxWasm);
                var sexpression = ParseSExpression(cursor);

                return new WasmExpression(sexpression);
            });
        }

        private SExpression ParseSExpression(Cursor cursor)
        {
            return cursor.Scope<SExpression>(cursor =>
            {
                _ = cursor.Swallow(Lex.LeftRoundBracket);
                var symbol = ParseSSymbol(cursor);
                var atoms = new List<SAtom>();
                while (!cursor.SwallowIf(Lex.RightRoundBracket))
                {
                    var atom = ParseSAtom(cursor);
                    atoms.Add(atom);
                }

                return new SExpression(symbol, atoms);
            });
        }

        private SAtom ParseSAtom(Cursor cursor)
        {
            return cursor.Scope<SAtom>(cursor =>
            {
                if (cursor.Is(Lex.LeftRoundBracket))
                {
                    return ParseSExpression(cursor);
                }
                if (cursor.Is(Lex.WasmIdentifier))
                {
                    return ParseSName(cursor);
                }
                if (cursor.Is(Lex.Integer))
                {
                    return ParseSNumber(cursor);
                }

                throw Errors.Parser.NotImplementedAt(cursor);
            });
        }

        private SSymbol ParseSSymbol(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var names = new List<Name>();
                do
                {
                    var name = ParseName(cursor);
                    names.Add(name);
                }
                while (cursor.SwallowIf(Lex.Dot));

                return new SSymbol(names);
            });
        }

        private SName ParseSName(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var names = new List<Name>();
                var name = ParseWasmName(cursor);
                names.Add(name);
                while (cursor.SwallowIf(Lex.Dot))
                {
                    name = ParseName(cursor);
                    names.Add(name);
                }

                var qname = new QName(names);

                return new SName(qname);
            });
        }

        private SNumber ParseSNumber(Cursor cursor)
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
    }
}