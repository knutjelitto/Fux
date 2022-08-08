using Fux;
using Fux.Files;
using Fux.Input;
using Fux.Tools;

namespace App
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var top = new Root();

            var src = top.Sub("Src").EnshureFolder();
            var tmp = top.Sub("Tmp").EnshureFolder();

            Console.WriteLine($"top: {top}");
            Console.WriteLine($"src: {src}");
            Console.WriteLine($"tmp: {tmp}");

            foreach (var packageFile in src.EnumerateFiles(PackageFile.File))
            {
                var package = new PackageFile(src, packageFile.Directory);

                package.Dump(Writer.Console());
            }

            WaitKey();
        }

        static void Lexx(IO.TextWriter writer, Source source)
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

            Console.WriteLine($"  .. {elements.Count} elements");

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