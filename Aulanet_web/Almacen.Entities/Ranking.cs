using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aulanet_web.Almacen.Entities
{
    public class Ranking
    {
        public string NombreUsuario { get; set; }
        public int Puntaje { get; set; }
        public int TiempoSegundos { get; set; }
    }
}