using Fux.Building.Phases;

#pragma warning disable IDE0079 // Remove unnecessary suppression
#pragma warning disable IDE0059 // Unnecessary assignment of a value

namespace Fux.Building;

public sealed class Builder
{
    public Builder() => Ambience = new Ambience(new ErrorBag())
    {
        Config = new Config
        {
            WriteTheTyping = true,
        }
    };

    public ErrorBag Errors => Ambience.Errors;
    public Ambience Ambience { get; }

    public void Build(List<Package> packages)
    {
        const int rwidth = 5;
        const int lwidth = -rwidth;

        Terminal.ClearHome();

        var prefix = $"{"pars",lwidth}";
        Build(prefix, packages, package => new Phase2Parse(Ambience, package));
        prefix = $"{prefix}{"decl",lwidth}";
        Build(prefix, packages, package => new Phase3Declare(Ambience, package));
        prefix = $"{prefix}{"expo",lwidth}";
        Build(prefix, packages, package => new Phase4Expose(Ambience, package));
        prefix = $"{prefix}{"impo",lwidth}";
        Build(prefix, packages, package => new Phase5Import(Ambience, package));
        prefix = $"{prefix}{"reso",lwidth}";
        Build(prefix, packages, package => new Phase6Resolve(Ambience, package));
        prefix = $"{prefix}{"type",lwidth}";
        Build(prefix, packages, package => new Phase7Typing(Ambience, package));

        Terminal.Write($"{"",53}");
        Terminal.Write($"{$"{Collector.Instance.ScanTime.ElapsedMilliseconds} ",rwidth}");
        Terminal.Write($"{$"{Collector.Instance.ParseTime.ElapsedMilliseconds} ",rwidth}");
        Terminal.Write($"{$"{Collector.Instance.DeclareTime.ElapsedMilliseconds} ",rwidth}");
        Terminal.Write($"{$"{Collector.Instance.ExposeTime.ElapsedMilliseconds} ",rwidth}");
        Terminal.Write($"{$"{Collector.Instance.ImportTime.ElapsedMilliseconds} ",rwidth}");
        Terminal.Write($"{$"{Collector.Instance.ResolveTime.ElapsedMilliseconds} ",rwidth}");
        Terminal.Write($"{$"{Collector.Instance.TypeTime.ElapsedMilliseconds} ",rwidth}");
        Terminal.WriteLine("ms");

        Collector.Instance.Write();
    }

    private static void Build(string prefix, List<Package> loaded, Func<Package, Phase> phase)
    {
        Terminal.GoHome();
        var count = 0;
        foreach (var package in loaded)
        {
            var p = phase(package);
            Build(prefix, ++count, package, p);
        }
    }

    private static void Build(string prefix, int no, Package package, Phase phase)
    {
        Terminal.ClearToEol();
        Terminal.Write($"building {no,-2} {phase.Package,-40} {prefix}");

        Terminal.Write($"[");
        phase.Make();
        Terminal.WriteLine("]");
    }
}
