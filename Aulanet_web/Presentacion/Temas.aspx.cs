using Aulanet_web.Almacen.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Aulanet_web.PaginasInternas
{
    public partial class Temas : System.Web.UI.Page
    {
        Usuario usu = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                try
                {
                    if (Session["ResultadoExamen"] != null)
                    {
                        lblResultadoModal.Text = Session["ResultadoExamen"].ToString();

                        ScriptManager.RegisterStartupScript(this, this.GetType(),
                            "modal",
                            "var myModal = new bootstrap.Modal(document.getElementById('modalResultado')); myModal.show();",
                            true);

                        Session.Remove("ResultadoExamen");
                    }
                    usu = (Usuario)Session["usuario"];
                    if(usu != null)
                    {
                        
                    }
                    else
                    {
                        Response.Redirect("../Presentacion/Acceso.aspx");
                    }
                }
                catch(Exception ex)
                {
                    System.Diagnostics.Debug.WriteLine("Error de conexión: " + ex.ToString());
                }
            }
        }
    }
}