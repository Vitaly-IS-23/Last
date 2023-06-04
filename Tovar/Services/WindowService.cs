using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization.Json;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace Tovar.Services
{
    public static class WindowService 
    {
        public static void CloseWindow<windowType>()
        {
            foreach (Window window in App.Current.Windows)
            {
                if (window.GetType() == typeof(windowType))
                {
                    window.Close();
                    return;
                }
            }
        }

        public static void OpenWindow<windowType>()
        {
            object window = Activator.CreateInstance(typeof(windowType));

            if (window is Window)
            {
                (window as Window).Show();
            }
        }

        public static void OpenWindow<windowType, viewModelType>(object sendData = null)
        {
            object window = Activator.CreateInstance(typeof(windowType));
            
            if(sendData != null)
            {
                object viewModel = Activator.CreateInstance(typeof(viewModelType), sendData);
                (window as Window).DataContext = viewModel;
            }

            if (window is Window)
            {
                (window as Window).Show();
            }
        }
    }
}
