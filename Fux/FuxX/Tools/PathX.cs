namespace FuxX.Tools;

public class PathX
{
    public PathX(string text) => Text = text.Replace("\\", "/");
    public string Text { get; }

    public static implicit operator string(PathX path) => path.Text;
    public static implicit operator PathX(string text) => new(text);

    public static PathX operator /(PathX top, PathX bottom) => top.Combine(bottom);

    public PathX Combine(params string[] components) => new(IO.Path.Combine(Text, IO.Path.Combine(components)));

    public PathX Stem => new(IO.Path.GetDirectoryName(Text) + "/" + IO.Path.GetFileNameWithoutExtension(Text));

    public IO.TextWriter Writer()
    {
        Assert(IO.Path.IsPathRooted(Text));
        _ = IO.Directory.CreateDirectory(IO.Path.GetDirectoryName(Text)!);
        return IO.File.CreateText(Text);
    }

    public override string ToString() => Text;
}
