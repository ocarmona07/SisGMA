namespace SisGMA.Vista
{
    using System;
    using System.Configuration;
    using System.Web.UI;
    using Negocio;

    public partial class Base : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Clase de negocio General
            var generalBo = new GeneralBo();

            // Configuraciones de la página base
            MasterBody.Attributes.Add("class", "hold-transition sidebar-mini " +
                ConfigurationManager.AppSettings.Get("DefaultSkin"));
            lblVersion.Text = ConfigurationManager.AppSettings.Get("Version");
            lnkWebDevelop.Text = ConfigurationManager.AppSettings.Get("WebDevelopText");
            lnkWebDevelop.PostBackUrl = ConfigurationManager.AppSettings.Get("WebDevelopUrl");

            // Carga usuario TODO: Agregar imagen
            var operariosBo = new OperariosBo();
            var operario = operariosBo.Get(1);
            if (!operariosBo.IsValid)
            {
                // Alert con error
            }

            lblUserName.Text = string.Format("{0} {1}", operario.Nombres, operario.ApPaterno);
            lblRole.Text = string.Format("{0}", operario.Roles.Rol);

            // Carga notificaciones
            litNotifications.Text = generalBo.ObtenerNotificaciones();
            lblNumNotif.Text = generalBo.CantNotificaciones.ToString();
            lblTieneNotif.Text = generalBo.TextoCantidadNotif();

            // Carga menú lateral
            litSidebarMenu.Text = generalBo.ObtenerMenuLateral();
        }
    }
}