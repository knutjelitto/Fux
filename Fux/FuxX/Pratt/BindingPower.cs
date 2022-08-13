namespace FuxX.Pratt;

/// <summary>
/// Defines the different binding power levels used by the prefix/infix parsers.
/// These determine how a series of infix expressions will be grouped. For example,
/// "a + b * c - d" will be parsed as "(a + (b * c)) - d" because "*" has higher
/// binding power than "+" and "-". Here, bigger numbers mean higher binding power.
/// 
/// Binding power implements operator precedence, which is a more common term, but
/// given how Pratt parsing works, I think binding power is more apropos.
/// </summary>
public static class BindingPower
{
    // Ordered in increasing binding power.
    public static readonly int Assignment = 10;
    public static readonly int Conditional = 20;
    public static readonly int Sum = 30;
    public static readonly int Product = 40;
    public static readonly int Exponent = 50;
    public static readonly int Prefix = 60;
    public static readonly int PostFix = 70;
    public static readonly int Call = 80;
}
