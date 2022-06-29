using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dominio;
using Negocio;

namespace Negocio
{
    public class PokemonNegocio2
    {
        public List<Pokemon2> listarConSP()
        {
            List<Pokemon2> lista = new List<Pokemon2>();
            Pokemon2 aux;
            AccesoDatos2 datos = new AccesoDatos2();
            try
            {
                datos.setearSP("spListar");
                datos.ejecutarLector();
                while (datos.Lector.Read())
                {
                    aux = new Pokemon2();
                    aux.Id = datos.Lector.GetInt32(0);
                    aux.Nombre = datos.Lector.GetString(1);
                    aux.Descripcion = datos.Lector.GetString(2);
                    aux.Tipo = new Tipo();
                    aux.Tipo.Id = (int)datos.Lector["idTipo"];
                    aux.Tipo.Descripcion = (string)datos.Lector["Descripcion"];
                    aux.UrlImagen = (string)datos.Lector["UrlImagen"];
                    if (!Convert.IsDBNull(datos.Lector["idEvol"]))
                    {
                        aux.Evolucion = new Pokemon();
                        aux.Evolucion.Id = (int)datos.Lector["idEvol"];
                        aux.Evolucion.Nombre = datos.Lector["nomEvol"].ToString();
                    }

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
                datos = null;
            }

        }
    }
}