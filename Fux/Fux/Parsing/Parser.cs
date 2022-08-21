using System.Runtime.ExceptionServices;
using System.Xml.Linq;

using Fux.Tree;

using Type = Fux.Tree.Type;

#pragma warning disable IDE0079 // Remove unnecessary suppression
#pragma warning disable CA1822 // Mark members as static
#pragma warning disable IDE1006 // Naming Styles

namespace Fux.Parsing
{
    public class Parser
    {
        public Parser(Source source, ErrorBag errors)
        {
            Source = source;
            Errors = errors;

            Text = source.Text.Clone();
            Lexer = new Lexer(Errors, Text);
            Liner = new Liner(Errors, Lexer);

            Expr = new ExpressionParser(this);
            Wasm = new WasmExpressionParser(this);
        }

        public ErrorBag Errors { get; }
        public Source Source { get; }
        public Text Text { get; }
        public Lexer Lexer { get; }
        public Liner Liner { get; }

        public ExpressionParser Expr { get; }
        public WasmExpressionParser Wasm { get; }

        public Document Parse()
        {
            var tokens = Liner.GetElement();

            var elements = new List<Element>();
            while (!tokens.Eof)
            {
                var cursor = new Cursor(Source, Errors, tokens);

                var element = Parse(cursor);

                elements.Add(element);

                tokens = Liner.GetElement();
            }

            return new Document(elements);
        }

        private Annotations Annotations(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var annotationItems = new List<Annotation>();
                while (cursor.IsIdentifier())
                {
                    var annotation = ParseAnnotation(cursor);
                    annotationItems.Add(annotation);
                }
                var annotations = new Annotations(annotationItems);

                return annotations;
            });
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
                else if (cursor.Is(Lex.KwTrait))
                {
                    parsed = TraitDirective(cursor, annotations);
                }
                else if (cursor.Is(Lex.KwFun))
                {
                    parsed = ParseFunDirective(cursor, annotations);
                }
                else if (cursor.Is(Lex.KwVal))
                {
                    parsed = ValDirective(cursor, annotations);
                }
                else if (cursor.Is(Lex.KwVar))
                {
                    parsed = VarDirective(cursor, annotations);
                }
                else if (cursor.Is(Lex.KwStruct))
                {
                    return StructDirective(cursor, annotations);
                }
                else if (cursor.Is(Lex.KwEnum))
                {
                    return EnumDirective(cursor, annotations);
                }

                if (parsed != null)
                {
                    Assert(parsed.Span!.Limit == cursor.Tokens.Limit);

                    return parsed;
                }

