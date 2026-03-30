using Aulanet_web.Almacen.Entities; 
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aulanet_web.Contratos
{
    public interface IUsuarioDAL
    {
        void RegistrarUsuario(Usuario usuario);

        Usuario Login(string correo, string password);
    }
}
