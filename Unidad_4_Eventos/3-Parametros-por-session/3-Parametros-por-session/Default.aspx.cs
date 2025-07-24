using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3_Parametros_por_session
{
    public partial class _Default : Page
    {
        public string user { get; set; } // cuando se carga la pantalla y tiene un nombre se va a cargar, sino hace lo otro

        protected void Page_Load(object sender, EventArgs e)
        {
           
            //user = Request.QueryString["nombre"] != null ? Request.QueryString["nombre"].ToString() : "";
            user = Session["usuario"] != null ? Session["usuario"].ToString() : "";
            lblUser.Text = user + " tu ingreso fue exitoso";

        }
    }
}