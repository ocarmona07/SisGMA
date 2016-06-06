namespace SisGMA.Vista
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using Negocio;
    using Entidades;

    public partial class Index : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var operario = new OperariosBo().Get(1);
            lblCliente.Text = string.Format("{0} {1}", operario.Nombres, operario.ApPaterno);
        }
    }
}