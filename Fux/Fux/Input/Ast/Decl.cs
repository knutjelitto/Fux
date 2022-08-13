using Fux.Building;

#pragma warning disable IDE1006 // Naming Styles

namespace Fux.Input.Ast;

public interface NamedDecl : Decl
{
    Identifier Name { get; }
    Module MyModule { get; }
}

public interface Decl : Node
{
    public abstract class DeclImpl : NodeImpl, Decl
    {
        public DeclImpl(Module myModule) => MyModule = myModule;
        public Module MyModule { get; }
    }

    public abstract class NamedDeclImpl : DeclImpl, NamedDecl
    {
        protected NamedDeclImpl(Module module, Identifier name)
            : base(module) => Name = name;

        public Identifier Name { get; }
    }

    public sealed class Header : NamedDeclImpl
    {
        public Header(Module module, Identifier name, bool isEffect, bool isPort, IEnumerable<Var> where, Exposing? exposing)
            : base(module, name)
        {
            IsEffect = isEffect;
            IsPort = isPort;
            Where = where.ToArray();
            Exposing = exposing;
        }

        public bool IsEffect { get; }
        public bool IsPort { get; }
        public IReadOnlyList<Var> Where { get; }
        public Exposing? Exposing { get; }

        public override string ToString()
        {
            var effect = IsEffect ? "effect " : "";
            var port = IsPort ? "port " : "";
            var where = Where.Count > 0 ? $" where {{ {string.Join(", ", Where)} }}" : "";
            var exposing = Exposing == null ? "" : $" {Exposing}";
            return $"{effect}{port}module {Name}{where}{exposing}";
        }

        public override void PP(Writer writer)
        {
            if (IsEffect)
            {
                writer.Write("effect ");
            }
            writer.Write($"module {Name}");
            if (Where.Count > 0)
            {
                writer.Write($" where {{ {string.Join(", ", Where)} }}");
            }
            if (Exposing != null)
            {
                writer.Write(" ");
                Exposing.PP(writer);
                if (writer.LinePending)
                {
                    writer.WriteLine();
                }
            }
        }
    }

    public sealed class Var : NamedDeclImpl
    {
        public Var(Module module, Identifier name, Parameters parameters, Expr expression)
            : base(module, name)
        {
            Parameters = parameters;
            Expression = expression;

            Collector.Instance.VarPattern.Add(parameters);
        }

        public Parameters Parameters { get; }
        public Expr Expression { get; }
        public Type? Type { get; set; }

        public VarScope Scope { get; } = new VarScope();

        public override string ToString()
        {
            var parameters = Parameters.Count == 0 ? "" : $" {string.Join(' ', Parameters)}";
            return $"{Name}{parameters} {Lex.Assign} {Expression}";
        }

        public override void PP(Writer writer)
        {
            var parameters = Parameters.Count == 0 ? "" : $" {string.Join(' ', Parameters)}";
            writer.Write($"{Name}{parameters} {Lex.Assign}");
            if (writer.Indentation == 0)
            {
                writer.WriteLine();
                writer.Indent(() => Expression.PP(writer));
            }
            else
            {
                writer.Write(" ");
                Expression.PP(writer);
            }
        }
    }

    public sealed class Import : NamedDeclImpl
    {
        public Import(Module module, Identifier name, Identifier? alias, Exposing? exposing)
            : base(module, name)
        {
            Alias = alias;
            Exposing = exposing;
        }

        public Identifier? Alias { get; set; }
        public Exposing? Exposing { get; }

        public override string ToString()
        {
            var alias = Alias == null ? "" : $" as {Alias}";
            var exposing = Exposing == null ? "" : $" {Exposing}";

            return $"import {Name}{alias}{exposing}";
        }

        public override void PP(Writer writer)
        {
            writer.Write($"import {Name}");
            if (Alias != null)
            {
                writer.Write($" alias {Alias}");
            }
            if (Exposing != null)
            {
                writer.Write($" {Exposing}");
            }
            writer.WriteLine();
        }
    }

