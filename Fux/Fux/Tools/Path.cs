namespace Fux.Tools;

public class Path
{
    public Path(string text) => Text = text.Replace("\\", "/");

    public static implicit operator string(Path path) => path.Text;
    public static implicit operator Path(string text) => new(text);

    public static Path operator /(Path upper, Path lower) => upper.Combine(lower);

    public string Text { get; }

    public Path Combine(params string[] components) => new(IO.Path.Combine(Text, IO.Path.Combine(components)));

    public Path Stem => new(IO.Path.GetDirectoryName(Text) + "/" + IO.Path.GetFileNameWithoutExtension(Text));
    public Path Directory => new(IO.Path.GetDirectoryName(Text)!);

    public bool FileExists => IO.File.Exists(Text);

    public Path EnshureDirectory()
    {
        _ = IO.Directory.CreateDirectory(Directory);

        return this;
    }

    public string ReadText() => IO.File.ReadAllText(Text, Encoding.UTF8);

    public Writer Writer()
    {
        Assert(IO.Path.IsPathRooted(Text));
        _ = IO.Directory.CreateDirectory(IO.Path.GetDirectoryName(Text)!);
        return new Writer(Text);
    }

    public override string ToString() => Text;
}
