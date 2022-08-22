using Fux.Tree;

namespace Fux.Parsing
{
    public class ExpressionParser
    {
        public ExpressionParser(Parser parser)
        {
            Parser = parser;
        }

        public Parser Parser { get; }
        public WasmExpressionParser Wasm => Parser.Wasm;
        public ErrorBag Errors => Parser.Errors;

        public Expression Parse(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                if (cursor.Is(Lex.KwIf))
                {
                    return If(cursor);
                }
                if (cursor.Is(Lex.KwCase))
                {
                    return Case(cursor);
                }
                if (cursor.Is(Lex.KwLoop))
                {
                    return Loop(cursor);
                }

                return InfixExpression(cursor);
            });
        }

        public Expression Case(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                cursor.Swallow(Lex.KwCase);
                var value = Parse(cursor);
                cursor.Swallow(Lex.KwOf);

                var caseItems = new List<CaseMatch>();
                while (cursor.More)
                {
                    var caseItem = Match(cursor);
                    caseItems.Add(caseItem);
                }

                return new CaseExpression(value, new CaseMatches(caseItems));
            });

            CaseMatch Match(Cursor cursor)
            {
                return cursor.SubCursor().Scope(cursor =>
                {
                    var pattern = (Expression?)null;
                    if (cursor.Is(Lex.KwElse))
                    {
                        pattern = new WildcardExpression(cursor.Swallow());
                    }
                    else
                    {
                        pattern = Parse(cursor);
                    }
                    cursor.Swallow(Lex.LightArrow);
                    var value = Block(cursor);

                    return new CaseMatch(pattern, value);
                });
            }
        }

        public Expression Loop(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                cursor.Swallow(Lex.KwLoop);

                var block = Block(cursor);

                return new LoopExpression(block);
            });
        }

        public Expression Block(Cursor cursor)
        {
            if (cursor.Current.Line > cursor.Previous.Line)
            {
                //TODO: Sub or Sub2 ?
                cursor = cursor.SubCursor2();

                if (cursor.Current.Text == "if")
                {
                    Assert(true);
                }
            }
#if true
            var expressions = new List<Expression>();
            while (cursor.More)
            {
                var expression = cursor.Scope(cursor =>
                {
                    if (cursor.Is(Lex.KwVal))
                    {
                        return Parser.ValDeclaration(cursor);
                    }
                    if (cursor.Is(Lex.KwVar))
                    {
                        return Parser.VarDeclaration(cursor);
                    }
                    if (cursor.Is(Lex.KwBreak))
                    {
                        cursor.Swallow(Lex.KwBreak);

                        var value = (Expression?)null;
                        if (cursor.IsExpression())
                        {
                            value = Parse(cursor);
                        }
                        return new BreakExpression(value);
                    }
                    if (cursor.Is(Lex.KwContinue))
                    {
                        cursor.Swallow(Lex.KwContinue);
                        return new ContinueExpression();
                    }
                    if (cursor.Is(Lex.KwWhen))
                    {
                        cursor.Swallow(Lex.KwWhen);

                        var condition = Parse(cursor);
                        var then = Block(cursor);

                        return new WhenExpression(condition, then);
                    }
                    if (cursor.Is(Lex.KwWasm))
                    {
                        cursor.Swallow(Lex.KwWasm);

                        return Wasm.Parse(cursor);
                    }
                    if (cursor.IsExpression())
                    {
                        return Parse(cursor);
                    }
                    else
                    {
                        throw Errors.Parser.NotImplementedAt(cursor.Current);
                    }
                });

                expressions.Add(expression);
            }

            Assert(expressions.Count >= 1);
            return new Block(expressions);
#else
            return cursor.Scope(cursor =>
            {
                var expressions = new List<Expression>();

                while (cursor.More)
                {
                    if (cursor.Is(Lex.KwVal))
                    {
                        var expression = Parser.ValDeclaration(cursor);
                        expressions.Add(expression);
                        continue;
                    }
                    if (cursor.Is(Lex.KwVar))
                    {
                        var expression = Parser.VarDeclaration(cursor);
                        expressions.Add(expression);
                        continue;
                    }
                    if (cursor.Is(Lex.KwBreak))
                    {
                        cursor.Swallow(Lex.KwBreak);

                        var value = (Expression?)null;
                        if (cursor.IsExpression())
                        {
                            value = Parse(cursor);
                        }
                        expressions.Add(new BreakExpression(value));
                        continue;
                    }
                    if (cursor.Is(Lex.KwContinue))
                    {
                        cursor.Swallow(Lex.KwContinue);
                        expressions.Add(new ContinueExpression());
                        continue;
                    }
                    if (cursor.Is(Lex.KwWhen))
                    {
                        cursor.Swallow(Lex.KwWhen);

                        var condition = Parse(cursor);
                        var then = Block(cursor);

                        expressions.Add(new WhenExpression(condition, then));
                        continue;
                    }
                    if (cursor.Is(Lex.KwWasm))
                    {
                        cursor.Swallow(Lex.KwWasm);

                        var wasm = Wasm.Parse(cursor);

                        expressions.Add(wasm);
                        continue;
                    }
                    if (cursor.IsExpression())
                    {
                        var expression = Parse(cursor);
                        expressions.Add(expression);
                        continue;
                    }

                    break;
                }

                if (expressions.Count == 0)
                {
                    throw Errors.Parser.NotImplementedAt(cursor.Current);
                }

                return new Block(expressions);
            });
#endif
        }

        private Expression If(Cursor cursor)
        {
            return cursor.Scope<Expression>(cursor =>
            {
                _ = cursor.Swallow(Lex.KwIf);

                var condition = Parse(cursor);
                _ = cursor.Swallow(Lex.KwThen);
                var whenTrue = Block(cursor);
                _ = cursor.Swallow(Lex.KwElse);
                var whenFalse = Block(cursor);

                return new IfExpression(condition, whenTrue, whenFalse);
            });
        }

        private Expression InfixExpression(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var lhs = Prefix(cursor);

                return Resolve(lhs, 0, cursor);
            });

            Expression Resolve(Expression lhs, int minPower, Cursor cursor)
            {
                var lookahead = PeekInfix(cursor);

                while (lookahead.infix is Infix op && op.Power >= minPower)
                {
                    cursor.Advance(lookahead.tokens);

                    var rhs = Prefix(cursor);

                    lookahead = PeekInfix(cursor);

                    while (lookahead.infix is Infix next && (next.Power > op.Power || next.Assoc == Assoc.Right && next.Power == op.Power))
                    {
                        var prec = op.Power + (next.Power > op.Power ? 1 : 0);
                        rhs = Resolve(rhs, prec, cursor);
                        lookahead = PeekInfix(cursor);
                    }

                    lhs = new InfixExpression(op, lhs, rhs);
                }

                return lhs;
            }

            (Infix? infix, int tokens) PeekInfix(Cursor cursor)
            {
                var opName = PeekOpName(cursor);

                if (opName is not null)
                {
                    if (!Parsing.Infix.Find(opName.Text, out var infix))
                    {
                        throw Errors.Parser.CanNotResolveInfix(cursor.Current);
                    }

                    return (infix, opName.Tokens.Count);
                }

                return (null, 0);

                OpName? PeekOpName(Cursor cursor)
                {
                    using (cursor.Speculate())
                    {
                        var name = (OpName?)null;

                        if (cursor.IsOperator())
                        {
                            if (cursor.Is(Lex.RightAngleBracket))
                            {
                                var angle1 = cursor.Swallow();
                                if (cursor.Is(Lex.RightAngleBracket) && !cursor.Current.WhitesBefore)
                                {
                                    var angle2 = cursor.Swallow();
                                    if (cursor.Is(Lex.RightAngleBracket) && !cursor.Current.WhitesBefore)
                                    {
                                        var angle3 = cursor.Swallow();

                                        name = new OpName(angle1, angle2, angle3);
                                    }
                                    else
                                    {
                                        name = new OpName(angle1, angle2);
                                    }
                                }
                                else
                                {
                                    name = new OpName(angle1);
                                }
                            }
                            else
                            {
                                name = new OpName(cursor.Swallow());
                            }
                        }
                        return name;
                    }
                }
            }
        }

        private Expression Prefix(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                if (cursor.IsOperator())
                {
                    if (!Parsing.Prefix.Find(cursor.Current, out var prefix))
                    {
                        throw Errors.Parser.CanNotResolvePrefix(cursor.Current);
                    }
                    
                    cursor.Advance();

                    var rhs = Atomic(cursor);

                    return new PrefixExpression(prefix, rhs);
                }

                return Atomic(cursor);
            });
        }

        private Expression Atomic(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var expression = Value(cursor);

                do
                {
                    if (cursor.Is(Lex.Dot))
                    {
                        expression = cursor.Scope(cursor =>
                        {
                            _ = cursor.Swallow(Lex.Dot);
                            var member = Parser.ParseName(cursor);
                            return new MemberExpression(expression, member);
                        });

                        continue;
                    }

                    if (cursor.Is(Lex.DotUp))
                    {
                        expression = cursor.Scope(cursor =>
                        {
                            _ = cursor.Swallow(Lex.DotUp);
                            var member = Parser.ParseName(cursor);
                            return new SpecialMemberExpression(expression, member);
                        });

                        continue;
                    }

                    if (cursor.Is(Lex.LeftSquareBracket))
                    {
                        expression = cursor.Scope(cursor =>
                        {
                            _ = cursor.Swallow(Lex.LeftSquareBracket);
                            var index = Parse(cursor);
                            _ = cursor.Swallow(Lex.RightSquareBracket);

                            return new IndexExpression(expression, index);
                        });

                        continue;
                    }

                    if (cursor.Is(Lex.LeftRoundBracket))
                    {
                        expression = cursor.Scope(cursor =>
                        {
                            _ = cursor.Swallow(Lex.LeftRoundBracket);

                            var argumentItems = new List<Expression>();
                            while (cursor.IsNot(Lex.RightRoundBracket))
                            {
                                var argument = Parse(cursor);
                                argumentItems.Add(argument);

                                if (!cursor.SwallowIf(Lex.Comma))
                                {
                                    break;
                                }
                            }
                            _ = cursor.Swallow(Lex.RightRoundBracket);

                            var arguments = new Expressions(argumentItems);

                            return new CallExpression(expression, arguments);
                        });

                        continue;
                    }

                    break;
                }
                while (true);

                return expression;
            });

            Expression Value(Cursor cursor)
            {
                if (cursor.IsLiteral())
                {
                    return new LiteralExpression(cursor.Swallow());
                }
                if (cursor.IsIdentifier())
                {
                    return new ExpressionReference(Parser.ParseQName(cursor));
                }
                if (cursor.Is(Lex.Wildcard))
                {
                    return new WildcardExpression(cursor.Swallow());
                }
                if (cursor.SwallowIf(Lex.LeftRoundBracket))
                {
                    var expression = Parse(cursor);
                    _ = cursor.Swallow(Lex.RightRoundBracket);
                    return expression;
                }
                if (cursor.Is(Lex.KwIf))
                {
                    return Block(cursor);
                }

                throw Errors.Parser.NotImplementedAt(cursor.Current);
            }
        }
    }
}