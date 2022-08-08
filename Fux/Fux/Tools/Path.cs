using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Fux.Tools
{
    public class Path
    {
        public Path(string text)
        {
            Text = text.Replace("\\", "/");
        }


        public static implicit operator string(Path path) => path.Text;
        public static implicit operator Path(string text) => new Path(text);

        public static Path operator / (Path upper, Path lower)
        {
            return upper.Combine(lower);
        }

        public string Text { get; }

        public Path Combine(params string[] components)
        {
            return new Path(IO.Path.Combine(Text, IO.Path.Combine(components)));
        }

        public Path Stem => new(IO.Path.GetDirectoryName(Text) + "/" + IO.Path.GetFileNameWithoutExtension(Text));
        public Path Directory => new(IO.Path.GetDirectoryName(Text)!);

        public bool FileExists => IO.File.Exists(Text);

        public string ReadText()
        {
            return IO.File.ReadAllText(Text, Encoding.UTF8);
        }

        public IO.TextWriter Writer()
        {
            Assert(IO.Path.IsPathRooted(Text));
            IO.Directory.CreateDirectory(IO.Path.GetDirectoryName(Text)!);
            return IO.File.CreateText(Text);
        }

        public override string ToString() => Text;
    }
}
