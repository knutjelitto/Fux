using Fux.Parsing;

namespace Fux.Tree
{
    public interface Node
    {
        TokenSpan? Span { get; set; }
    }

    public interface Leaf : Node
    {
        string Text { get; }
    }

    public class NodeBase : Node
    {
        public TokenSpan? Span { get; set; }
    }
}