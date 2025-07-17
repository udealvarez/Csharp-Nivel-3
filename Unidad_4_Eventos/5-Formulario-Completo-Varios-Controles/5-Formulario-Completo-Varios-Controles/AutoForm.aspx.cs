using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _5_Formulario_Completo_Varios_Controles
{
    public partial class AutoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool usado = Request.Form["chkUsado"] == "on";
            bool importado = Request.Form["chkImportado"] == "on";
            //bool usado = chkUsado.Checked;
            //bool importado = chkImportado.Checked;


            ddlColores.Items.Add("negro");
            ddlColores.Items.Add("blanco");
            ddlColores.Items.Add("rojo");
        }
    }
}