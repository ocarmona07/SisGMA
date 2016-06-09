namespace SisGMA.Vista
{
    using System;
    using System.Configuration;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using System.Web.UI.HtmlControls;
    using Negocio;

    public partial class Base : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // General
            var generalBo = new GeneralBo();

            // Version & Copyright TODO: agregar derechos de autor
            lblVersion.Text = ConfigurationManager.AppSettings.Get("Version");
            lnkWebDevelop.Text = ConfigurationManager.AppSettings.Get("WebDevelopText");
            lnkWebDevelop.PostBackUrl = ConfigurationManager.AppSettings.Get("WebDevelopUrl");
            
            // Body class
            const string skin = "skin-black";
            MasterBody.Attributes.Add("class", "hold-transition sidebar-mini " + skin);

            // User Info TODO: Agregar imagen
            var operariosBo = new OperariosBo();
            var operario = operariosBo.Get(1);
            if (!operariosBo.IsValid)
            {
                // Alert con error
            }

            lblUserName.Text = string.Format("{0} {1}", operario.Nombres, operario.ApPaterno);
            lblRole.Text = string.Format("{0}", operario.Roles.Rol);

            litNotifications.Text = generalBo.GetNotifications();
            lblNumNotif.Text = generalBo.CantNotificaciones.ToString();
            lblTieneNotif.Text = generalBo.CantNotificaciones > 0 ?
                "Tiene " + generalBo.CantNotificaciones + " notificaci" +
                (generalBo.CantNotificaciones == 1 ? "ón" : "ones") :
                "No tiene notificaciones";

            litSidebarMenu.Text = generalBo.GetMenuLateral();
        }

        protected void ModalAlerta(object sender, EventArgs e)
        {
            lblTituloModalAlerta.Text = "";
            litDetalleAlerta.Text = "";

            ScriptManager.RegisterStartupScript(Page, Page.GetType(),
                "modalAlerta", "$('#modalAlerta').modal('show');", true);
            upModalAlerta.Update();
        }
    }
}