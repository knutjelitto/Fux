using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Fux.TypeSystem.Abstract;

namespace Fux.Tree
{
    public class ListOf<T> : Node, IReadOnlyList<T>
    {
        protected readonly List<T> items;

        public ListOf(IEnumerable<T> items)
        {
            this.items = items.ToList();
        }

        public T this[int index]
        {
            get => items[index];
            set => items[index] = value;
        }

        public int Count => items.Count;
        public IEnumerator<T> GetEnumerator() => items.GetEnumerator();
        IEnumerator IEnumerable.GetEnumerator() => ((IEnumerable)items).GetEnumerator();
    }
}
