using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public class UsuarioNegocio
    {
        public bool Loguear(Usuario usuario)
        {
			AccesoDatos datos = new AccesoDatos();
			try
			{
				datos.setearConsulta("Select Id, TipoUser from USUARIOS Where Usuario = @User AND Pass = @Pass");
				datos.setearParametro("@User", usuario.User);
				datos.setearParametro("@Pass", usuario.Pass);

				datos.ejecutarLectura();
				while (datos.Lector.Read())
				{
					usuario.Id = (int)datos.Lector["id"];
					usuario.TipoUsuario = (int)(datos.Lector["TipoUser"]) == 2 ? TipoUsuario.ADMIN : TipoUsuario.NORMAL;
					return true;
				}
				return false;


            }
			catch (Exception ex)
			{

				throw ex;
			}
			finally
			{
				datos.cerrarConexion();
			}
        }
    }
}
