﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

#pragma warning disable CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.

namespace Fux.Files
{
    public class PackageConfig
    {
        public string Name { get; set; }
        public string Summary { get; set; }
        public List<string> Sources { get; set; } 
    }
}
