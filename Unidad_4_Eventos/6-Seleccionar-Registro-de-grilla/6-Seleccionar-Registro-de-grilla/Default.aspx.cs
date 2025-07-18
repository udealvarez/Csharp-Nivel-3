using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _6_Seleccionar_Registro_de_grilla
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["listaAutos"] == null)
            {
                AutoNegocio negocio = new AutoNegocio();
                Session.Add("listaAutos", negocio.listar());
            }

            dgvAutos.DataSource = Session["listaAutos"];
            dgvAutos.DataBind(); // DATA BIND -> ES PARA RENDERIZAR LA LISTA EN LA PANTALLA
        }

        protected void dgvAutos_SelectedIndexChanged(object sender, EventArgs e)
        {
            var algo = dgvAutos.SelectedRow.Cells[0].Text;
        }
    }
}