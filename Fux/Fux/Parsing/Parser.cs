using Fux.Tree;

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
                parsed = ParseImport(cursor);
            }
            else if (cursor.Is(Lex.KwType))
            {
                parsed = ParseType(cursor);
            }
            else if (cursor.Is(Lex.KwImpl))
            {
                parsed = ParseImpl(cursor);
            }
            else if (cursor.Is(Lex.KwFun))
            {
                parsed = ParseFun(cursor);
            }

            if (parsed != null)
            {
                Assert(parsed.Span!.Limit == cursor.Tokens.Limit);

                return parsed;
            }

            throw Errors.Parser.NotImplemented(cursor.At());
        });

    }

    private Element ParseImport(Cursor cursor)
    {
        return cursor.Scope(cursor =>
        {
            _ = cursor.Swallow(Lex.KwImport);

            var qname = ParseQName(cursor);

            return new ImportDirective(qname);
        });
    }

    private Element ParseType(Cursor cursor)
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

            throw Errors.Parser.NotImplemented(cursor);
        });
    }

    private ImplDirective ParseImpl(Cursor cursor)
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

        throw Errors.Parser.NotImplemented(cursor);
    }

    private FunDirective ParseFun(Cursor cursor)
    {
        return cursor.Scope(cursor =>
        {
            _ = cursor.Swallow(Lex.KwFun);

            var name = ParseFunName(cursor);

            cursor.Swallow(Lex.LeftRoundBracket);

            while (!cursor.SwallowIf(Lex.RightRoundBracket))
            {
                var name = ParseName(cursor);
            }

            while (cursor.More())
            {
                var subCursor = cursor.Subcursor();

                var x = Parse(subCursor);
            }

            return new FunDirective(name);
        });

        throw Errors.Parser.NotImplemented(cursor);
    }

    private QName

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
}
