using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;

namespace _4_GridView_AutoGenerateColumns
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AutoNegocio negocio = new AutoNegocio();

            dgvAutos.DataSource = negocio.listar();
            dgvAutos.DataBind(); // DATA BIND -> ES PARA RENDERIZAR LA LISTA EN LA PANTALLA




        }
    }
}