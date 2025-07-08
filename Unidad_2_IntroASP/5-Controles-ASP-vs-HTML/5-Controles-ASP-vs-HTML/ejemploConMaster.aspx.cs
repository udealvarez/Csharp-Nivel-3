using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _5_Controles_ASP_vs_HTML
{
    public partial class ejemploConMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
       
           //  btnAceptar.  -> puedo acceder a todas las caracteristicas de un objeto .NET
        }

        protected void btnAceptar_Click(object sender, EventArgs e) // -> peticion al servidor
        {
            string nombre = txtNombre.Text;
            lblSaludo.Text = "Hola " + nombre;
        }
    }
}