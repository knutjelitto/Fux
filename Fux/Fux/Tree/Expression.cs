using Fux.Parsing;

namespace Fux.Tree
{
    public abstract class Expression : Node
    {
    }

    public class WasmExpression : Expression
    {
        public WasmExpression(SExpression expression)
        {
            Expression = expression;
        }

        public SExpression Expression { get; }
    }

    public abstract class SAtom : Node { }

    public class SExpression : SAtom
    {
        public SExpression(SSymbol symbol, IReadOnlyList<SAtom> atoms)
        {
            Symbol = symbol;
            Atoms = atoms;
        }

        public SSymbol Symbol { get; }
        public IReadOnlyList<SAtom> Atoms { get; }
    }

    public class SName : SAtom
    {
        public SName(QName name)
        {
            Name = name;
        }

        public QName Name { get; }
    }

    public class SNumber : SAtom
    {
        public SNumber(Token token)
        {
            Token = token;
        }

        public Token Token { get; }
    }

    public class SSymbol : SAtom
    {
        public SSymbol(IReadOnlyList<Name> name)
        {
            Name = name;
        }

        public IReadOnlyList<Name> Name { get; }
    }

    public class OpNode : Node
    {
        public OpNode(Token op, Expression next)
        {
            Op = op;
            Next = next;
        }

        public Token Op { get; }
        public Expression Next { get; }
    }
}