using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;

namespace pokedex_web
{
    public partial class FormularioPokemon : System.Web.UI.Page
    {
        public bool confirmaEliminacion { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            confirmaEliminacion = false;
            txtID.Enabled = false;
            try
            {
                //Configuracion inicial de la pantalla
                if (!IsPostBack)
                {
                    ElementoNegocio negocio = new ElementoNegocio();
                    List<Elemento> lista = negocio.listar();

                    ddlTipo.DataSource = lista;
                    ddlTipo.DataTextField = "Descripcion";
                    ddlTipo.DataValueField = "ID";
                    ddlTipo.DataBind();

                    ddlDebilidad.DataSource = lista;
                    ddlDebilidad.DataTextField = "Descripcion";
                    ddlDebilidad.DataValueField = "ID";
                    ddlDebilidad.DataBind();

                }

                //Configuracion si estamos modificando
                string id = Request.QueryString["id"] != null ? Request.QueryString["id"].ToString() : "";

                if (id != "" && !IsPostBack) //si trajo un id desde otra pantalla
                {
                    PokemonNegocio negocio = new PokemonNegocio();
                    //1era Forma
                    //List<Pokemon> lista = negocio.listar(id);
                    //Pokemon seleccionado = lista[0];

                    //2da Forma
                    Pokemon selecccionado = (negocio.listar(id))[0];

                    //Guardo el pokemon seleccionado en la session

                    Session.Add("pokeSeleccionado", selecccionado);

                    //Precargar todos los campos del pokemon seleccionado...
                    txtID.Text = id;
                    txtNumero.Text = selecccionado.Numero.ToString();
                    txtNombre.Text = selecccionado.Nombre;
                    txtDescripcion.Text = selecccionado.Descripcion;
                    txtImagenUrl.Text = selecccionado.UrlImagen;

                    //Los desplegables se ponen aca porque si los ponemos arriba no estarian cargados.
                    ddlTipo.SelectedValue = selecccionado.Tipo.ID.ToString();
                    ddlDebilidad.SelectedValue = selecccionado.Debilidad.ID.ToString();
                    txtImagenUrl_TextChanged(sender, e); //Forzamos para carga de la imagen (hacerlo como metodo mas a delante)

                    btnAceptar.Enabled = false;

                    //Configurar Acciones
                    if (!selecccionado.Activo)
                        btnInhabilitar.Text = "Habilitar";


                }
                else
                {
                    btnModificar.Enabled = false;
                    btnEliminar.Enabled = false;
                }

            }
            catch (Exception ex)
            {

                Session.Add("Error", ex);
                Response.Redirect("Error.aspx");
            }
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                Pokemon nuevo = new Pokemon();
                PokemonNegocio negocio = new PokemonNegocio();

                nuevo.Numero = int.Parse(txtNumero.Text);
                nuevo.Nombre = txtNombre.Text;
                nuevo.Descripcion = txtDescripcion.Text;
                nuevo.UrlImagen = txtImagenUrl.Text;

                nuevo.Tipo = new Elemento();
                nuevo.Tipo.ID = int.Parse(ddlTipo.SelectedValue);
                nuevo.Debilidad = new Elemento();
                nuevo.Debilidad.ID = int.Parse(ddlDebilidad.SelectedValue);

                negocio.agregarConSP(nuevo);
                Response.Redirect("ListaPokemon.aspx", false);


            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
                Response.Redirect("Error.aspx"); ;
            }
        }

        protected void txtImagenUrl_TextChanged(object sender, EventArgs e)
        {
            imgPokemon.ImageUrl = txtImagenUrl.Text;
        }

        protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                Pokemon nuevo = new Pokemon();
                PokemonNegocio negocio = new PokemonNegocio();

                nuevo.ID = int.Parse(txtID.Text);
                nuevo.Numero = int.Parse(txtNumero.Text);
                nuevo.Nombre = txtNombre.Text;
                nuevo.Descripcion = txtDescripcion.Text;
                nuevo.UrlImagen = txtImagenUrl.Text;

                nuevo.Tipo = new Elemento();
                nuevo.Tipo.ID = int.Parse(ddlTipo.SelectedValue);
                nuevo.Debilidad = new Elemento();
                nuevo.Debilidad.ID = int.Parse(ddlDebilidad.SelectedValue);

                negocio.modificarConSP(nuevo);
                Response.Redirect("ListaPokemon.aspx", false);


            }
            catch (Exception ex)
            {
                Session.Add("Error", ex);
                Response.Redirect("Error.aspx"); ;
            }
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            confirmaEliminacion = true;
        }

        protected void btnConfirmaEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                if (chkConfirmaEliminacion.Checked)
                {
                    PokemonNegocio negocio = new PokemonNegocio();
                    negocio.eliminar(int.Parse(txtID.Text));
                    Response.Redirect("ListaPokemon.aspx");
                }

            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
                Response.Redirect("Error.aspx");
            }
        }

        protected void btnInhabilitar_Click(object sender, EventArgs e)
        {
            try
            {
                PokemonNegocio negocio = new PokemonNegocio();
                Pokemon seleccionado = (Pokemon)Session["pokeSeleccionado"];

                negocio.eliminarLogico(seleccionado.ID, !seleccionado.Activo);
                Response.Redirect("ListaPokemon.aspx");
            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
                Response.Redirect("Error.aspx");
            }
        }
    }
}