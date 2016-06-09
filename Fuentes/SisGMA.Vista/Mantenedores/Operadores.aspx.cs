namespace SisGMA.Vista.Mantenedores
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using Negocio;

    public partial class Operadores : System.Web.UI.Page
    {
        private readonly ListItem _seleccione = new ListItem("Seleccione una opción...", "");

        protected void Page_Load(object sender, EventArgs e)
        {
            var selectores = new SelectoresBo();
            ddlRolOperario.DataSource = selectores.ObtenerRoles();
            ddlRolOperario.DataTextField = selectores.Text;
            ddlRolOperario.DataValueField = selectores.Value;
            ddlRolOperario.DataBind();
            ddlRolOperario.Items.Insert(0, _seleccione);

            lblVentanaEditar.Text = (false ? "Actualizar" : "Agregar") + " operador";

        }
    }
}