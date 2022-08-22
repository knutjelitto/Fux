using Fux.Tree;

#pragma warning disable IDE0051 // Remove unused private members

namespace Fux.Parsing
{
    public class WasmExpressionParser : ExpressionBase
    {
        public WasmExpressionParser(Parser parser)
        {
            Parser = parser;
        }

        public Parser Parser { get; }
        public ErrorBag Errors => Parser.Errors;

        public Expression Parse(Cursor cursor)
        {
            return cursor.Scope<Expression>(cursor =>
            {
                var items = new List<SExpression>();
                do
                {
                    var item = SExpression(cursor);
                    items.Add(item);
                }
                while (cursor.Is(Lex.LeftRoundBracket));

                return new WasmExpression(items);
            });
        }

        private SExpression SExpression(Cursor cursor)
        {
            return cursor.Scope<SExpression>(cursor =>
            {
                _ = cursor.Swallow(Lex.LeftRoundBracket);
                var symbol = SSymbol(cursor);
                var atomItems = new List<SAtom>();
                while (!cursor.SwallowIf(Lex.RightRoundBracket))
                {
                    var atomItem = SAtom(cursor);
                    atomItems.Add(atomItem);
                }

                return new SExpression(symbol, new SAtoms(atomItems));
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
                if (cursor.Is(Lex.Integer) || cursor.IsPrefixMinus())
                {
                    return SNumber(cursor);
                }

                throw Errors.Parser.NotImplementedAt(cursor.Current);
            });
        }

        private SSymbol SSymbol(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                var names = new List<Name>();
                do
                {
                    if (cursor.IsKeyword())
                    {
                        var kw = new KwName(cursor.Swallow());
                        names.Add(kw);
                    }
                    else
                    {
                        var name = Parser.ParseName(cursor);
                        names.Add(name);
                    }
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
                var minus = false;
                if (cursor.IsPrefixMinus())
                {
                    cursor.Swallow();
                    minus = true;
                }

                if (cursor.Is(Lex.Integer))
                {
                    return new SNumber(cursor.Swallow(Lex.Integer), minus);
                }

                throw Errors.Parser.NotImplementedAt(cursor.Current);
            });
        }

        private Name WasmName(Cursor cursor)
        {
            return cursor.Scope(cursor =>
            {
                if (cursor.Is(Lex.Identifier))
                {
                    return new IdName(cursor.Swallow(Lex.Identifier));
                }

                return new IdName(cursor.Swallow(Lex.WasmIdentifier));
            });
        }
    }
}