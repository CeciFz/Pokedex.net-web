using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Negocio
{
    public class AccesoDatos2
    {
            private SqlDataReader lector;
            public SqlDataReader Lector
            {
                get { return lector; }
            }
            public SqlConnection conexion { get; }
            private SqlCommand comando;

            public AccesoDatos2()
            {
                conexion = new SqlConnection("data source=.\\SQLEXPRESS; initial catalog=POKEDEX_DB2; integrated security=sspi");
                comando = new SqlCommand();
                comando.Connection = conexion;
            }

            public void setearQuery(string consulta)
            {
                comando.CommandType = System.Data.CommandType.Text;
                comando.CommandText = consulta;
            }

            public void setearSP(string sp)
            {
                comando.CommandType = System.Data.CommandType.StoredProcedure;
                comando.CommandText = sp;
            }

            public void agregarParametro(string nombre, object valor)
            {
                comando.Parameters.AddWithValue(nombre, valor);
            }

            public void ejecutarLector()
            {
                try
                {
                    conexion.Open();
                    lector = comando.ExecuteReader();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }

            public void ejecutarAccion()
            {
                try
                {
                    conexion.Open();
                    comando.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }

            public void cerrarConexion()
            {
                if (conexion != null)
                    conexion.Close();
            }


        }
}
