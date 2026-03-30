using Aulanet_web.Almacen.Entities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Net.Http;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace Aulanet_web.GestionUser
{
    public partial class Puntaje : System.Web.UI.Page
    {
        string conexion = ConfigurationManager.ConnectionStrings["ConexionAulanet"].ConnectionString;

        protected async void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                Usuario usuario = (Usuario)Session["usuario"];
                int idUsuario = usuario.IdUsuario;

                cargarUsuario(idUsuario);
                cargarExamenes(idUsuario);

                if (Request.QueryString["idLeccion"] != null)
                {
                    int idLeccion = Convert.ToInt32(Request.QueryString["idLeccion"]);

                    if (!examenCompletado(idUsuario, idLeccion))
                    {
                        Response.Write("<script>alert('No has completado este examen');window.location='Puntaje.aspx';</script>");
                        return;
                    }
                    await cargarIndividualAPI(idUsuario, idLeccion);
                    await cargarRankingAPI(idLeccion);
                }
            }
        }

        bool examenCompletado(int idUsuario, int idLeccion)
        {
            using (SqlConnection conn = new SqlConnection(conexion))
            {
                SqlCommand cmd = new SqlCommand("sp_ExamenCompletado", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@IdUsuario", idUsuario);
                cmd.Parameters.AddWithValue("@IdLeccion", idLeccion);

                conn.Open();
                int count = (int)cmd.ExecuteScalar();

                return count > 0;
            }
        }

        void cargarUsuario(int idUsuario)
        {
            using (SqlConnection conn = new SqlConnection(conexion))
            {
                SqlCommand cmd = new SqlCommand("sp_Usuario", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@IdUsuario", idUsuario);

                conn.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    lblNombre.Text =
                        dr["Nombre"].ToString() + " " +
                        dr["ApellidoP"].ToString() + " " +
                        dr["ApellidoM"].ToString();

                    lblEdad.Text = dr["Edad"].ToString();

                    if (dr["ImagenPerfil"] != DBNull.Value)
                        imgUsuario.ImageUrl = dr["ImagenPerfil"].ToString();
                    else
                        imgUsuario.ImageUrl = "~/Recursos/Imagenes/lapiz.png";
                }
            }
        }

        void cargarExamenes(int idUsuario)
        {
            using (SqlConnection conn = new SqlConnection(conexion))
            {
                SqlCommand cmd = new SqlCommand("sp_ExamenesPorUsuario", conn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@IdUsuario", idUsuario);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                repExamenes.DataSource = dt;
                repExamenes.DataBind();
            }
        }
        protected void btnIndividual_Click(object sender, EventArgs e)
        {
            panelIndividual.Visible = true;
            panelGrupal.Visible = false;
        }

        protected void btnGrupal_Click(object sender, EventArgs e)
        {
            panelIndividual.Visible = false;
            panelGrupal.Visible = true;
        }

        // CONSUMIR API - INDIVIDUAL
        async Task cargarIndividualAPI(int idUsuario, int idLeccion)
        {
            string url = "http://localhost:5045/api/resultados/individual?idUsuario="
                         + idUsuario + "&idLeccion=" + idLeccion;

            using (HttpClient client = new HttpClient())
            {
                try
                {
                    var response = await client.GetAsync(url);

                    if (response.IsSuccessStatusCode)
                    {
                        var json = await response.Content.ReadAsStringAsync();

                        var data = JsonConvert.DeserializeObject<ResultadoIndividual>(json);

                        lblPuntaje.Text = data.Puntaje.ToString();

                        lblMejorPuntaje.Text = data.EsMejorCalificacion
                            ? " Es el mejor"
                            : "-";

                        repPreguntas.DataSource = data.Preguntas;
                        repPreguntas.DataBind();
                    }
                    else
                    {
                        lblPuntaje.Text = "Error al obtener datos";
                    }
                }
                catch (HttpRequestException ex)
                {
                    lblPuntaje.Text = "No se pudo conectar con la API";
                    System.Diagnostics.Debug.WriteLine(ex.Message);
                }
                catch (Exception ex)
                {
                    lblPuntaje.Text = "Error inesperado";
                    System.Diagnostics.Debug.WriteLine(ex.Message);
                }
            }
        }


        // CONSUMIR API - RANKING
        async Task cargarRankingAPI(int idLeccion)
        {
            string url = "http://localhost:5045/api/resultados/ranking?idLeccion=" + idLeccion;

            using (HttpClient client = new HttpClient())
            {
                try
                {
                    var response = await client.GetAsync(url);

                    if (response.IsSuccessStatusCode)
                    {
                        var json = await response.Content.ReadAsStringAsync();

                        var lista = JsonConvert.DeserializeObject<List<Ranking>>(json);

                        if (lista != null)
                        {
                            gvRanking.DataSource = lista;
                            gvRanking.DataBind();
                        }
                        else
                        {
                            gvRanking.DataSource = null;
                            gvRanking.DataBind();
                        }
                    }
                    else
                    {
                        // respuesta 400, 500, etc.
                        gvRanking.DataSource = null;
                        gvRanking.DataBind();
                    }
                }
                catch (HttpRequestException ex)
                {
                    System.Diagnostics.Debug.WriteLine("Error conexión: " + ex.Message);

                    gvRanking.DataSource = null;
                    gvRanking.DataBind();
                }
                catch (Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine("Error general: " + ex.Message);

                    gvRanking.DataSource = null;
                    gvRanking.DataBind();
                }
            }
        }


    }
  

   

   
}