    public sealed class Alias : NamedDeclImpl
    {
        public Alias(Module module, Identifier name, TypeParameterList parameters, Type declaration)
            : base(module, name)
        {
            Parameters = parameters;
            Declaration = declaration;
        }

        public TypeParameterList Parameters { get; }
        public Type Declaration { get; set; }
        public TypeScope Scope { get; } = new();

        public override string ToString()
        {
            var parameters = Parameters.Count > 0 ? $" {string.Join(' ', Parameters)}" : "";
            return $"type alias {Name}{parameters} = {Declaration}";
        }

        public override void PP(Writer writer) => writer.WriteLine($"{this}");
    }

    public sealed class Infix : NamedDeclImpl
    {
        public Infix(Module module, InfixAssoc assoc, InfixPower power, Identifier op, Identifier expression)
            : base(module, op)
        {
            Assoc = assoc;
            Precedence = power;
            Expression = expression;
        }

        public InfixAssoc Assoc { get; }
        public InfixPower Precedence { get; }
        public Identifier Expression { get; }
        public int Power => Precedence.Value;

        public override string ToString() => $"infix {Assoc} {Precedence} {Name} = {Expression}";

        public override void PP(Writer writer) => writer.WriteLine($"{this}");
    }

    public sealed class Native : DeclImpl
    {
        public Native(Module module, Identifier importName, Identifier name)
            : base(module)
        {
            ImportName = importName;
            Name = name;
            FullName = new Identifier(ImportName.Concat(Name).ToArray());
        }

        public Identifier ImportName { get; }
        public Identifier Name { get; }
        public Type? Type { get; set; } = null;
        public Identifier FullName { get; }
        public string FullText => $"{FullName}";

        public override string ToString() => $"{ImportName}.{Name}";

        public override void PP(Writer writer)
        {
            var type = Type == null ? "<???>" : $"{Type}";
            writer.Write($"{ImportName}.{Name} : {type}");
        }
    }

    public sealed class TypeAnnotation : NamedDeclImpl
    {
        public TypeAnnotation(Module module, Identifier name, Type type)
            : base(module, name.SingleLowerOrOp()) => Type = type;

        public Type Type { get; set; }

        public override string ToString() => Protected($"{Name} {Lex.Colon} {Type}");

        public override void PP(Writer writer)
        {
            writer.Write($"{Name} {Lex.Colon} ");
            Type.PP(writer);
        }
    }

    public sealed class TypeParameter : NamedDeclImpl
    {
        public TypeParameter(Module module, Identifier name)
            : base(module, name.SingleLower())
        {
        }

        public string Text => Name.Text;

        public override string ToString() => $"{Name}";
    }
    public sealed class TypeParameterList : ListOf<TypeParameter>
    {
        public TypeParameterList(IEnumerable<TypeParameter> items)
            : base(items) => Assert(this.All(p => p.Name.IsSingleLower));

        public TypeParameterList(params TypeParameter[] items)
            : this(items.AsEnumerable())
        {
        }

        public override string ToString() => string.Join(" ", this);
    }

    public sealed class Ctor : NamedDeclImpl
    {
        public Ctor(Custom custom, Module module, Identifier name, List<Type> arguments)
            : base(module, name)
        {
            Assert(name.IsMultiUpper);

            Custom = custom;
            Arguments = arguments;
        }

        public Custom Custom { get; }
        public List<Type> Arguments { get; }

        public override void PP(Writer writer) => writer.Write(ToString());

        public override string ToString() => Protected($"{Name}{Arguments.SpaceJoin()}");
    }

    public sealed class Custom : NamedDeclImpl
    {
        public Custom(Module module, Identifier name, TypeParameterList parameters)
            : base(module, name)
        {
            Parameters = parameters;
            Ctors = new CtorList();
        }

        public TypeParameterList Parameters { get; }
        public CtorList Ctors { get; }
        public TypeScope Scope { get; } = new();

