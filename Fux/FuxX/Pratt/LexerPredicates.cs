namespace Fux.Pratt
{
    public static class LexerPredicates
    {
        private static readonly HashSet<int> symbols = new()
        {
            '+',  '-',  '*',  '/',
            '%',  '^',  '$',  '&',
            '~',  '!',  '\\', '#',
            '=',  '.',  ':',  '?',
            '<',  '>',  '|',
        };

        public static bool IsSymbol(this int rune) => symbols.Contains(rune);
    }
}
