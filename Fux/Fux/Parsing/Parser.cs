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
                    parsed = ParseFunDirective(cursor);
                }

                if (parsed != null)
                {
                    Assert(parsed.Span!.Limit == cursor.Tokens.Limit);

                    return parsed;
                }

                throw Errors.Parser.NotImplementedAt(cursor.At());
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

        private FunDirective ParseFunDirective(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var fun = ParseFunDelaration(cursor);

                return new FunDirective(fun);
            });

            throw Errors.Parser.NotImplementedAt(cursor);
        }

        private FunDeclaration ParseFunDelaration(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                _ = cursor.Swallow(Lex.KwFun);

                var name = ParseFunName(cursor);
                var parameters = ParseFunParameters(cursor);
                var result = ParseOfType(cursor);

                while (cursor.More())
                {
                    var subCursor = cursor.Subcursor();

                    var x = ParseExpression(subCursor);
                }

                return new FunDeclaration(name, parameters, result);
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

                    _ = cursor.Swallow(Lex.RightRoundBracket);
                }

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

        private enum Assoc
        {
            None,
            Left,
            Right
        }

        private class Infix
        {
            private static readonly Dictionary<string, Infix> table = new Dictionary<string, Infix>();

            private static Infix add(Infix infix)
            {
                table.Add(infix.Name, infix);

                return infix;
            }

            private static readonly Infix Assign = add(new("=", 10, Assoc.Right));
            private static readonly Infix OrElse = add(new("||", 20, Assoc.Left));
            private static readonly Infix AndThen = add(new("&&", 30, Assoc.Left));
            private static readonly Infix BitOr = add(new("|", 40, Assoc.Left));
            private static readonly Infix BitXor = add(new("^", 50, Assoc.Left));
            private static readonly Infix BitAnd = add(new("&", 60, Assoc.Left));
            private static readonly Infix Eq = add(new("==", 60, Assoc.Left));
            private static readonly Infix Ne = add(new("!=", 60, Assoc.Left));
            private static readonly Infix Lt = add(new("<", 70, Assoc.Left));
            private static readonly Infix Le = add(new("<=", 70, Assoc.Left));
            private static readonly Infix Gt = add(new("<", 70, Assoc.Left));
            private static readonly Infix Ge = add(new("<=", 70, Assoc.Left));
            private static readonly Infix AShr = add(new(">>>", 80, Assoc.Left));
            private static readonly Infix LShr = add(new(">>", 80, Assoc.Left));
            private static readonly Infix Shl = add(new("<<", 80, Assoc.Left));
            private static readonly Infix Add = add(new("+", 90, Assoc.Left));
            private static readonly Infix Sub = add(new("-", 90, Assoc.Left));
            private static readonly Infix Mul = add(new("*", 100, Assoc.Left));
            private static readonly Infix Div = add(new("/", 100, Assoc.Left));
            private static readonly Infix Mod = add(new("%", 100, Assoc.Left));
            private static readonly Infix Is = add(new("is", 110, Assoc.Left));
            private static readonly Infix As = add(new("as", 120, Assoc.Left));

            private Infix(string name, int power, Assoc assoc)
            {
                Name = name;
                Power = power;
                Assoc = assoc;
            }

            public string Name { get; }
            public int Power { get; }
            public Assoc Assoc { get; }

        }
    }
}