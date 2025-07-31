using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _7_Practica_ASP
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["listaDirecciones"] == null)
            {
                DireccionNegocio negocio = new DireccionNegocio();
                Session.Add("listaDirecciones", negocio.listarDirecciones());
            }

            cargarGrilla();
        }

        private void cargarGrilla()
        {
            dgvDireccion.DataSource = Session["listaDirecciones"];
            dgvDireccion.DataBind();
        }

        protected void dgvDireccion_SelectedIndexChanged(object sender, EventArgs e)
        {
            var id = (int)dgvDireccion.SelectedDataKey.Value;
            Response.Redirect("DireccionForm.aspx?id=" + id);
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int id = int.Parse(btn.CommandArgument);

            List<Direccion> temporal = (List<Direccion>)Session["listaDirecciones"];
            Direccion aEliminar = temporal.FirstOrDefault(x => x.Id == id);

            if (aEliminar != null)
            {
                temporal.Remove(aEliminar);
                Session["listaDirecciones"] = temporal;
                cargarGrilla();
            }
        }
    }
}