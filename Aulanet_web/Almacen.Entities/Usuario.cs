using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aulanet_web.Almacen.Entities
{
    public class Usuario
    {
        public int IdUsuario { get; set; }

        public string Nombre { get; set; }

        public string ApellidoP { get; set; }

        public string ApellidoM { get; set; }

        public byte Edad { get; set; }

        public DateTime FechaNacimiento { get; set; }

        public int Estado { get; set; }

        public int Municipio { get; set; }

        public string Correo { get; set; }

        public string Passwords { get; set; }

        public DateTime FechaRegistro { get; set; }

        public string ImagenPerfil { get; set; }

        public string IdiomaSeleccionado { get; set; }
    }
}