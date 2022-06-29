using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PokedexWeb
{
    public partial class updatePanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtNombre_TextChanged(object sender, EventArgs e)
        {
            //actualizo label cuando el texto ha sido cambiado. Se dispara al salir de la caja de texto.
            //si tiene updatepanel y autopostback true, se actualiza al salir de la caja
            //SINO se actualiza al realizarse algún postback
            lblNombre.Text = txtNombre.Text;
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            //evento normal de click, que lanza postback. Actualiza la caja de texto
            //como en este caso está dentro de un update panel, solo actualiza eso.
            txtNombre.Text = "texto cambiado desde el back";
        }
    }
}