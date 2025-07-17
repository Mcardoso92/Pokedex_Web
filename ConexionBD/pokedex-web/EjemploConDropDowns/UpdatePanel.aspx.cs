using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pokedex_web.EjemploConDropDowns
{
    public partial class UpdatePanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            //evento normal de click, tira postback. actualiza la caja de texto.
            //en este caso esta dentro de un update panel por ese solo actualiza eso.
            txtNombre.Text = "Texto cambiado desde el back";
        }

        protected void txtNombre_TextChanged(object sender, EventArgs e)
        {
            //actualizo label cuando el texto ha sido cambiado. se dispara al salir de la caja de texto
            //si tiene update panel como ahora, y con autopostback en true, se actualiza al salir de la caja
            //SINO, se actualiza al realizarse algun postback, por ejemplo el click de un boton
            lblNombre.Text = txtNombre.Text;
        }
    }
}