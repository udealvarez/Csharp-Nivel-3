using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;

namespace _6_Seleccionar_Registro_de_grilla
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

            if (Request.QueryString["id"] != null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                List<Auto> temporal = (List<Auto>)Session["listaAutos"];
                Auto autoSeleccionado = temporal.Find(x => x.Id == id); // esto me devuelve de la lista el objeto seleccionado

                txtModelo.Text = autoSeleccionado.Modelo;
                txtId.Text = autoSeleccionado.Id.ToString();
                txtId.ReadOnly = true;  // esto no permite modificar el ID cuando ves el detalle del auto seleccionado IMPORTANTE
            } 


        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            Auto a = new Auto();
            a.Id = int.Parse(txtId.Text);
            a.Modelo = txtModelo.Text;
            a.Descripcion = txtDesripcion.Text;
            a.Color = ddlColores.SelectedValue; 
            a.Fecha = DateTime.Parse(txtFecha.Text); 
            a.Usado = chkUsado.Checked;

            // FORMA FACIL
            if (rdbImportado.Checked)
            {
                a.Importado = true;
            }
            else if (rdbNacional.Checked) 
            {
                a.Importado = false;
            }

            // DE ACA A LA BASE DE DATOS METIANTE ALGUN METODO

            // forma larga de cargar en memoria un registro nuevo
   //         ((List<Auto>)Session["listaAutos"]).Add(a);   

            //forma corta      
            List<Auto> temporal = (List<Auto>)Session["listaAutos"];
            temporal.Add(a); // aca le agrego el auto a la lista TEMPORAL


            Response.Redirect("Default.aspx");
        }
    }
}