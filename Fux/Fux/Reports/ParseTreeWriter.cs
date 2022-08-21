using Fux.Parsing;
using Fux.Tree;

namespace Fux.Reports
{
    public class ParseTreeWriter
    {
        private readonly Writer writer;
        private readonly Document document;
        private readonly TreeReflector reflector;

        public static void Write(Writer writer, Document document)
        {
            new ParseTreeWriter(writer, document).Write();
        }

        private ParseTreeWriter(Writer writer, Document document)
        {
            this.writer = writer;
            this.document = document;
            reflector = new TreeReflector();
        }

        private string Front(System.Type type)
        {
            return $"|- {type.Name}";
        }

        private void Write()
        {
            Walk(document);
            void Walk(Node node)
            {
                reflector.Walk(
                    node,
                    n =>
                    {
                        if (n is Leaf leaf)
                        {
                            writer.WriteLine($"{Front(leaf.GetType())} {leaf.Text}");
                        }
                        else
                        {
                            writer.WriteLine($"{Front(n.GetType())}");
                        }
                    },
                    (n, t) =>
                    {
                        writer.Indent(() =>
                        {
                            if (n is null)
                            {
                                writer.WriteLine($"{Front(t)} (NULL)");
                            }
                            else
                            {
                                Walk(n);    
                            }
                        });
                    });
            }
        }
    }
}
