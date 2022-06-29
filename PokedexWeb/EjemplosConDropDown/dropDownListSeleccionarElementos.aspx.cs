using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace PokedexWeb.EjemplosConDropDown
{
    public partial class dropDownListSeleccionarElementos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TipoNegocio tipoNeg = new TipoNegocio();
            try
            {
                List<Tipo> listaTipos = tipoNeg.listar();

                //config de tipos para preseleccionar
                ddlTipoPreSeleccionado.DataSource = listaTipos;
                ddlTipoPreSeleccionado.DataTextField = "Descripcion";
                ddlTipoPreSeleccionado.DataValueField = "id";
                ddlTipoPreSeleccionado.DataBind();
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        protected void btnSeleccionar_Click(object sender, EventArgs e)
        {
            string id = txtIdTipo.Text;

            //Opcion 1 
            //ddlTipoPreSeleccionado.SelectedIndex = -1;
            //ddlTipoPreSeleccionado.Items.FindByValue(id).Selected = true;

            //opcion 2
            ddlTipoPreSeleccionado.SelectedIndex = ddlTipoPreSeleccionado.Items.IndexOf(
            ddlTipoPreSeleccionado.Items.FindByValue(id));
        }
    }
}