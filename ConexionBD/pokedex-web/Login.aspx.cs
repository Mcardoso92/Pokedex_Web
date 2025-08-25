using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;

namespace pokedex_web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            //Usuario usuario;
            //UsuarioNegocio negocio = new UsuarioNegocio();

            Trainee trainee = new Trainee();
            TraineeNegocio negocio = new TraineeNegocio();

            

            try
            {
                trainee.Email = txtUser.Text;
                trainee.Pass = txtPass.Text;
                if (negocio.Login(trainee))
                {
                    Session.Add("trainee", trainee); //Con esto sabemos si la persona esta logueada o no
                    Response.Redirect("MiPerfil.aspx", false);
                }
                else
                {
                    Session.Add("Error", "User o pass incorrectos");
                    Response.Redirect("Error.aspx", false);
                }
                
                
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
                Response.Redirect("Error.aspx", false);
            }
            
        }

        protected void btnDesloguear_Click(object sender, EventArgs e)
        {
            Session.Remove("trainee");
            Response.Redirect("Login.aspx");
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}