using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Negocio;
using Dominio;


namespace Negocio
{
    public class TipoNegocio
    {
        public List<Tipo> listar()
        {
            Tipo aux;
            AccesoDatos2 datos = new AccesoDatos2();
            List<Tipo> lista = new List<Tipo>();
            try
            {

                datos.setearQuery("Select Id, Descripcion From TIPOS");
                datos.ejecutarLector();

                while (datos.Lector.Read())
                {
                    aux = new Tipo((int)datos.Lector["Id"], (string)datos.Lector["Descripcion"]);
                    lista.Add(aux);
                }
                return lista;
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
