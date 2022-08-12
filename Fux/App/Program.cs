using Fux;
using Fux.Files;
using Fux.Input;

using Microsoft.Extensions.FileSystemGlobbing;
using Microsoft.Extensions.FileSystemGlobbing.Abstractions;

namespace App
{
    internal class Program
    {
        static void Main(string[] args)
        {
            BringUp();

            return;

            var top = new Root();
            Console.WriteLine($"top: {top}");

            var src = top.Sub("Src").EnshureFolder();
            Console.WriteLine($"src: {src}");

            var tmp = top.Sub("Tmp").EnshureFolder();
            Console.WriteLine($"tmp: {tmp}");

            var coreFolder = src.Sub("Core").EnshureFolder();
            Console.WriteLine($"Core: {coreFolder}");

            var repo = new PackageRepo(src);
            repo.Glob();

            var core = new PackageFile(repo, "Fux/Core");

            var matcher = new Matcher();
            foreach (var pattern in core.Json.Sources)
            {
                matcher.AddInclude(pattern);
            }

            var matches = matcher.Execute(new DirectoryInfoWrapper(new IO.DirectoryInfo(coreFolder)));

            foreach (var sourceMatch in matches.Files.Select(sm => new SourceFile(core, sm.Path)))
            {
                Console.WriteLine($"file: {sourceMatch}");
            }

            WaitKey();
        }

        static void BringUp()
        {
            var top = new Root();
            Console.WriteLine($"top: {top}");

            var src = top.Sub("Src").EnshureFolder();
            Console.WriteLine($"src: {src}");

            var tmp = top.Sub("Tmp").EnshureFolder();
            Console.WriteLine($"tmp: {tmp}");

            var coreFolder = src.Sub("Core").EnshureFolder();
            Console.WriteLine($"Core: {coreFolder}");

            var repo = new PackageRepo(src);
            repo.Glob();

            WaitKey();
        }

        static void Lexx(Writer writer, Source source)
        {
            Console.WriteLine($"  .. {source.Count} characters");

            var errors = new ErrorBag();
            var lexer = new Lexer(errors, source.Clone());
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
            Console.WriteLine($"  .. {count} raw tokens");

            lexer = new Lexer(errors, source.Clone());
            var liner = new Liner(errors, lexer);

            Console.WriteLine($"  .. {liner.TokenCount} tokens");

            var elements = new List<Tokens>();
            while (true)
            {
                var element = liner.GetElement();
                elements.Add(element);

                if (element.Eof)
                {
                    break;
                }
            }

            Console.WriteLine($"  .. {elements.Count - 1} elements");

            foreach (var element in elements)
            {
                foreach (var token in element)
                {
                    foreach (var white in token.Whites)
                    {
                        writer.Write($"{white.Text}");
                    }
                    writer.Write($"{token.Text}");
                }
            }

        }

        static void WaitKey()
        {
            if (System.Diagnostics.Debugger.IsAttached)
            {
                Console.WriteLine("(almost) any key ...");
                Console.ReadKey();
            }
        }
    }
}