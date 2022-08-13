namespace Fux;

public class Runner
{
    protected static void WaitForKey()
    {
        Console.Write("any key ...");
        _ = Console.ReadKey(true);
        Console.WriteLine();
    }
}
