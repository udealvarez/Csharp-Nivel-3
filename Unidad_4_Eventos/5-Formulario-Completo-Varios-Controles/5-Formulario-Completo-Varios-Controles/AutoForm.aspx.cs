using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;

namespace _5_Formulario_Completo_Varios_Controles
{
    public partial class AutoForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlColores.Items.Add("negro");
                ddlColores.Items.Add("blanco");
                ddlColores.Items.Add("rojo");
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Auto a = new Auto();
            a.Id = int.Parse(txtId.Text);
            a.Modelo = txtModelo.Text;
            a.Descripcion = txtDesripcion.Text;
            a.Color = ddlColores.SelectedValue; // DESPLEGABLE ESTATICO
            a.Fecha = DateTime.Parse(txtFecha.Text); // como a la caja de texto le pase un textmode:DATE -> esto tiene un texto en formato fecha
                                                     // DateTime.Parse(txtFecha.Text) -> te devuelve una fecha, que es lo que espera -> a.Fecha
            a.Usado = chkUsado.Checked;

            // FORMA FACIL
            if (rdbImportado.Checked)
            {
                a.Importado = true;
            }
            else if (rdbNacional.Checked) // si tenes muchos usas ELSE IF - > sino, ELSE
            {
                a.Importado = false;
            }

            // a la base de datos llamando a algun metodo

            // forma larga
            ((List<Auto>)Session["listaAutos"]).Add(a);   // esto es una LISTA DE AUTO QUE OBTENGO DE LA SESSION

            //forma corta
            // si yo quiero recuperar la lista la guardo en una lista de autos (TEMPORAL) le asigno (List<Auto>)Session["listaAutos"] de la session 
            // obtengo el elemento que es una lista de autos -> Session["listaAutos"] | lo transformo en una lista de autos (List<Auto>) con casteo explicito
            List<Auto> temporal = (List<Auto>)Session["listaAutos"];
            temporal.Add(a); // aca le agrego el auto a la lista TEMPORAL

            Response.Redirect("Default.aspx");

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            // FORMA DIFICIL

            // POR DEFECTO TIENE EL AUTO POSTBACK EN FALSE

            // se puede manejar por aca el radio buttons
        }
    }
}