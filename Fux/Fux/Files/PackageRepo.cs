using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Microsoft.Extensions.FileSystemGlobbing;
using Microsoft.Extensions.FileSystemGlobbing.Abstractions;

namespace Fux.Files
{
    public class PackageRepo
    {
        public PackageRepo(Root root)
        {
            Root = root;
        }

        public Root Root { get; }

        public void Glob()
        {
            var matcher = new Matcher();
            matcher.AddInclude($"**/{PackageFile.PackageFileName}");

            var matches = matcher.Execute(new DirectoryInfoWrapper(new IO.DirectoryInfo(Root)));

            foreach (var match in matches.Files)
            {
                Console.WriteLine($"package: {match.Path}");
                var path = match.Path.Substring(0, match.Path.Length - PackageFile.PackageFileName.Length - 1);

                var package = new PackageFile(this, path);

                package.Glob();
            }
        }
    }
}
