using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Fux.Tree;

public class FunDeclaration : Declaration
{
    public FunDeclaration(Name name, FunParameters parameters, Type result)
    {
        Name = name;
        Parameters = parameters;
        Result = result;
    }

    public Name Name { get; }
    public FunParameters Parameters { get; }
    public Type Result { get; }
}

public class FunParameters : Node
{
    public FunParameters(IReadOnlyList<FunParameter> parameters)
    {
        Parameters = parameters;
    }

    public IReadOnlyList<FunParameter> Parameters { get; }
}

public class FunParameter : Node
{
    public FunParameter(Name name, Type type)
    {
        Name = name;
        Type = type;
    }

    public Name Name { get; }
    public Type Type { get; }
}
