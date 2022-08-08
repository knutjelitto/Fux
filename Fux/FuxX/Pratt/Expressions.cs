
namespace Fux.Pratt
{
    /// <summary>
    /// Interface for all expression AST node classes.
    /// </summary>
    public interface Expression
    {
        /// <summary>
        /// Pretty-print the expression to a string.
        /// </summary>
        /// <param name="sb"></param>
        void Print(StringBuilder sb);
    }


    /// <summary>
    /// An assignment expression like "a = b"
    /// </summary>
    public class AssignExpression : Expression
    {
        private readonly string _name;
        private readonly Expression _valueExpr;

        public AssignExpression(string name, Expression valueExpr)
        {
            _name = name;
            _valueExpr = valueExpr;
        }

        public void Print(StringBuilder sb)
        {
            sb.Append('(').Append(_name).Append(" = ");
            _valueExpr.Print(sb);
            sb.Append(')');
        }
    }


    /// <summary>
    /// A function call like "a(b, c, d)".
    /// </summary>
    public class CallExpression : Expression
    {
        private Expression _functionExpr;
        private List<Expression> _argumentExprs;

        public CallExpression(Expression functionExpr, List<Expression> argumentExpressions)
        {
            _functionExpr = functionExpr;
            _argumentExprs = argumentExpressions;
        }

        public void Print(StringBuilder sb)
        {
            _functionExpr.Print(sb);
            sb.Append('(');
            for (int i = 0; i < _argumentExprs.Count; i++)
            {
                if (i > 0) sb.Append(", ");
                _argumentExprs[i].Print(sb);
            }
            sb.Append(')');
        }
    }


    /// <summary>
    /// A ternary conditional expression like "a ? b : c".
    /// </summary>
    public class ConditionalExpression : Expression
    {
        private Expression conditionExpr;
        private Expression thenExpr;
        private Expression elseExpr;

        public ConditionalExpression(Expression conditionExpr, Expression thenExpr, Expression elseExpr)
        {
            this.conditionExpr = conditionExpr;
            this.thenExpr = thenExpr;
            this.elseExpr = elseExpr;
        }

        public void Print(StringBuilder sb)
        {
            sb.Append('(');
            conditionExpr.Print(sb);
            sb.Append(" ? ");
            thenExpr.Print(sb);
            sb.Append(" : ");
            elseExpr.Print(sb);
            sb.Append(')');
        }
    }


    /// <summary>
    /// A simple variable name expression like "abc".
    /// </summary>
    public class NameExpression : Expression
    {
        public NameExpression(string name)
        {
            Name = name;
        }

        public string Name { get; }

        public void Print(StringBuilder sb)
        {
            sb.Append(Name);
        }
    }


    /// <summary>
    /// A binary arithmetic expression like "a + b" or "c ^ d".
    /// </summary>
    public class OperatorExpression : Expression
    {
        private Expression _leftExpr;
        private TokenType _operator;
        private Expression _rightExpr;

        public OperatorExpression(Expression leftExpr, TokenType op, Expression rightExpr)
        {
            _leftExpr = leftExpr;
            _operator = op;
            _rightExpr = rightExpr;
        }

        public void Print(StringBuilder sb)
        {
            sb.Append('(');
            _leftExpr.Print(sb);
            sb.Append(' ').Append(_operator.Punctuator()).Append(' ');
            _rightExpr.Print(sb);
            sb.Append(')');
        }
    }


    /// <summary>
    /// A postfix unary arithmetic expression like "a!"
    /// </summary>
    public class PostfixExpression : Expression
    {
        private Expression _leftExpr;
        private TokenType _operator;

        public PostfixExpression(Expression left, TokenType op)
        {
            _leftExpr = left;
            _operator = op;
        }

        public void Print(StringBuilder sb)
        {
            sb.Append('(');
            _leftExpr.Print(sb);
            sb.Append(_operator.Punctuator()).Append(')');
        }
    }


    /// <summary>
    /// A prefix unary arithmetic expression like "!a" or "-b".
    /// </summary>
    public class PrefixExpression : Expression
    {
        private TokenType _operator;
        private Expression _rightExpr;

        public PrefixExpression(TokenType op, Expression rightExpr)
        {
            _operator = op;
            this._rightExpr = rightExpr;
        }

        public void Print(StringBuilder sb)
        {
            sb.Append('(').Append(_operator.Punctuator());
            _rightExpr.Print(sb);
            sb.Append(')');
        }
    }
}
