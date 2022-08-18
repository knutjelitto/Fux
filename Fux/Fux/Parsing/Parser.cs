using Fux.Tree;

using Type = Fux.Tree.Type;

#pragma warning disable IDE1006 // Naming Styles

namespace Fux.Parsing
{
    public partial class Parser
    {
        public Parser(Source source, ErrorBag errors)
        {
            Source = source;
            Errors = errors;

            Text = source.Text.Clone();
            Lexer = new Lexer(Errors, Text);
            Liner = new Liner(Errors, Lexer);
        }

        public ErrorBag Errors { get; }
        public Source Source { get; }
        public Text Text { get; }
        public Lexer Lexer { get; }
        public Liner Liner { get; }

        public Document Parse()
        {
            var tokens = Liner.GetElement();

            var elements = new List<Element>();
            while (!tokens.Eof)
            {
                var element = Parse(tokens);

                elements.Add(element);

                tokens = Liner.GetElement();
            }

            return new Document(elements);
        }

        private Element Parse(TokenSpan tokens)
        {
            var cursor = new Cursor(Source, Errors, tokens);

            return Parse(cursor);
        }

        private Element Parse(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                Element? parsed = null;

                var annotationItems = new List<Annotation>();
                while (cursor.IsIdentifier())
                {
                    var annotation = ParseAnnotation(cursor);
                    annotationItems.Add(annotation);
                }
                var annotations = new Annotations(annotationItems);

                if (cursor.Is(Lex.KwImport))
                {
                    parsed = ParseImportDirective(cursor);
                }
                else if (cursor.Is(Lex.KwType))
                {
                    parsed = ParseTypeDirective(cursor);
                }
                else if (cursor.Is(Lex.KwImpl))
                {
                    parsed = ParseImplDirective(cursor);
                }
                else if (cursor.Is(Lex.KwFun))
                {
                    parsed = ParseFunDirective(cursor, annotations);
                }

                if (parsed != null)
                {
                    Assert(parsed.Span!.Limit == cursor.Tokens.Limit);

                    return parsed;
                }

                throw Errors.Parser.NotImplementedAt(cursor.At());
            });
        }

        private Annotation ParseAnnotation(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var name = ParseName(cursor);
                var arguments = new List<Expression>();
                if (cursor.Is(Lex.LeftRoundBracket))
                {
                    do
                    {
                        var argument = ParseExpression(cursor);
                        arguments.Add(argument);
                    }
                    while (cursor.SwallowIf(Lex.Comma));
                    _ = cursor.Swallow(Lex.RightRoundBracket);
                }

                return new Annotation(name, arguments);
            });
        }

        private Element ParseImportDirective(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                _ = cursor.Swallow(Lex.KwImport);

                var qname = ParseQName(cursor);

                return new ImportDirective(qname);
            });
        }

        private Directive ParseTypeDirective(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                _ = cursor.Swallow(Lex.KwType);

                var name = ParseName(cursor);

                _ = cursor.Swallow(Lex.OpAssign);

                if (cursor.SwallowIf(Lex.KxStack))
                {
                    _ = cursor.Swallow(Lex.LeftCurlyBracket);
                    _ = cursor.Swallow(Lex.Identifier);
                    _ = cursor.Swallow(Lex.OpAssign);
                    _ = cursor.Swallow(Lex.String);
                    _ = cursor.Swallow(Lex.Identifier);
                    _ = cursor.Swallow(Lex.OpAssign);
                    _ = cursor.Swallow(Lex.Integer);
                    _ = cursor.Swallow(Lex.RightCurlyBracket);

                    return new TypeDirective(name);
                }

                throw Errors.Parser.NotImplementedAt(cursor);
            });
        }

        private ImplDirective ParseImplDirective(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                _ = cursor.Swallow(Lex.KwImpl);

                var name = ParseName(cursor);

                var elements = new List<Element>();
                while (cursor.More())
                {
                    var subCursor = cursor.Subcursor();

                    var element = Parse(subCursor);
                    elements.Add(element);
                }

                return new ImplDirective(name, elements);
            });

            throw Errors.Parser.NotImplementedAt(cursor);
        }

        private FunDirective ParseFunDirective(Cursor cursor, Annotations annotations)
        {
            return cursor.Scope(cursor =>
            {
                var fun = ParseFunDelaration(cursor, annotations);

                return new FunDirective(annotations, fun);
            });

            throw Errors.Parser.NotImplementedAt(cursor);
        }

        private FunDeclaration ParseFunDelaration(Cursor cursor, Annotations annotations)
        {
            return cursor.Scope(cursor =>
            {
                _ = cursor.Swallow(Lex.KwFun);

                var name = ParseFunName(cursor);
                var parameters = ParseFunParameters(cursor);
                var result = ParseOfType(cursor);

                while (cursor.More())
                {
                    if (annotations.IsWasm)
                    {
                        var wasm = ParseWasmExpression(cursor);
                    }
                    else
                    {
                        var x = ParseExpressions(cursor);
                    }
                }

                return new FunDeclaration(annotations, name, parameters, result);
            });
        }

        private Expressions ParseExpressions(Cursor cursor)
        {
            var expressions = new List<Expression>();

            while (cursor.More())
            {
                if (cursor.Is(Lex.KwVal))
                {
                    var expression = ParseValDeclaration(cursor);
                    expressions.Add(expression);
                    continue;
                }

                expressions.Add(ParseExpression(cursor));
            }


            return new Expressions(expressions);
        }

        private Expression ParseValDeclaration(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                cursor.Swallow(Lex.KwVal);

                var name = ParseName(cursor);
                var type = ParseOfType(cursor);
                cursor.Swallow(Lex.OpAssign);
                var value = ParseExpression(cursor);

                return new ValExpression(name, type, value);
            });
        }

        private FunParameters ParseFunParameters(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                _ = cursor.Swallow(Lex.LeftRoundBracket);

                var parameters = new List<FunParameter>();

                if (cursor.IsNot(Lex.RightRoundBracket))
                {
                    do
                    {
                        var parameter = ParseFunParameter(cursor);
                        parameters.Add(parameter);
                    }
                    while (cursor.SwallowIf(Lex.Comma));

                }
                _ = cursor.Swallow(Lex.RightRoundBracket);

                return new FunParameters(parameters);
            });

            throw Errors.Parser.NotImplementedAt(cursor);
        }

        private FunParameter ParseFunParameter(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var name = ParseName(cursor);
                var type = ParseOfType(cursor);

                return new FunParameter(name, type);
            });
        }

        private Type ParseType(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                if (cursor.Is(Lex.Identifier))
                {
                    var name = ParseName(cursor);

                    return new NominalType(name);
                }

                throw Errors.Parser.NotImplementedAt(cursor);
            });
        }

        private Type ParseOfType(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                _ = cursor.Swallow(Lex.Colon);
                return ParseType(cursor);
            });
        }

        private QName ParseQName(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var names = new List<Name>();

                do
                {
                    var name = ParseName(cursor);

                    names.Add(name);
                }
                while (cursor.SwallowIf(Lex.CoCo));

                return new QName(names);
            });
        }

        private Name ParseFunName(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                if (cursor.Is(Lex.LeftRoundBracket) && cursor[1].Lex.IsOperator && cursor.Is(2, Lex.RightRoundBracket))
                {
                    var left = cursor.Advance();
                    Assert(!cursor.Current.WhitesBefore);
                    Assert(cursor.Current.Lex.IsOperator);
                    var op = cursor.Advance();
                    Assert(!cursor.Current.WhitesBefore);
                    Assert(cursor.Is(Lex.RightRoundBracket));
                    var right = cursor.Advance();

                    return new OpName(op);
                }
                var id = cursor.Is(Lex.Identifier) ? cursor.Swallow(Lex.Identifier) : cursor.Swallow(Lex.OpIdentifier);

                return new Name(id);
            });
        }

        private Name ParseName(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var id = cursor.Swallow(Lex.Identifier);

                return new Name(id);
            });
        }

        private Name ParseWasmName(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var id = cursor.Swallow(Lex.WasmIdentifier);

                return new Name(id);
            });
        }
    }
}