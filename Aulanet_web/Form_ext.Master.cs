using Aulanet_web.Almacen.Entities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Aulanet_web
{
    public partial class Form_ext : System.Web.UI.MasterPage
    {
        string conexion = ConfigurationManager.ConnectionStrings["ConexionAulanet"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLoginASP_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(conexion);

            SqlCommand cmd = new SqlCommand("sp_LoginUsuario", cn);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@Correo", txtCorreo.Value );
            cmd.Parameters.AddWithValue("@Passwords", txtPassword.Value);

            cn.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            Usuario usu = new Usuario();
            if (dr.Read())
            {
                usu.IdUsuario = Convert.ToInt32(dr["IdUsuario"]);

                usu.Nombre = dr["Nombre"].ToString();
                usu.ApellidoP = dr["ApellidoP"].ToString();
                usu.ApellidoM = dr["ApellidoM"].ToString();
                usu.Edad = Convert.ToByte(dr["Edad"]);
                usu.FechaNacimiento = Convert.ToDateTime(dr["FechaNacimiento"]);
                usu.Estado = Convert.ToInt32(dr["Estado"]);
                usu.Municipio = Convert.ToInt32(dr["Municipio"]);
                usu.Correo = dr["Correo"].ToString();
                usu.Passwords = dr["Passwords"].ToString();
                usu.ImagenPerfil = dr["ImagenPerfil"].ToString();
                usu.IdiomaSeleccionado = dr["IdiomaSeleccionado"].ToString();

                Session["usuario"] = usu;


                Response.Redirect("../Presentacion/Temas.aspx");
            }

            cn.Close();
        }
    }
}