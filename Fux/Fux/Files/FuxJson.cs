using System.Text.Json;

namespace Fux.Files
{
    public class FuxJson : JsonBase
    {
        public string Type { get; protected set; } = string.Empty;

        public static FuxPackageJson From(PackageFile package, byte[] bytes)
        {
            var rootElement = GetRootElement(bytes);

            Assert(rootElement.ValueKind == JsonValueKind.Object);

            return new FuxPackageJson(package, rootElement);
        }
    }
}
