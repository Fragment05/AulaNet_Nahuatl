using Aulanet_web.Almacen.DAL;
using Aulanet_web.Almacen.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aulanet_web.PaginasInternas
{
    public partial class Perfilusuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario"] != null)
                {
                    Usuario usu = (Usuario)Session["usuario"];

                    txtNombre.Text = usu.Nombre;
                    txtApellidoP.Text = usu.ApellidoP;
                    txtApellidoM.Text = usu.ApellidoM;
                    txtEdad.Text = usu.Edad.ToString();
                    txtCorreo.Text = usu.Correo;
                }
                else
                {
                    Response.Redirect("../Presentacion/Presentacion.aspx");
                }
            }

        }
        //  MODIFICAR USUARIO
        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario usu = (Usuario)Session["usuario"];

                // TOMAR DATOS NUEVOS
                usu.Nombre = txtNombre.Text;
                usu.ApellidoP = txtApellidoP.Text;
                usu.ApellidoM = txtApellidoM.Text;
                usu.Edad = Convert.ToByte(txtEdad.Text);
                usu.Correo = txtCorreo.Text;

                //  GUARDAR EN BD
                UsuarioDAL dal = new UsuarioDAL();
                dal.ActualizarUsuario(usu);

              
                Session["usuario"] = usu;

                Response.Write("<script>alert('Datos actualizados correctamente')</script>");
            }
            catch
            {
                Response.Write("<script>alert('Error al actualizar')</script>");
            }
        }




        // ELIMINAR USUARIO
        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                Usuario usu = (Usuario)Session["usuario"];

                string conexion = ConfigurationManager
                .ConnectionStrings["ConexionAulanet"]
                .ConnectionString;

                using (SqlConnection cn = new SqlConnection(conexion))
                {
                    SqlCommand cmd = new SqlCommand(
                        "DELETE FROM Usuarios WHERE IdUsuario=@IdUsuario", cn);

                    cmd.Parameters.AddWithValue("@IdUsuario", usu.IdUsuario);

                    cn.Open();
                    cmd.ExecuteNonQuery();
                    cn.Close();
                }

                Session.Clear();

                Response.Redirect("../Presentacion/Presentacion.aspx");
            }
            catch
            {
                Response.Write("<script>alert('Error al eliminar cuenta')</script>");
            }
        }
    }
}