        public override string ToString()
        {
            var parameters = Parameters.Count == 0 ? "" : $" {Parameters}";
            return $"{Lex.KwType} {Name}{parameters} = {Ctors}";
        }

        public override void PP(Writer writer)
        {
            var parameters = Parameters.Count > 0 ? $" {string.Join(' ', Parameters)}" : "";
            if (Ctors.Count == 1)
            {
                writer.WriteLine($"type {Name}{parameters} = {Ctors[0]}");
            }
            else
            {
                writer.WriteLine($"type {Name}{parameters}");
                writer.Indent(() =>
                {
                    var prefix = "= ";
                    foreach (var ctor in Ctors)
                    {
                        writer.Write(prefix);
                        prefix = "| ";
                        writer.WriteLine($"{ctor}");
                    }
                });
            }
        }
    }

    public sealed class LetAssign : DeclImpl
    {
        public LetAssign(Module module, Pattern pattern, Expr expression)
            : base(module)
        {
            Pattern = pattern;
            Expression = expression;

            Collector.Instance.LetPattern.Add(pattern);
        }

        public Pattern Pattern { get; }
        public Expr Expression { get; }
        public LetScope Scope { get; } = new();

        public override string ToString() => $"{Pattern} {Lex.Assign} {Expression}";

        public override void PP(Writer writer)
        {
            writer.Write($"{Pattern} {Lex.Assign} ");
            Expression.PP(writer);
            writer.EndLine();
        }
    }

    public sealed class Parameter : DeclImpl
    {
        public Parameter(Module module, Pattern pattern)
            : base(module) => Pattern = pattern;

        public Pattern Pattern { get; set; }

        public override string ToString() => $"{Pattern}";

        public override void PP(Writer writer) => writer.Write(ToString());
    }

    public class ClassInstance : Decl.DeclImpl
    {
        public ClassInstance(Module module, Identifier className, Type type, List<Var> vars)
            : base(module)
        {
            ClassName = className;
            Type = type;
            Vars = vars;
        }

        public Identifier ClassName { get; }
        public Type Type { get; }
        public List<Var> Vars { get; }

        public override void PP(Writer writer)
        {
            writer.WriteLine($"{Lex.KwInstance} {ClassName} {Type}");
            writer.Indent(() =>
            {
                foreach (var var in Vars)
                {
                    var.PP(writer);
                    writer.EndLine();
                }
            });
        }
    }

    public class TypeClass : Decl.NamedDeclImpl
    {
        public TypeClass(Module module, Identifier name, Decl.TypeParameterList parameters)
            : base(module, name) => Parameters = parameters;

        public Decl.TypeParameterList Parameters { get; }
        public List<SuperClass> Supers { get; } = new List<SuperClass>();
        public List<TypeAnnotation> Members { get; } = new List<TypeAnnotation>();

        public TypeScope Scope { get; } = new();

        public override void PP(Writer writer)
        {
            var supers = Supers.Count == 0 ? "" : $" : {string.Join(", ", Supers)}";
            writer.WriteLine($"{Lex.KwClass} {Name}{Parameters.Join(" ")}{supers}");
            writer.Indent(() =>
            {
                foreach (var member in Members)
                {
                    member.PP(writer);
                    writer.EndLine();
                }
            });
        }
    }

    public class SuperClass : Node.NodeImpl
    {
        public SuperClass(TypeClass typeClass, Module module, Identifier name, List<Type> arguments)
        {
            TypeClass = typeClass;
            Module = module;
            Name = name;
            Arguments = arguments;
        }

        public TypeClass TypeClass { get; }
        public Module Module { get; }
        public Identifier Name { get; }
        public List<Type> Arguments { get; }

        public override string ToString()
        {
            var arguments = Arguments.Count == 0 ? "" : $" {string.Join(" ", Arguments)}";
            return $"{Name}{arguments}";
        }
    }
}
