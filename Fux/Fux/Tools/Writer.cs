namespace Fux.Tools;

public class Writer : IDisposable
{
    private readonly IO.TextWriter sink;
    private readonly bool owns;
    private bool indentPending = true;
    private readonly string prefix;

    public Writer(IO.TextWriter sink, int? indent = null, bool owns = false)
    {
        this.sink = sink;
        this.owns = owns;
        prefix = new string(' ', indent ?? 4);

        Filename = "<unknown>";
    }

    public Writer(int? indent = null)
        : this(new IO.StringWriter(), indent, true)
    {
    }

    public Writer(string filename, int? indent = null)
        : this(new IO.StreamWriter(filename), indent, true) => Filename = filename;

    public int IndentationLevel { get; private set; }

    public int Indentation => prefix.Length * IndentationLevel;

    public bool LinePending { get; private set; } = false;

    public string Filename { get; }

    public static Writer Console(int? indent = 4) => new(System.Console.Out, indent);

    public static Writer Null(int? indent = 4) => new(IO.TextWriter.Null, indent);

    public void WriteLine()
    {
        sink.WriteLine();
        indentPending = true;
        LinePending = false;
    }

    public void WriteLine(string text)
    {
        Write(text);
        WriteLine();
    }

    public void EndLine()
    {
        if (LinePending)
        {
            WriteLine();
        }
    }

    public void Write(string text)
    {
        if (indentPending)
        {
            for (var i = 0; i < IndentationLevel; i++)
            {
                sink.Write(prefix);
            }
            indentPending = false;
        }

        sink.Write(text);
        LinePending = true;
    }

    public void Plus() => IndentationLevel += 1;

    public void Minus() =>
        //level = Math.Max(0, level - 1);
        IndentationLevel -= 1;

    public IDisposable Indent() => new Undenter(this);

    public void Indent(Action content)
    {
        using (Indent())
        {
            content();
        }
    }

    public override string ToString() => sink is IO.StringWriter stringWriter ? stringWriter.ToString() : "-content-lost-in-outer-space-";

    public void Clear()
    {
        if (sink is IO.StringWriter stringWriter)
        {
            _ = stringWriter.GetStringBuilder().Clear();
        }
    }

    public void Dispose()
    {
        if (owns && sink != null)
        {
            sink.Dispose();
        }

        GC.SuppressFinalize(this);
    }

    private class Undenter : IDisposable
    {
        private readonly Writer writer;

        public Undenter(Writer writer)
        {
            this.writer = writer;
            writer.Plus();
        }
        public void Dispose() => writer.Minus();
    }
}
