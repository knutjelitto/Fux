using System.Reflection;

using Fux.Tree;

using SType = System.Type;

namespace Fux.Reports
{
    public class TreeReflector
    {
        private readonly Dictionary<SType, TreeObject> index = new();

        public TreeObject this[Node node] => Get(node);

        public void Walk(Node node, Action<Node> top, Action<Node?, SType> child)
        {
            top(node);
            var obj = Get(node);

            foreach (var (n, t) in obj.Children(node))
            {
                child(n, t);
            }
        }

        public TreeObject Get(Node node)
        {
            return Get(node.GetType());
        }

        public TreeObject Get<T>()
            where T : Node
        {
            return Get(typeof(T));
        }

        public TreeObject Get(SType type)
        {
            if (!index.TryGetValue(type, out var treeObject))
            {
                treeObject = new TreeObject(this, type);
                index.Add(type, treeObject);
            }
            return treeObject;
        }

        public virtual void Leaf(Node node)
        {
        }

        public virtual void Many(IEnumerable<Node> node)
        {
        }
    }

    public class TreeObject
    {
        public TreeObject(TreeReflector reflector, SType type)
        {
            Assert(typeof(Node).IsAssignableFrom(type));

            Reflector = reflector;
            Type = type;

            if (typeof(IEnumerable<Node>).IsAssignableFrom(type))
            {
                Assert(Count == 0);

                Children = node =>
                {
                    return ((IEnumerable<Node?>)node).Select(n => (n, n!.GetType()));
                };
            }
            else
            {
                var props = new List<PropertyInfo>();
                var getters = new List<Func<Node, (Node?, SType)>>();
                foreach (var propInfo in type.GetProperties(BindingFlags.Instance | BindingFlags.Public | BindingFlags.GetProperty))
                {
                    if (typeof(Node).IsAssignableFrom(propInfo.PropertyType))
                    {
                        props.Add(propInfo);
                        getters.Add(node => ((Node?)propInfo.GetValue(node), propInfo.PropertyType));

                    }
                }
                Count = props.Count;

                Children = node =>
                {
                    return getters.Select(getter => getter(node));
                };

                if (Count == 0)
                {
                    Assert(typeof(Leaf).IsAssignableFrom(type));
                }
            }
        }

        public Func<Node, IEnumerable<(Node?, SType)>> Children { get; }

        public TreeReflector Reflector { get; }
        public SType Type { get; }
        public int Count { get; }
    }
}
