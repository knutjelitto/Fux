namespace Fux.Building
{
    public sealed class Collector
    {
        public static readonly Collector Instance = new();

        private Collector() { }

        public int NumberOfLines = 0;

        public int NumberOfExceptions = 0;

        private List<A.Decl> Declarations { get; } = new();

        public List<A.Expr> VarPattern { get; } = new();
        public List<A.Pattern> LetPattern { get; } = new();
        public List<A.Pattern> MatchPattern { get; } = new();

        public Stopwatch ScanTime { get; } = new();
        public Stopwatch ParseTime { get; } = new();
        public Stopwatch DeclareTime { get; } = new();
        public Stopwatch ExposeTime { get; } = new();
        public Stopwatch ImportTime { get; } = new();
        public Stopwatch ResolveTime { get; } = new();
        public Stopwatch TypeTime { get; } = new();

        public void Add(A.Decl declaration)
        {
            Declarations.Add(declaration);
        }

        public void Write()
        {
            Write("all-decl-header.text", Declarations.OfType<A.Decl.Header>());
            WriteCompact("all-decl-import.text", Declarations.OfType<A.Decl.Import>(), writePP);
            WriteCompact("all-decl-type.text", Declarations.OfType<A.Decl.Custom>(), writePP);
            Write("all-decl-alias.text", Declarations.OfType<A.Decl.Alias>());
            WriteCompact("all-decl-infix.text", Declarations.OfType<A.Decl.Infix>(), writePP);
            WriteCompact("all-decl-var.text", Declarations.OfType<A.Decl.Var>(), writeStr);
            WriteCompact("all-decl-hint.text", Declarations.OfType<A.Decl.TypeAnnotation>(), writeStr);
            WriteCompact("all-decl-native.text", Declarations.OfType<A.Decl.Native>(), writePP);
            WriteCompact("all-decl-class.text", Declarations.OfType<A.Decl.TypeClass>(), writeLinePP);
            WriteCompact("all-decl-instance.text", Declarations.OfType<A.Decl.ClassInstance>(), writeLinePP);

            WriteVarPatterns("all-pattern-var.text");
            WriteMatchPatterns("all-pattern-match.text");
            WriteLetPatterns("all-pattern-let.text");

            void WriteVarPatterns(string name)
            {
                WriteAll(name, StringsFrom(VarPattern));
            }

            void WriteMatchPatterns(string name)
            {
                WriteAll(name, StringsFrom(MatchPattern));
            }

            void WriteLetPatterns(string name)
            {
                WriteAll(name, StringsFrom(LetPattern));
            }

            IEnumerable<string> StringsFrom(IEnumerable<A.Node> exprs)
            {
                return exprs
                    .Select(p => p.ToString()!)
                    .Where(s => !string.IsNullOrWhiteSpace(s))
                    .OrderBy(s => s)
                    .Distinct()
                    .ToList();
            }

            void WriteAll(string name, IEnumerable<string?> items)
            {
                using (var writer = name.Writer())
                {
                    foreach (var item in items.Where(i => i is not null))
                    {
                        writer.WriteLine($"{item}");
                    }
                }
            }

            void Write<T>(string name, IEnumerable<T> expressions)
                where T : A.Decl
            {
                using (var writer = name.Writer())
                {
                    foreach (var type in expressions)
                    {
                        var location = type.Location;
                        writer.WriteLine($"{{- {location.Name}({location.Line},{location.Column}) -}}");

                        writer.Indent(() =>
                        {
                            writer.WriteLine();
                            type.PP(writer);
                            if (writer.LinePending)
                            {
                                writer.WriteLine();
                            }
                            writer.WriteLine();
                        });
                    }
                }
            }

            void writePP(Writer writer, A.Decl expr)
            {
                expr.PP(writer);
                writer.EndLine();
            }

            void writeLinePP(Writer writer, A.Decl expr)
            {
                expr.PP(writer);
                writer.EndLine();
                writer.WriteLine();
            }

            void writeStr(Writer writer, A.Decl expr)
            {
                writer.WriteLine($"{expr}");
            }

            void WriteCompact(string name, IEnumerable<A.Decl> declarations, Action<Writer, A.Decl> write)
            {
                using (var writer = name.Writer())
                {
                    var loc = string.Empty;
                    foreach (var declaration in declarations)
                    {
                        var newLoc = declaration.Location.Name;
                        if (newLoc != loc)
                        {
                            if (loc != string.Empty)
                            {
                                writer.WriteLine();
                            }
                            loc = newLoc;
                            writer.WriteLine($"{{- {loc} -}}");
                            writer.WriteLine();
                        }

                        writer.Indent(() =>
                        {
                            write(writer, declaration);
                        });
                    }
                }
            }
        }
    }
}
