﻿using Fux.Tree;

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

        private Expression ParseWasmExpression(Cursor cursor)
        {
            return WasmExpressionParser.Parse(this, cursor);
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

                    return InfixExpression(cursor);
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
                        var whenTrue = Parse(cursor);
                        _ = cursor.Swallow(Lex.KwElse);
                        var whenFalse = Parse(cursor);

                        return new IfExpression(condition, whenTrue, whenFalse);
                    }
                    else
                    {
                        var condition = Parse(cursor);
                        _ = cursor.Swallow(Lex.KwThen);
                        var whenTrue = Parse(cursor);
                        _ = cursor.Swallow(Lex.KwElse);
                        var whenFalse = Parse(cursor);

                        return new IfExpression(condition, whenTrue, whenFalse);
                    }

                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }

            private Expression InfixExpression(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    var lhs = Unary(cursor);

                    if (cursor.IsInfix())
                    {
                        return Resolve(lhs, 0, cursor);
                    }

                    return lhs;
                });

                Expression Resolve(Expression lhs, int minPower, Cursor cursor)
                {
                    Assert(cursor.IsInfix());

                    var lh = Infix(cursor);

                    while (cursor.More() && lh.Power >= minPower)
                    {
                        var op = lh;

                        var rhs = Unary(cursor);

                        if (cursor.IsInfix())
                        {
                            lh = Infix(cursor);
                            while (lh.Power > op.Power || lh.Assoc == Assoc.Right && lh.Power == op.Power)
                            {
                                var prec = op.Power + (lh.Power > op.Power ? 1 : 0);
                                rhs = Resolve(rhs, prec, cursor);

                                if (!cursor.IsInfix())
                                {
                                    break;
                                }

                                lh = Infix(cursor);
                            }
                        }

                        lhs = new InfixExpression(lh, lhs, rhs);
                    }

                    return lhs;
                }

                Infix Infix(Cursor cursor)
                {
                    if (!Parsing.Infix.Find(cursor.Current, out var infix))
                    {
                        throw Errors.Parser.CanNotResolveInfix(cursor);
                    }

                    cursor.Swallow();
                    
                    return infix;
                }
            }

            private Expression Unary(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    if (cursor.More() && cursor.Current.Lex.IsOperator)
                    {
                        if (!Prefix.Find(cursor.Current, out var prefix))
                        {
                            throw Errors.Parser.CanNotResolvePrefix(cursor);
                        }

                        var rhs = Atomic(cursor);

                        return new PrefixExpression(prefix, rhs);
                    }

                    return Atomic(cursor);
                });
            }

            private Expression Atomic(Cursor cursor)
            {
                return cursor.Scope<Expression>(cursor =>
                {
                    if (cursor.Current.Lex.IsLiteral)
                    {
                        return new LiteralExpression(cursor.Advance());
                    }
                    if (cursor.IsIdentifier())
                    {
                        return new ReferenceExpression(Parser.ParseQName(cursor));
                    }
                    if (cursor.SwallowIf(Lex.LeftRoundBracket))
                    {
                        var expression = Parse(cursor);
                        _ = cursor.Swallow(Lex.RightRoundBracket);
                    }

                    throw Errors.Parser.NotImplementedAt(cursor);
                });
            }
        }
    }
}