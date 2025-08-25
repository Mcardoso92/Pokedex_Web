using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;

namespace pokedex_web
{
    public partial class MiMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            imgAvatar.ImageUrl = "https://e7.pngegg.com/pngimages/416/62/png-clipart-anonymous-person-login-google-account-computer-icons-user-activity-miscellaneous-computer-thumbnail.png";

            string paginaActual = System.IO.Path.GetFileName(Request.Path);

            //Paginas que pueden entrar sin estar logueado
            string[] paginasPublicas = { "Login.aspx", "Default.aspx", "Registro.aspx", "Error.aspx" };

            if(!paginasPublicas.Contains(paginaActual))
            {
                if (!Seguridad.sessionActiva(Session["trainee"]))
                    Response.Redirect("Login.aspx", false);
                else
                {
                    Trainee user = (Trainee)Session["trainee"];
                    lblUser.Text = user.Email;
                    if(!string.IsNullOrEmpty(user.ImagenPerfil))
                        imgAvatar.ImageUrl = "~/Images/" + user.ImagenPerfil;
                }
            }

            if (Seguridad.sessionActiva(Session["trainee"]))
            {
                imgAvatar.ImageUrl = "~/Images/" + ((Trainee)Session["trainee"]).ImagenPerfil;
            }
            else
            {
                
            }
            
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Session.Clear(); //Este metodo elimina todo lo que esta en la Session...
            Response.Redirect("Login.aspx");
        }
    }
}