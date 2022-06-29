using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace PokedexWeb
{
    public partial class dropDownEjemplos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio2 pokemonNegocio2 = new PokemonNegocio2();   
            try
            {
                if (!IsPostBack)
                {
                    //desplegable desde DB
                    ddlBD.DataSource = pokemonNegocio2.listarConSP();
                    ddlBD.DataBind();
                }
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }

        }
    }
}