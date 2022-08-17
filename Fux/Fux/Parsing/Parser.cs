using System.Xml.Linq;

using Fux.Tree;

using Type = Fux.Tree.Type;

namespace Fux.Parsing;

public class Parser
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

            _ = cursor.Swallow(Lex.Assign);

            if (cursor.SwallowIf(Lex.KxStack))
            {
                _ = cursor.Swallow(Lex.LeftCurlyBracket);
                _ = cursor.Swallow(Lex.Identifier);
                _ = cursor.Swallow(Lex.Assign);
                _ = cursor.Swallow(Lex.String);
                _ = cursor.Swallow(Lex.Identifier);
                _ = cursor.Swallow(Lex.Assign);
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

    private Expression ParseExpression(Cursor cursor)
    {
        return cursor.Scope(cursor =>
        {
            if (cursor.Is(Lex.KxWasm))
            {
                return ParseWasmExpression(cursor);
            }
            if (cursor.Is(Lex.KwIf))
            {
                return ParseIfExpression(cursor);
            }

            throw Errors.Parser.NotImplementedAt(cursor);
        });
    }

    private Expression ParseIfExpression(Cursor cursor)
    {
        return cursor.Scope<Expression>(cursor =>
        {
            _ = cursor.Swallow(Lex.KwIf);

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
}
