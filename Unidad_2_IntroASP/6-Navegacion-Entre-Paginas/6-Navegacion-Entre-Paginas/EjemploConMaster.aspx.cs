using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _6_Navegacion_Entre_Paginas
{
    public partial class EjemploConMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            lblSaludo.Text = "hola " + nombre;

            Response.Redirect("EjemploASPX.aspx", false);

            // EVITAR -> Response.Redirect (A SECAS) 

            /*
             *      ES UNA ACTIVIDAD QUE CARGA EL SERVIDOR POR QUE DESPUES DE EJECUTAR EL Response.Redirect, EJECUTA UN RESPONSE.END
             *      y concluye la accion del codigo, pero esa accion es un poco pesada lo cual con el tiempo tira una EXCEPTION de HILO
             *      CONCLUIDO -> TREET ABORT.
             *      Esto si lo tenes con una exception te la toma y te la manda a otro lado que vos no queres, lo que se hace es que 
             *      se le un parametro ( FALSE ) para que no cancele el flujo de ejecucion y no te mande a otro lado
             *           
             */

        }
    }
}