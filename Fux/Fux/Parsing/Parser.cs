using Fux.Tree;

namespace Fux.Parsing;

public class Parser
{
    public Element Parse(Source unit, ErrorBag errors, Liner liner)
    {
        var element = liner.GetElement();
        var cursor = new Cursor(unit, errors, element);

        throw new NotImplementedException();
    }
}
