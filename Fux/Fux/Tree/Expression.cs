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

    public class IfExpression : Expression
    {
        public IfExpression(Expression condition, Expression whenTrue, Expression whenFalse)
        {
            Condition = condition;
            WhenTrue = whenTrue;
            WhenFalse = whenFalse;
        }

        public Expression Condition { get; }
        public Expression WhenTrue { get; }
        public Expression WhenFalse { get; }
    }

    public class ValExpression : Expression
    {
        public ValExpression(Name name, Type type, Expression expression)
        {
            Name = name;
            Type = type;
            Expression = expression;
        }

        public Name Name { get; }
        public Type Type { get; }
        public Expression Expression { get; }
    }

    public class InfixExpression : Expression
    {
        public InfixExpression(Infix infix, Expression lhs, Expression rhs)
        {
            Infix = infix;
            Lhs = lhs;
            Rhs = rhs;
        }

        public Infix Infix { get; }
        public Expression Lhs { get; }
        public Expression Rhs { get; }
    }

    public class PrefixExpression : Expression
    {
        public PrefixExpression(Prefix prefix, Expression rhs)
        {
            Prefix = prefix;
            Rhs = rhs;
        }

        public Prefix Prefix { get; }
        public Expression Rhs { get; }
    }

    public class MemberExpression : Expression
    {
        public MemberExpression(Expression primary, Name member)
        {
            Primary = primary;
            Member = member;
        }

        public Expression Primary { get; }
        public Name Member { get; }
    }

    public class SpecialMemberExpression : Expression
    {
        public SpecialMemberExpression(Expression primary, Name member)
        {
            Primary = primary;
            Member = member;
        }

        public Expression Primary { get; }
        public Name Member { get; }
    }

    public class IndexExpression : Expression
    {
        public IndexExpression(Expression primary, Expression index)
        {
            Primary = primary;
            Index = index;
        }

        public Expression Primary { get; }
        public Expression Index { get; }
    }

    public class CallExpression : Expression
    {
        public CallExpression(Expression primary, CallArguments arguments)
        {
            Primary = primary;
            Arguments = arguments;
        }

        public Expression Primary { get; }
        public CallArguments Arguments { get; }
    }

    public class LiteralExpression : Expression
    {
        public LiteralExpression(Token token)
        {
            Token = token;
        }

        public Token Token { get; }
    }

    public class ReferenceExpression : Expression
    {
        public ReferenceExpression(QName qname)
        {
            Qname = qname;
        }

        public QName Qname { get; }
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