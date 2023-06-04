using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tovar.Model.Entities;

namespace Tovar.Core
{
    public static class CurrentUserSingleton
    {
        public static Users CurrentUser { get; set; }
    }
}
