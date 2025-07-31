using Dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _7_Practica_ASP
{
    public partial class DireccionForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarCiudades();
                CargarProvincias();             
                
            }

            if (Request.QueryString["id"] != null) 
            {
                int id = int.Parse(Request.QueryString["id"]);
                List<Direccion> temporal = (List<Direccion>)Session["listaDirecciones"];
                Direccion direcSeleccionada = temporal.Find(x => x.Id == id);
                              
                if (direcSeleccionada != null)
                {
                    ViewState["idModificar"] = id;
                    txtCalle.Text = direcSeleccionada.Calle;
                    txtAltura.Text = direcSeleccionada.Altura.ToString();
                    ddlCiudad.SelectedValue = direcSeleccionada.Ciudad;
                    ddlProvincia.SelectedValue = direcSeleccionada.Provincia;
                    txtCodigoPostal.Text = direcSeleccionada.CodigoPostal.ToString();
                    txtFechaRegistro.Text = direcSeleccionada.FechaRegistro.ToString("yyyy-MM-dd");
                    checkComercial.Checked = direcSeleccionada.EsComercial;
                }

            }
        }

        private void CargarProvincias()
        {
            ddlProvincia.Items.Clear();
            ddlProvincia.Items.Add("Buenos Aires");
            ddlProvincia.Items.Add("Neuquen");
            ddlProvincia.Items.Add("Cordoba");
            ddlProvincia.Items.Add("Santa fe");
            ddlProvincia.Items.Add("Mendoza");
            ddlProvincia.Items.Add("Misiones");
        }

        private void CargarCiudades()
        {
            ddlCiudad.Items.Clear();
            ddlCiudad.Items.Add("Bella Vista");
            ddlCiudad.Items.Add("San Miguel");
            ddlCiudad.Items.Add("CABA");
            ddlCiudad.Items.Add("San Martín");
            ddlCiudad.Items.Add("Tigre");
            ddlCiudad.Items.Add("La Plata");
            ddlCiudad.Items.Add("Morón");
            ddlCiudad.Items.Add("Vicente López");
            ddlCiudad.Items.Add("Luján");
            ddlCiudad.Items.Add("Hurlingham");
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            List<Direccion> temporal = (List<Direccion>)Session["listaDirecciones"];

            if (ViewState["idModificar"] != null)
            {
                int idModificar = (int)ViewState["idModificar"];
                Direccion existente = temporal.Find(x => x.Id == idModificar);

                if (existente != null)
                {
                    existente.Calle = txtCalle.Text;
                    existente.Altura = int.Parse(txtAltura.Text);
                    existente.Ciudad = ddlCiudad.SelectedValue;
                    existente.Provincia = ddlProvincia.SelectedValue;
                    existente.CodigoPostal = int.Parse(txtCodigoPostal.Text);
                    existente.FechaRegistro = DateTime.Parse(txtFechaRegistro.Text);
                    existente.EsComercial = checkComercial.Checked;
                }
            }
            else
            {
                Direccion nueva = new Direccion();
                nueva.Id = temporal.Max(x => x.Id) + 1; // Genera nuevo ID
                nueva.Calle = txtCalle.Text;
                nueva.Altura = int.Parse(txtAltura.Text);
                nueva.Ciudad = ddlCiudad.SelectedValue;
                nueva.Provincia = ddlProvincia.SelectedValue;
                nueva.CodigoPostal = int.Parse(txtCodigoPostal.Text);
                nueva.FechaRegistro = DateTime.Parse(txtFechaRegistro.Text);
                nueva.EsComercial = checkComercial.Checked;

                temporal.Add(nueva);
            }

            Session["listaDirecciones"] = temporal;
            Response.Redirect("Default.aspx");
        }
    }
}


