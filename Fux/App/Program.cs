using Fux;
using Fux.ErrorHandling;
using Fux.Files;
using Fux.Parsing;
using Fux.Tools;

namespace App;

internal class Program
{
    private static void Main(string[] args) => BringUp();

    private static void BringUp()
    {
        var top = new Root();
        Console.WriteLine($"top: {top}");
        var tmp = top.Sub("Tmp").EnshureFolder();
        Console.WriteLine($"tmp: {tmp}");
        var src = top.Sub("Lyx").EnshureFolder();
        Console.WriteLine($"src: {src}");

        var repo = new Repository(src);

        Console.WriteLine("===");
        foreach (var source in repo.Sources)
        {
            var writerPath = tmp.Sub("All") / source.Package.Path / source.Path;
            using (var writer = writerPath.Writer())
            {
                Console.WriteLine($"{source.Package} - {source}");

                try
                {
                    Lexx(writer, source);
                }
                catch (DiagnosticException diagnostics)
                {
                    Console.WriteLine();
                    Console.WriteLine("===");
                    foreach (var diagnostic in diagnostics.Diagnostics)
                    {
                        foreach (var line in diagnostic.Report())
                        {
                            Console.WriteLine($"{line}");
                        }
                    }
                    break;
                }
            }
        }

        WaitKey();
    }

    private static void Lexx(Writer writer, Source source)
    {
        const string ind = "  ";
        const string sep = $"{ind}-";

        var text = source.Text;

        Console.Write($"{ind}{text.Count,5} characters");

        var errors = new ErrorBag();
        var lexer = new Lexer(errors, text.Clone());
        var count = 0;

        while (true)
        {
            var token = lexer.GetNext();
            count++;

            if (token.Lex == Lex.EOF)
            {
                break;
            }
        }
        Console.Write($"{sep}{count,5} raw tokens");

        lexer = new Lexer(errors, text.Clone());
        var liner = new Liner(errors, lexer);

        Console.Write($"{sep}{liner.TokenCount,5} tokens");

        var elements = new List<TokenSpan>();
        while (true)
        {
            var element = liner.GetElement();
            elements.Add(element);

            if (element.Eof)
            {
                break;
            }
        }

        Console.WriteLine($"{sep}{elements.Count - 1,5} elements");

        foreach (var element in elements)
        {
            foreach (var token in element)
            {
                foreach (var white in token.Whites)
                {
                    _ = white.Text;
                    writer.Write($"{white.Text}");
                }
                writer.Write($"{token.Text}");
            }
        }

        var parser = new Parser(source, errors);

        var document = parser.Parse();
    }

    private static void WaitKey()
    {
        if (System.Diagnostics.Debugger.IsAttached)
        {
            Console.WriteLine("(almost) any key ...");
            _ = Console.ReadKey();
        }
    }
}