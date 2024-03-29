﻿using Fux;
using Fux.ErrorHandling;
using Fux.Files;
using Fux.Parsing;
using Fux.Reports;
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
        var corePackage = top.Sub("Lyx").EnshureFolder();
        Console.WriteLine($"src: {corePackage}");

        var repo = new Repository(corePackage);

        Console.WriteLine("===");
        foreach (var source in repo.Sources)
        {
            var shadowFile = tmp.Sub("All") / source.Package.Path / source.Path;

            Console.WriteLine($"{source.Package} - {source}");

            try
            {
                Lexx(shadowFile, source);
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

        WaitKey();
    }

    private static void Lexx(Path shadow, Source source)
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

            if (element.EOF)
            {
                break;
            }
        }

        Console.WriteLine($"{sep}{elements.Count - 1,5} top-elements");

        using (var writer = shadow.Writer())
        {
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
        }

        using (var writer = (shadow + ".line").Writer())
        {
            lexer = new Lexer(errors, text.Clone());
            var upper = new LinerUpper(errors, lexer);

            do
            {
                var element = upper.GetElement();

                element.Write(writer);

                if (element.EOS)
                {
                    break;
                }
            }
            while (true);
        }

        var parser = new Parser(source, errors);

        var document = parser.Parse();

        using (var writer = (shadow + ".tree").Writer())
        {
            ParseTreeWriter.Write(writer, document);
        }
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