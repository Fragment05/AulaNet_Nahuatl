using Aulanet_web.Almacen.Entities;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aulanet_web.Examenes
{
    public partial class ExamenFinal : System.Web.UI.Page
    {
        string conexion = ConfigurationManager.ConnectionStrings["ConexionAulanet"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // Verificar sesión
            if (Session["usuario"] == null)
            {
                Response.Redirect("~/Presentacion/Acceso.aspx");
                return;
            }

            Usuario usuario = (Usuario)Session["usuario"];

            int idLeccion;

            // Verificar que venga la lección
            if (!int.TryParse(Request.QueryString["leccion"], out idLeccion))
            {
                Response.Redirect("~/Presentacion/Temas.aspx");
                return;
            }

            
            if (!IsPostBack)
            {
                // Verificar si ya respondió el examen
                if (YaRespondioExamen(usuario.IdUsuario, idLeccion))
                {
                    Session["ResultadoExamen"] = "Ya realizaste este examen.";
                    Response.Redirect("~/Presentacion/Temas.aspx");
                    return;
                }

                
                hfIdLeccion.Value = idLeccion.ToString();

                
                CargarTituloLeccion(idLeccion);
                CargarPreguntas(idLeccion);
            }
        }

        bool YaRespondioExamen(int idUsuario, int idLeccion)
        {
            using (SqlConnection con = new SqlConnection(conexion))
            {
                string query = @"SELECT COUNT(*) 
                                FROM ProgresoUsuario
                                WHERE IdUsuario=@IdUsuario
                                AND IdLeccion=@IdLeccion";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@IdUsuario", idUsuario);
                cmd.Parameters.AddWithValue("@IdLeccion", idLeccion);

                con.Open();

                int existe = Convert.ToInt32(cmd.ExecuteScalar());

                return existe > 0;
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["usuario"];

            int idUsuario = usuario.IdUsuario;

            int tiempo = 0;

            if (!string.IsNullOrEmpty(hfTiempoExamen.Value))
            {
                tiempo = Convert.ToInt32(hfTiempoExamen.Value);
            }

            int correctas = 0;
            int total = rpPreguntas.Items.Count;

            foreach (RepeaterItem item in rpPreguntas.Items)
            {
                HiddenField hf = (HiddenField)item.FindControl("hfIdPregunta");

                int idPregunta = Convert.ToInt32(hf.Value);

                RadioButtonList rbl = (RadioButtonList)item.FindControl("rblRespuestas");

                if (rbl.SelectedValue != "")
                {
                    int respuestaUsuario = Convert.ToInt32(rbl.SelectedValue);

                    int respuestaCorrecta = ObtenerRespuestaCorrecta(idPregunta);

                    bool esCorrecta = respuestaUsuario == respuestaCorrecta;

                    if (esCorrecta)
                        correctas++;

                    // GUARDAR RESPUESTA
                    GuardarRespuestaUsuario(
                        idUsuario,
                        Convert.ToInt32(hfIdLeccion.Value),
                        idPregunta,
                        respuestaUsuario,
                        esCorrecta
                    );
                }
            }


            int puntaje = (correctas * 100) / total;

            GuardarProgreso(idUsuario, Convert.ToInt32(hfIdLeccion.Value), puntaje, tiempo);

            Session["ResultadoExamen"] =
                "Respuestas correctas: " + correctas +
                " de " + total +
                " | Puntaje: " + puntaje + "%";

            Response.Redirect("~/Presentacion/Temas.aspx");
        }

        void GuardarRespuestaUsuario(int idUsuario, int idLeccion, int idPregunta, int idRespuesta, bool esCorrecta)
        {
            using (SqlConnection con = new SqlConnection(conexion))
            {
                string query = @"INSERT INTO RespuestasUsuario
                        (IdUsuario,IdLeccion,IdPregunta,IdRespuestaElegida,EsCorrecta)
                        VALUES
                        (@IdUsuario,@IdLeccion,@IdPregunta,@IdRespuesta,@EsCorrecta)";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@IdUsuario", idUsuario);
                cmd.Parameters.AddWithValue("@IdLeccion", idLeccion);
                cmd.Parameters.AddWithValue("@IdPregunta", idPregunta);
                cmd.Parameters.AddWithValue("@IdRespuesta", idRespuesta);
                cmd.Parameters.AddWithValue("@EsCorrecta", esCorrecta);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        int ObtenerRespuestaCorrecta(int idPregunta)
        {
            using (SqlConnection con = new SqlConnection(conexion))
            {
                string query = @"SELECT IdRespuesta
                                FROM PreguntasCorrectas
                                WHERE IdPregunta=@IdPregunta";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@IdPregunta", idPregunta);

                con.Open();

                return Convert.ToInt32(cmd.ExecuteScalar());
            }
        }

        void GuardarProgreso(int idUsuario, int idLeccion, int puntaje, int tiempo)
        {
            using (SqlConnection con = new SqlConnection(conexion))
            {
                string query = @"INSERT INTO ProgresoUsuario
                                (IdUsuario,IdLeccion,Puntaje,TiempoSegundos,FechaUltimoIntento)
                                VALUES
                                (@IdUsuario,@IdLeccion,@Puntaje,@Tiempo,GETDATE())";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@IdUsuario", idUsuario);
                cmd.Parameters.AddWithValue("@IdLeccion", idLeccion);
                cmd.Parameters.AddWithValue("@Puntaje", puntaje);
                cmd.Parameters.AddWithValue("@Tiempo", tiempo);

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }

        void CargarTituloLeccion(int idLeccion)
        {
            using (SqlConnection con = new SqlConnection(conexion))
            {
                string query = "SELECT Nombre FROM Lecciones WHERE IdLeccion=@IdLeccion";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@IdLeccion", idLeccion);

                con.Open();

                litTitulo.Text = cmd.ExecuteScalar().ToString();
            }
        }

        void CargarPreguntas(int idLeccion)
        {
            using (SqlConnection con = new SqlConnection(conexion))
            {
                string query = @"SELECT IdPregunta, Pregunta, ImagenReferencia
                                FROM Preguntas
                                WHERE IdLeccion=@IdLeccion
                                ORDER BY NEWID()";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@IdLeccion", idLeccion);

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                da.Fill(dt);

                rpPreguntas.DataSource = dt;
                rpPreguntas.DataBind();
            }
        }

        protected void rpPreguntas_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                HiddenField hf = (HiddenField)e.Item.FindControl("hfIdPregunta");

                int idPregunta = Convert.ToInt32(hf.Value);

                RadioButtonList rbl = (RadioButtonList)e.Item.FindControl("rblRespuestas");

                rbl.DataSource = ObtenerRespuestas(idPregunta);
                rbl.DataBind();
            }
        }

        DataTable ObtenerRespuestas(int idPregunta)
        {
            using (SqlConnection con = new SqlConnection(conexion))
            {
                string query = @"SELECT IdRespuesta, Respuesta
                                FROM Respuestas
                                WHERE IdPregunta=@IdPregunta
                                ORDER BY NEWID()";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@IdPregunta", idPregunta);

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                da.Fill(dt);

                return dt;
            }
        }
    }
}

