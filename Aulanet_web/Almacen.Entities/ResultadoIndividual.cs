using Aulanet_web.GestionUser;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aulanet_web.Almacen.Entities
{
    public class ResultadoIndividual
    {
        public int Puntaje { get; set; }
        public bool EsMejorCalificacion { get; set; }
        public List<PreguntaDetalle> Preguntas { get; set; }
    }
}