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
    public partial class DropDownlistSeleccionarElemento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ElementoNegocio negocioElemento = new ElementoNegocio();
            try
            {
                if (!IsPostBack)
                {
                    List<Elemento> listaElementos = negocioElemento.listar();

                    //configuro desplegable desde DB con ID y descripcion
                    ddlTipoPreseleccionado.DataSource = listaElementos;
                    ddlTipoPreseleccionado.DataTextField = "Descripcion";
                    ddlTipoPreseleccionado.DataValueField = "ID";
                    ddlTipoPreseleccionado.DataBind();
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void btnSeleccionar_Click(object sender, EventArgs e)
        {
            string id = txtIdTipo.Text;

            //opcion 1
            //ddlTipoPreseleccionado.SelectedIndex = -1;
            //ddlTipoPreseleccionado.Items.FindByValue(id).Selected = true;

            //opcion 2 (mas facil de entender)
            ddlTipoPreseleccionado.SelectedIndex = ddlTipoPreseleccionado.Items.IndexOf(
            ddlTipoPreseleccionado.Items.FindByValue( id ) );
        }
    }
}