namespace Fux.Tools;

public class IdentityEquality<TKey> : IEqualityComparer<TKey>
    where TKey : class
{
    public bool Equals(TKey? x, TKey? y) => ReferenceEquals(x, y);

    public int GetHashCode(TKey obj) => RuntimeHelpers.GetHashCode(obj);
}
