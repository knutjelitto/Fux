﻿using Fux;
using Fux.Building;
using Fux.Files;
using Fux.Input;

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

            var loaded = new Loaded();

            foreach (var filePath in src.EnumerateFiles(PackageFile.File))
            {
                var file = new PackageFile(src, filePath.Directory);
                var package = new Package(file);

                package.File.Dump(Writer.Console());

                loaded.Register(file);
            }

            foreach (var package in loaded)
            {
                foreach (var module in package.Modules)
                {
                    var name = tmp / "All" / package.File.Path / module.File.Path;

                    Console.WriteLine($"{package.File.Name} / {module.File.Name}");

                    using (var writer = new Writer(name))
                    {
                        Lexx(writer, module.Source);
                    }
                }
            }

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