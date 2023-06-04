using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Tovar.Model
{
    public class BaseViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual bool SetPropertyChanged<T>(ref T source, T value, [CallerMemberName] string propertyName = null, bool useValidation = false)
        {
            source = value;
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

            if (useValidation)
            {
                ValidateProperty(value, propertyName);
            }
            return true;
        }

        protected virtual void ValidateProperty<T>(T value, string propertyName)
        {
            Validator.ValidateProperty(value, new ValidationContext(this, null, null)
            {
                MemberName = propertyName
            });
        }
    }
}
