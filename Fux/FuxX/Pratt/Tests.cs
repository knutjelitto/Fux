namespace FuxX.Pratt;

public static class Tests
{
    private static int _passed = 0;
    private static int _failed = 0;

    public static void Run()
    {
        // Function call.
        Test("a()", "a()");
        Test("a(b)", "a(b)");
        Test("a(b, c)", "a(b, c)");
        Test("a(b)(c)", "a(b)(c)");
        Test("a(b) + c(d)", "(a(b) + c(d))");
        Test("a(b ? c : d, e + f)", "a((b ? c : d), (e + f))");

        // Unary binding power.
        Test("~!-+a", "(~(!(-(+a))))");
        Test("a!!!", "(((a!)!)!)");

        // Unary and binary binding power.
        Test("-a * b", "((-a) * b)");
        Test("!a + b", "((!a) + b)");
        Test("~a ^ b", "((~a) ^ b)");
        Test("-a!", "(-(a!))");
        Test("!a!", "(!(a!))");

        // Binary binding power.
        Test("a = b + c * d ^ e - f / g", "(a = ((b + (c * (d ^ e))) - (f / g)))");

        // Binary associativity.
        Test("a = b = c", "(a = (b = c))");
        Test("a + b - c", "((a + b) - c)");
        Test("a * b / c", "((a * b) / c)");
        Test("a ^ b ^ c", "(a ^ (b ^ c))");

        // Conditional operator.
        Test("a ? b : c ? d : e", "(a ? b : (c ? d : e))");
        Test("a ? b ? c : d : e", "(a ? (b ? c : d) : e)");
        Test("a + b ? c * d : e / f", "((a + b) ? (c * d) : (e / f))");

        // Grouping.
        Test("a + (b + c) + d", "((a + (b + c)) + d)");
        Test("a ^ (b + c)", "(a ^ (b + c))");
        Test("(!a)!", "((!a)!)");

        // Show the results.
        if (_failed != 0)
        {
            Console.WriteLine("----");
        }

        Console.WriteLine("Passed: " + _passed);
        Console.WriteLine("Failed: " + _failed);
    }

    public static void Test(string source, string expected)
    {
        var lexer = new LexerOriginal(source);
        var parser = new BantamParser(lexer);

        try
        {
            var result = parser.ParseExpression();
            var builder = new StringBuilder();
            result.Print(builder);
            var actual = builder.ToString();

            if (expected.Equals(actual))
            {
                _passed++;
            }
            else
            {
                _failed++;
                Console.WriteLine("[FAIL] Source: " + source);
                Console.WriteLine("     Expected: " + expected);
                Console.WriteLine("       Actual: " + actual);
            }
        }
        catch (ParseException ex)
        {
            _failed++;
            Console.WriteLine("[FAIL] Source: " + source);
            Console.WriteLine("     Expected: " + expected);
            Console.WriteLine("        Error: " + ex.Message);
        }
    }
}
