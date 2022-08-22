namespace Fux.Tools
{
    public sealed class Disposable : IDisposable
    {
        private Action? onDispose;

        public Disposable(Action onDispose)
        {
            this.onDispose = onDispose;
        }

        public void Dispose()
        {
            if (onDispose is not null)
            {
                onDispose();
                onDispose = null;
            }
        }
    }
}
