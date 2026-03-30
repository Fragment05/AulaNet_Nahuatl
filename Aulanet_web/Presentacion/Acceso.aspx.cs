using Aulanet_web.Almacen.DAL;
using Aulanet_web.Almacen.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Aulanet_web.PaginasExternas
{
    public partial class Presentacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarEstados();
            }
        }
        private void CargarEstados()
        {
            string conexion = ConfigurationManager
                              .ConnectionStrings["ConexionAulanet"]
                              .ConnectionString;

            using (SqlConnection cn = new SqlConnection(conexion))
            {
                SqlCommand cmd = new SqlCommand("SELECT IdEstado, Nombre FROM Estados", cn);

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                da.Fill(dt);

                ddlEstado.DataSource = dt;
                ddlEstado.DataTextField = "Nombre";
                ddlEstado.DataValueField = "IdEstado";
                ddlEstado.DataBind();

                ddlEstado.Items.Insert(0, new ListItem("Seleccionar estado", "0"));
            }
        }
        protected void ddlEstado_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarMunicipios();
        }
        private void CargarMunicipios()
        {
            string conexion = System.Configuration.ConfigurationManager
                              .ConnectionStrings["ConexionAulanet"]
                              .ConnectionString;

            using (SqlConnection cn = new SqlConnection(conexion))
            {
                SqlCommand cmd = new SqlCommand(
                "SELECT IdMunicipio, Nombre FROM Municipios WHERE EstadoId = @EstadoId", cn);

                cmd.Parameters.AddWithValue("@EstadoId", ddlEstado.SelectedValue);

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                da.Fill(dt);

                ddlMunicipio.DataSource = dt;
                ddlMunicipio.DataTextField = "Nombre";
                ddlMunicipio.DataValueField = "IdMunicipio";
                ddlMunicipio.DataBind();

                ddlMunicipio.Items.Insert(0, new ListItem("Seleccionar municipio", "0"));
            }
        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            try
            {
                // Validar que las contraseñas coincidan
                if (txtPassword.Text != txtConfirmarPassword.Text)
                {
                    Response.Write("<script>alert('Las contraseñas no coinciden')</script>");
                    return;
                }

                // Crear objeto usuario
                Usuario usuario = new Usuario();

                usuario.Nombre = txtNombre.Text;
                usuario.ApellidoP = txtApellidoP.Text;
                usuario.ApellidoM = txtApellidoM.Text;

                usuario.Edad = Convert.ToByte(txtEdad.Text);

                usuario.FechaNacimiento = Convert.ToDateTime(txtFechaNacimiento.Text);

                usuario.Estado = Convert.ToInt32(ddlEstado.SelectedValue);

                usuario.Municipio = Convert.ToInt32(ddlMunicipio.SelectedValue);

                usuario.Correo = txtCorreo.Text;

                usuario.Passwords = txtPassword.Text;

                // Valores por defecto en la traduccion del texto
                usuario.ImagenPerfil = "";
                usuario.IdiomaSeleccionado = "es";

                // Crear objeto DAL
                UsuarioDAL dal = new UsuarioDAL();

                // Guardar en base de datos
                dal.RegistrarUsuario(usuario);

                Session["usuario"] = usuario;

                Response.Redirect("~/Presentacion/Temas.aspx");


            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Error de conexión: " + ex.ToString());

            }

        }
    }
}
