namespace SisGMA.Vista
{
    using System;
    using System.Web.UI;
    using Negocio;

    public partial class Index : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var operario = new OperariosBo().Get(1);
            lblCliente.Text = string.Format("{0} {1}", operario.Nombres, operario.ApPaterno);
        }
    }
}