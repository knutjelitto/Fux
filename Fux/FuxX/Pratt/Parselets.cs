namespace FuxX.Pratt;

/// <summary>
/// One of the two parselet interfaces used by the Pratt parser. An
/// <see cref="IInfixParselet"/> is associated with a token that appears in the
/// middle of the expression it parses. Its Parse() method will be called after the
/// left-hand side has been parsed, and it in turn is responsible for parsing
/// everything that comes after the token.This is also used for postfix expressions,
/// in which case it simply doesn't consume any more tokens in its Parse() call.
/// See <see cref="IPrefixParselet"/>.
/// </summary>
public interface IInfixParselet
{
    Expression Parse(ParserOriginal parser, Expression left, TokenOriginal token);
    int GetBindingPower();
}

/// <summary>
/// One of the two interfaces used by the Pratt parser. <see cref="IPrefixParselet"/> 
/// is associated with a token that appears at the beginning of an expression. Its Parse()
/// method will be called with the consumed leading token, and the parselet is responsible
/// for parsing anything that comes after that token. This interface is also used for
/// single-token expressions like variables, in which case parse() simply doesn't consume
/// any more tokens.
/// 
/// See <see cref="IInfixParselet"/>.
/// </summary>
public interface IPrefixParselet
{
    Expression Parse(ParserOriginal parser, TokenOriginal token);
}

/// <summary>
/// Parses assignment expressions like "a = b". The left side of an assignment
/// expression must be a simple name like "a", and expressions are
/// right-associative. (In other words, "a = b = c" is parsed as "a = (b = c)").
/// </summary>
public class AssignParselet : IInfixParselet
{
    public Expression Parse(ParserOriginal parser, Expression left, TokenOriginal token)
    {
        var right = parser.ParseExpression(BindingPower.Assignment - 1);

        return left is not NameExpression name
            ? throw new ParseException("The left-hand side of an assignment must be a name.")
            : (Expression)new AssignExpression(name.Name, right);
    }

    public int GetBindingPower() => BindingPower.Assignment;
}

/// <summary>
/// Generic infix parselet for a binary arithmetic operator. The only
/// difference when parsing, "+", "-", "*", "/", and "^" is binding power
/// and associativity, so we can use a single parselet class for all of those.
/// </summary>
public class BinaryOperatorParselet : IInfixParselet
{
    private readonly int _bindingPower;
    private readonly bool _isRight;

    public BinaryOperatorParselet(int bindingPower, bool isRight)
    {
        _bindingPower = bindingPower;
        _isRight = isRight;
    }

    public Expression Parse(ParserOriginal parser, Expression left, TokenOriginal token)
    {
        // To handle right-associative operators like "^", we allow a slightly
        // lower binding power when parsing the right-hand side. This will let a
        // parselet with the same binding power appear on the right, which will then
        // take *this* parselet's result as its left-hand argument.
        var right = parser.ParseExpression(_bindingPower - (_isRight ? 1 : 0));

        return new OperatorExpression(left, token.Type, right);
    }

    public int GetBindingPower() => _bindingPower;
}

/// <summary>
/// Parselet to parse a function call like "a(b, c, d)".
/// </summary>
public class CallParselet : IInfixParselet
{
    public Expression Parse(ParserOriginal parser, Expression left, TokenOriginal token)
    {
        // Parse the comma-separated arguments until we hit, ')'.
        var args = new List<Expression>();

        // There may be no arguments at all.
        if (!parser.Match(TokenType.RightParen))
        {
            do
            {
                args.Add(parser.ParseExpression());
            }
            while (parser.Match(TokenType.Comma));
            _ = parser.Consume(TokenType.RightParen);
        }

        return new CallExpression(left, args);
    }

    public int GetBindingPower() => BindingPower.Call;
}

/// <summary>
/// Parselet for the condition or "ternary" operator, like "a ? b : c".
/// </summary>
public class ConditionalParselet : IInfixParselet
{
    public Expression Parse(ParserOriginal parser, Expression left, TokenOriginal token)
    {
        var thenArm = parser.ParseExpression();
        _ = parser.Consume(TokenType.Colon);
        var elseArm = parser.ParseExpression(BindingPower.Conditional - 1);

        return new ConditionalExpression(left, thenArm, elseArm);
    }

    public int GetBindingPower() => BindingPower.Conditional;
}

/// <summary>
/// Parses parentheses used to group an expression, like "(b + c)".
/// </summary>
public class GroupParselet : IPrefixParselet
{
    public Expression Parse(ParserOriginal parser, TokenOriginal token)
    {
        var expression = parser.ParseExpression();
        _ = parser.Consume(TokenType.RightParen);
        return expression;
    }
}

/// <summary>
/// Simple parselet for a named variable like "abc".
/// </summary>
public class NameParselet : IPrefixParselet
{
    public Expression Parse(ParserOriginal parser, TokenOriginal token) => new NameExpression(token.Text);
}

/// <summary>
/// Generic infix parselet for an unary arithmetic operator. Parses
/// postfix unary "?" expressions.
/// </summary>
public class PostfixOperatorParselet : IInfixParselet
{
    private readonly int _bindingPower;

    public PostfixOperatorParselet(int bindingPower) => _bindingPower = bindingPower;

    public Expression Parse(ParserOriginal parser, Expression left, TokenOriginal token) => new PostfixExpression(left, token.Type);

    public int GetBindingPower() => _bindingPower;
}

/// <summary>
/// Generic prefix parselet for an unary arithmetic operator. Parses prefix unary "-", "+", "~", and "!" expressions.
/// </summary>
public class PrefixOperatorParselet : IPrefixParselet
{
    private readonly int _bindingPower;

    public PrefixOperatorParselet(int bindingPower) => _bindingPower = bindingPower;

    public Expression Parse(ParserOriginal parser, TokenOriginal token)
    {
        // To handle right-associative operators like "^", we allow a slightly
        // lower binding power when parsing the right-hand side. This will let a
        // parselet with the same bindingPower appear on the right, which will then
        // take *this* parselet's result as its left-hand argument.
        var right = parser.ParseExpression(_bindingPower);

        return new PrefixExpression(token.Type, right);
    }

    public int GetBindingPower() => _bindingPower;
}
