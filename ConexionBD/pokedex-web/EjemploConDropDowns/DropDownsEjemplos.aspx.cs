using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pokedex_web.EjemploConDropDowns
{
    public partial class DropDownsEjemplos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio pokemonNegocio = new PokemonNegocio();
            try
            {
                if (!IsPostBack)
                {
                    //Desplegable desde DB
                    ddlPokemons.DataSource = pokemonNegocio.listarConSP();
                    ddlPokemons.DataTextField = "Nombre";
                    ddlPokemons.DataValueField = "ID";
                    ddlPokemons.DataBind();
                }

            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
            }
        }
    }
}