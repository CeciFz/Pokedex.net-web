using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace PokedexWeb.EjemplosConDropDown
{
    public partial class dropDownListEnlazados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio2 pokeNeg = new PokemonNegocio2();
            TipoNegocio tipoNeg = new TipoNegocio();

            try
            {
                if (!IsPostBack)
                {
                    //Obtengo datos y los guardo en sesión
                    List<Pokemon2> listaPokemon = pokeNeg.listarConSP();
                    Session["listaPokemon"] = listaPokemon;

                    //Configuro desplegable desde la db (x si quiero que se cargue desde el inicio)
                    //ddlPokemonsFiltrados.DataSource = listaPokemon;
                    //ddlPokemonsFiltrados.DataBind();

                    List<Tipo> listaTipos = tipoNeg.listar();

                    //Configuro desplegable desde db con id y desc
                    ddlTipos.DataSource = listaTipos;
                    ddlTipos.DataTextField = "Descripcion";   // qué es lo que quiero que muestre
                    ddlTipos.DataValueField = "id";          // qué es lo que debe tener por detrás 
                    ddlTipos.DataBind();
                }
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }

        }

        protected void ddlTipos_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(ddlTipos.SelectedItem.Value);
            ddlPokemonsFiltrados.DataSource = ((List<Pokemon2>)Session["listaPokemon"]).FindAll(x => x.Tipo.Id == id);
            ddlPokemonsFiltrados.DataBind();
        }
    }
}