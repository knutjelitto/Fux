using Fux.Parsing;

#pragma warning disable IDE1006 // Naming Styles

namespace Fux.Tree
{
    public interface Expression : Node
    {
    }

    public class Expressions : ListOf<Expression>
    {
        public Expressions(IEnumerable<Expression> items) : base(items)
        {
        }
    }

    public class ExpressionBase : NodeBase, Expression
    { }

    public class WasmExpression : ListOf<SExpression>, Expression
    {
        public WasmExpression(IEnumerable<SExpression> items) : base(items)
        {
        }
    }

    public class Block : ListOf<Expression>, Expression
    {
        public Block(IEnumerable<Expression> expressions)
            : base(expressions)
        {
        }
        public Block(Expression expression)
            : base(Enumerable.Repeat(expression, 1))
        {
        }

        public override string ToString() => string.Join(" ; ", this);
    }

    public class CaseExpression : ExpressionBase
    {
        public CaseExpression(Expression value, CaseMatches cases)
        {
            Value = value;
            Cases = cases;
        }

        public Expression Value { get; }
        public CaseMatches Cases { get; }
    }

    public class CaseMatch : NodeBase
    {
        public CaseMatch(Expression pattern, Expression value)
        {
            Pattern = pattern;
            Value = value;
        }

        public Expression Pattern { get; }
        public Expression Value { get; }
    }

    public class CaseMatches : ListOf<CaseMatch>
    {
        public CaseMatches(IEnumerable<CaseMatch> items) : base(items)
        {
        }
    }

    public class LoopExpression : ExpressionBase
    {
        public LoopExpression(Expression expression)
        {
            Expression = expression;
        }

        public Expression Expression { get; }
    }

    public class WhenExpression : ExpressionBase
    {
        public WhenExpression(Expression condition, Expression whenTrue)
        {
            Condition = condition;
            WhenTrue = whenTrue;
        }

        public Expression Condition { get; }
        public Expression WhenTrue { get; }
    }

    public class BreakExpression : ExpressionBase
    {
        public BreakExpression(Expression value, Expression? condition)
        {
            Value = value;
            Condition = condition;
        }

        public Expression Value { get; }
        public Expression? Condition { get; }
    }

    public class IfExpression : ExpressionBase
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

    public class ValExpression : ExpressionBase
    {
        public ValExpression(Name name, Type? type, Expression expression)
        {
            Name = name;
            Type = type;
            Expression = expression;
        }

        public Name Name { get; }
        public Type? Type { get; }
        public Expression Expression { get; }

        public override string ToString()
        {
            var type = Type is null ? "" : ": {Type}";
            return $"val {Name}{type} = {Expression}";
        }
    }

    public class VarExpression : ExpressionBase
    {
        public VarExpression(Name name, Type? type, Expression value)
        {
            Name = name;
            Type = type;
            Value = value;
        }

        public Name Name { get; }
        public Type? Type { get; }
        public Expression Value { get; }

        public override string ToString()
        {
            var type = Type is null ? "" : ": {Type}";
            return $"var {Name}{type} = {Value}";
        }
    }

    public class InfixExpression : ExpressionBase
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

        public override string ToString() => $"({Lhs} {Infix.Name} {Rhs})";
    }

    public class PrefixExpression : ExpressionBase
    {
        public PrefixExpression(Prefix prefix, Expression rhs)
        {
            Prefix = prefix;
            Rhs = rhs;
        }

        public Prefix Prefix { get; }
        public Expression Rhs { get; }
    }

    public class MemberExpression : ExpressionBase
    {
        public MemberExpression(Expression primary, Name member)
        {
            Primary = primary;
            Member = member;
        }

        public Expression Primary { get; }
        public Name Member { get; }

        public override string ToString() => $"{Primary}.{Member}";
    }

    public class SpecialMemberExpression : ExpressionBase
    {
        public SpecialMemberExpression(Expression primary, Name member)
        {
            Primary = primary;
            Member = member;
        }

        public Expression Primary { get; }
        public Name Member { get; }
    }

    public class IndexExpression : ExpressionBase
    {
        public IndexExpression(Expression primary, Expression index)
        {
            Primary = primary;
            Index = index;
        }

        public Expression Primary { get; }
        public Expression Index { get; }
    }

    public class CallExpression : ExpressionBase
    {
        public CallExpression(Expression primary, Expressions arguments)
        {
            Primary = primary;
            Arguments = arguments;
        }

        public Expression Primary { get; }
        public Expressions Arguments { get; }

        public override string ToString() => $"{Primary}({string.Join(", ", Arguments)})";
    }

    public class LiteralExpression : ExpressionBase, Leaf
    {
        public LiteralExpression(Token token)
        {
            Token = token;
        }

        public Token Token { get; }

        public string Text => Token.Text;

        public override string ToString() => $"lit:{Token.Text}";
    }

    public class ReferenceExpression : ExpressionBase
    {
        public ReferenceExpression(QName qname)
        {
            QName = qname;
        }

        public QName QName { get; }

        public override string ToString() => $"{QName}";
    }

    public abstract class SAtom : NodeBase { }

    public class SExpression : SAtom
    {
        public SExpression(SSymbol symbol, SAtoms atoms)
        {
            Symbol = symbol;
            Atoms = atoms;
        }

        public SSymbol Symbol { get; }
        public SAtoms Atoms { get; }
    }

    public class SAtoms : ListOf<SAtom>
    {
        public SAtoms(IEnumerable<SAtom> items) : base(items)
        {
        }
    }

    public class SName : SAtom
    {
        public SName(QName name)
        {
            Name = name;
        }

        public QName Name { get; }
    }

    public class SNumber : SAtom, Leaf
    {
        public SNumber(Token token, bool minus)
        {
            Token = token;
            Minus = minus;
        }

        public Token Token { get; }
        public bool Minus { get; }

        public string Text
        {
            get
            {
                var sign = Minus ? "-" : "";
                return $"{sign}{Token.Text}";
            }
        }
    }

    public class SSymbol : SAtom, Leaf
    {
        public SSymbol(IReadOnlyList<Name> names)
        {
            Names = names;
        }

        public IReadOnlyList<Name> Names { get; }

        public string Text => string.Join(".", Names.Select(n => n.Text));
    }

    public class OpNode : NodeBase
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