                throw Errors.Parser.NotImplementedAt(cursor.At());
            });
        }

        private StructDirective StructDirective(Cursor cursor, Annotations annotations)
        {
            return cursor.Scope(cursor =>
            {
                cursor.Swallow(Lex.KwStruct);
                var declaration = StructDeclaration(cursor, annotations);

                return new StructDirective(annotations, declaration);
            });
        }

        private StructDeclaration StructDeclaration(Cursor cursor, Annotations annotations)
        {
            return cursor.Scope(cursor =>
            {
                var name = ParseName(cursor);
                var typeParameters = TypeParametersOptional(cursor);
                var fieldItems = new List<StructField>();
                if (cursor.SwallowIf(Lex.LeftRoundBracket))
                {
                    if (cursor.IsNot(Lex.RightRoundBracket))
                    {
                        do
                        {
                            var field = StructField(cursor);
                            fieldItems.Add(field);
                        }
                        while (cursor.SwallowIf(Lex.Comma));
                    }
                    _ = cursor.Swallow(Lex.RightRoundBracket);
                }
                var fields = new StructFields(fieldItems);

                return new StructDeclaration(annotations, name, typeParameters, fields);
            });
        }

        private StructField StructField(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var name = ParseName(cursor);
                var type = OfType(cursor);

                return new StructField(name, type);
            });
        }

        private EnumDirective EnumDirective(Cursor cursor, Annotations annotations)
        {
            return cursor.Scope(cursor =>
            {
                cursor.Swallow(Lex.KwEnum);
                var declaration = EnumDeclaration(cursor, annotations);

                return new EnumDirective(annotations, declaration);
            });
        }

        private EnumDeclaration EnumDeclaration(Cursor cursor, Annotations annotations)
        {
            return cursor.Scope(cursor =>
            {
                var name = ParseName(cursor);
                var typeParameters = TypeParametersOptional(cursor);
#if true
                var memberItems = new List<EnumMember>();
                while (cursor.More())
                {
                    var member = EnumMember(cursor);
                    memberItems.Add(member);
                }
                var members = new EnumMembers(memberItems);
#else
                cursor.Swallow(Lex.LeftCurlyBracket);
                var memberItems = new List<EnumMember>();
                while (cursor.IsNot(Lex.RightCurlyBracket))
                {
                    var member = EnumMember(cursor);
                    memberItems.Add(member);
                }
                cursor.Swallow(Lex.RightCurlyBracket);
                var members = new EnumMembers(memberItems);
#endif

                return new EnumDeclaration(annotations, name, typeParameters, members);
            });
        }

        private EnumMember EnumMember(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var name = ParseName(cursor);
                var fieldItems = new List<StructField>();
                if (cursor.SwallowIf(Lex.LeftRoundBracket))
                {
                    if (cursor.IsNot(Lex.RightRoundBracket))
                    {
                        do
                        {
                            var field = StructField(cursor);
                            fieldItems.Add(field);
                        }
                        while (cursor.SwallowIf(Lex.Comma));
                    }
                    _ = cursor.Swallow(Lex.RightRoundBracket);
                }
                var fields = new StructFields(fieldItems);

                return new EnumMember(name, fields);
            });
        }

        private Annotation ParseAnnotation(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var name = ParseName(cursor);
                var argumentItems = new List<Expression>();
                if (cursor.SwallowIf(Lex.LeftRoundBracket))
                {
                    do
                    {
                        var argumentItem = Expr.Parse(cursor);
                        argumentItems.Add(argumentItem);
                    }
                    while (cursor.SwallowIf(Lex.Comma));
                    _ = cursor.Swallow(Lex.RightRoundBracket);
                }

                return new Annotation(name, new Expressions(argumentItems));
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
            return cursor.Scope<Directive>(cursor =>
            {
                _ = cursor.Swallow(Lex.KwType);

                var name = ParseName(cursor);

                _ = cursor.Swallow(Lex.OpAssign);

                if (cursor.SwallowIf(Lex.KxStack))
                {
                    _ = cursor.Swallow(Lex.LeftCurlyBracket);
                    var items = new List<NameValue>();
                    while (cursor.Is(Lex.Identifier))
                    {
                        var item = NameValue(cursor);
                        items.Add(item);
                    }
                    _ = cursor.Swallow(Lex.RightCurlyBracket);

                    return new StackTypeDirective(name, new NameValues(items));
                }
                else if (cursor.SwallowIf(Lex.KxInjected))
                {
                    return new InjectedTypeDirective(name);
                }
                else if (cursor.Is(Lex.Identifier))
                {
                    var type = ParseType(cursor);

                    return new NameTypeDirective(name, type);
                }

                throw Errors.Parser.NotImplementedAt(cursor);
            });
        }

        private NameValue NameValue(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var name = ParseName(cursor);
                cursor.Swallow(Lex.OpAssign);
                var value = Expr.Parse(cursor);

                return new NameValue(name, value);
            });
        }

        private ImplDirective ParseImplDirective(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                _ = cursor.Swallow(Lex.KwImpl);

                var name = ParseName(cursor);
                var forType = (NominalType?)null;

                if (cursor.SwallowIf(Lex.KwFor))
                {
                    forType = NominalType(cursor);
                }

                var elementItems = new List<Element>();
                while (cursor.More())
                {
                    var subCursor = cursor.SubCursor();

                    var elementItem = Parse(subCursor);
                    elementItems.Add(elementItem);
                }

                return new ImplDirective(name, forType, new Elements(elementItems));
            });

            throw Errors.Parser.NotImplementedAt(cursor);
        }

        private TraitDirective TraitDirective(Cursor cursor, Annotations annotations)
        {
            return cursor.Scope(cursor =>
            {
                _ = cursor.Swallow(Lex.KwTrait);

                var name = ParseName(cursor);
                var typeParameters = TypeParametersOptional(cursor);

                var traitItems = new List<Type>();
                if (cursor.SwallowIf(Lex.Colon))
                {
                    do
                    {
                        var traitItem = ParseType(cursor);
                        traitItems.Add(traitItem);
                    }
                    while (cursor.SwallowIf(Lex.Comma));
                }

                var elementItems = new List<Element>();
                while (cursor.More())
                {
                    var subCursor = cursor.SubCursor();

                    var elementItem = Parse(subCursor);
                    elementItems.Add(elementItem);
                }

                var traits = new Types(traitItems);
                var elements = new Elements(elementItems);
                return new TraitDirective(annotations, name, typeParameters, traits, elements);
            });
        }

        private TypeParameters? TypeParametersOptional(Cursor cursor)
        {
            if (cursor.Is(Lex.LeftAngleBracket))
            {
                return TypeParameters(cursor);
            }

            return null;
        }

        private TypeParameters TypeParameters(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                cursor.Swallow(Lex.LeftAngleBracket);

                var items = new List<TypeParameter>();
                do
                {
                    var item = TypeParameter(cursor);
                    items.Add(item);
                }
                while (cursor.SwallowIf(Lex.Comma));

                cursor.Swallow(Lex.RightAngleBracket);

                return new TypeParameters(items);
            });
        }

        private TypeParameter TypeParameter(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var name = ParseName(cursor);
                var @default = (Name?)null;
                if (cursor.SwallowIf(Lex.OpAssign))
                {
                    @default = ParseName(cursor);
                }

                return new TypeParameter(name, @default);
            });
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

                var name = FunName(cursor);
                var typeParameters = TypeParametersOptional(cursor);
                var parameters = FunParameters(cursor);
                var result = OfType(cursor);
                var expr = (Expression?)null;
                if (cursor.More())
                {
                    cursor.Swallow(Lex.BoldArrow);
                    expr = Expr.Block(cursor);
                }

                return new FunDeclaration(annotations, name, typeParameters, parameters, result, expr);
            });
        }

        public ValDirective ValDirective(Cursor cursor, Annotations annotations)
        {
            return cursor.Scope(cursor =>
            {
                _ = cursor.Swallow(Lex.KwVal);

                var name = ParseName(cursor);
                var type = OfTypeOptional(cursor);
                _ = cursor.Swallow(Lex.OpAssign);
                var value = Expr.Parse(cursor);

                return new ValDirective(annotations, name, type, value);
            });
        }

        public VarDirective VarDirective(Cursor cursor, Annotations annotations)
        {
            return cursor.Scope(cursor =>
            {
                _ = cursor.Swallow(Lex.KwVar);

                var name = ParseName(cursor);
                var type = OfTypeOptional(cursor);
                _ = cursor.Swallow(Lex.OpAssign);
                var value = Expr.Parse(cursor);

                return new VarDirective(annotations, name, type, value);
            });
        }

        public Expression ValDeclaration(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                _ = cursor.Swallow(Lex.KwVal);

                var name = ParseName(cursor);
                var type = (Type?)null;
                if (cursor.Is(Lex.Colon))
                {
                    type = OfType(cursor);
                }
                _ = cursor.Swallow(Lex.OpAssign);
                var value = Expr.Parse(cursor);

                return new ValExpression(name, type, value);
            });
        }

        public Expression VarDeclaration(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                _ = cursor.Swallow(Lex.KwVar);

                var name = ParseName(cursor);
                var type = (Type?)null;
                if (cursor.Is(Lex.Colon))
                {
                    type = OfType(cursor);
                }
                _ = cursor.Swallow(Lex.OpAssign);
                var value = Expr.Parse(cursor);

                return new VarExpression(name, type, value);
            });
        }

        private FunParameters FunParameters(Cursor cursor)
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
                var type = OfType(cursor);

                return new FunParameter(name, type);
            });
        }

        private Type ParseType(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var types = new List<Type>();
                do
                {
                    var type = NominalType(cursor);
                    types.Add(type);
                }
                while (cursor.SwallowIf(Lex.OpBitOr));

                if (types.Count == 1)
                {
                    return types[0];
                }
                Assert(types.Count >= 2);
                return new OrType(types);
            });
        }

        private NominalType NominalType(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var name = ParseName(cursor);
                var typeArguments = TypeArgumentsOptional(cursor);

                return new NominalType(name, typeArguments);
            });
        }

        private TypeArguments? TypeArgumentsOptional(Cursor cursor)
        {
            if (cursor.Is(Lex.LeftAngleBracket))
            {
                return TypeArguments(cursor);
            }

            return null;
        }

        private TypeArguments TypeArguments(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                cursor.Swallow(Lex.LeftAngleBracket);

                var items = new List<Type>();
                do
                {
                    var item = ParseType(cursor);
                    items.Add(item);
                }
                while (cursor.SwallowIf(Lex.Comma));

                cursor.Swallow(Lex.RightAngleBracket);

                return new Tree.TypeArguments(items);
            });
        }

        private Type? OfTypeOptional(Cursor cursor)
        {
            if (cursor.Is(Lex.Colon))
            {
                return OfType(cursor);
            }
            return null;
        }

        private Type OfType(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                _ = cursor.Swallow(Lex.Colon);
                return ParseType(cursor);
            });
        }

        public QName ParseQName(Cursor cursor)
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

        private Name FunName(Cursor cursor)
        {
            return cursor.Scope<Name>(cursor =>
            {
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

                                return new OpName(angle1, angle2, angle3);
                            }
                            return new OpName(angle1, angle2);
                        }
                        return new OpName(angle1);
                    }

                    return new OpName(cursor.Swallow());
                }

                return new IdName(cursor.Swallow(Lex.Identifier));
            });
        }

        public Name ParseName(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var id = cursor.Swallow(Lex.Identifier);

                return new IdName(id);
            });
        }
    }
}