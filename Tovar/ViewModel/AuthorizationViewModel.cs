using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using Tovar.Core;
using Tovar.Model;
using Tovar.Model.Entities;
using Tovar.Services;
using Tovar.View;

namespace Tovar.ViewModel
{
    public class AuthorizationViewModel : BaseViewModel
    {
        private string _login;
        private string _password;
        private RelayCommand _loginCommand;

        public string Login
        {
            get { return _login; }
            set
            {
                SetPropertyChanged(ref _login, value, nameof(Login));
            }
        }
        public string Password
        {
            get { return _password; }
            set
            {
                SetPropertyChanged(ref _password, value, nameof(Password));
            }
        }

        public RelayCommand LoginCommand =>
            _loginCommand ?? (_loginCommand = new RelayCommand(LogIn));

        private async void LogIn(object obj)
        {
            Users user = await DatabaseContext.FindUser(_login, _password);
            if(user != null)
            {
                CurrentUserSingleton.CurrentUser = user;
                MessageBox.Show("Вы успешно вошли в систему.", "Вход", MessageBoxButton.OK, MessageBoxImage.Information);

                WindowService.OpenWindow<MainWindow>();
                WindowService.CloseWindow<AuthorizationWindow>();
            }
            else
            {
                MessageBox.Show("Не удалось войти в систему.", "Вход", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }
    }
}
