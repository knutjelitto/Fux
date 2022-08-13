namespace Fux.Input.Ast;

public static class FormatHelpers
{
    public static string Join(this IReadOnlyList<Node> nodes, string joiner) => nodes.Count == 0 ? "" : $"{joiner}{string.Join(joiner, nodes)}";

    public static string SpaceJoin(this IReadOnlyList<Node> nodes) => nodes.Join(" ");

    public static string OptJoin(this Node left, string joiner, Node? right) => right == null ? $"{left}" : $"{left}{joiner}{right}";
}
