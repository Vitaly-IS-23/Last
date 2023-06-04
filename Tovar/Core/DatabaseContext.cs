using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tovar.Model.Entities;

namespace Tovar.Core
{
    public class DatabaseContext 
    {
        public static async Task<Users> FindUser(string login, string password)
        {
            using(TovarEntities context = new TovarEntities())
            {
                Users user = new Users();
                user = await context.Users.FirstOrDefaultAsync(it => it.Login == login && it.Password == password);

                if(user == null)
                {
                    return null;
                }

                return user;
            }
        }
    }
}
