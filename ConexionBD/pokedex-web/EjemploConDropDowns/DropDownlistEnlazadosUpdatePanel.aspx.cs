using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pokedex_web.EjemploConDropDowns
{
    public partial class DropDownlistEnlazadosUpdatePanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            ElementoNegocio negocioElemento = new ElementoNegocio();

            try
            {
                if (!IsPostBack)
                {
                    //obtengo datos y los guardo en sesion
                    List<Pokemon> listaPokemon = negocio.listarConSP();
                    Session["listaPokemon"] = listaPokemon;

                    //configuro desplegable desde DB pero solo
                    //ddlPokemonsFiltrados.DataSource = listaPoKemon;
                    //ddlPokemonsFiltrados.DataBind();

                    List<Elemento> listaElementos = negocioElemento.listar();

                    //configuro desplegable desde DB con ID y descripcion
                    ddlTipos.DataSource = listaElementos;
                    ddlTipos.DataTextField = "Descripcion";
                    ddlTipos.DataValueField = "ID";
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
            ddlPokemonsFiltrados.DataSource = ((List<Pokemon>)Session["listaPokemon"]).FindAll(x => x.Tipo.ID == id);
            ddlPokemonsFiltrados.DataTextField = "Nombre";
            ddlPokemonsFiltrados.DataValueField = "ID";
            ddlPokemonsFiltrados.DataBind();
        }
    }
}