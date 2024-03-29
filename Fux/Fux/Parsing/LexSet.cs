﻿namespace Fux.Parsing;

public class LexSet
{
    private readonly HashSet<Lex> lexes;

    public static LexSet Empty { get; } = new LexSet();

    private LexSet(IEnumerable<Lex> lexes) => this.lexes = new HashSet<Lex>(lexes);

    private LexSet(params Lex[] lexes)
        : this(lexes.AsEnumerable())
    {
    }

    public LexSet Add(IEnumerable<Lex> lexes)
    {
        var newSet = new LexSet(this.lexes);
        foreach (var lex in lexes)
        {
            _ = newSet.lexes.Add(lex);
        }
        return newSet;
    }

    public LexSet Add(params Lex[] lexes) => Add(lexes.AsEnumerable());

    public LexSet Add(LexSet lexes) => Add(lexes.lexes);
}
