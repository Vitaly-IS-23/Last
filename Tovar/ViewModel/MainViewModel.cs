using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tovar.Model;
using Tovar.Model.Entities;

namespace Tovar.ViewModel
{
    public class MainViewModel : BaseViewModel
    {
        public MainViewModel() { }

        public MainViewModel(object userObject)
        {
            Users user = (userObject as Users);
        }
    }
}
