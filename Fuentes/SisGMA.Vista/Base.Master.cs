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

    public partial class Base : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Versión y Copyright TODO: agregar derechos de autor
            lblVersion.Text = ConfigurationManager.AppSettings.Get("Version");
            // Body class
            MasterBody.Attributes.Add("class", "hold-transition skin-black sidebar-mini");

            // User Info TODO: Agregar imagen
            var cliente = new ClientesBo().Get(1);
            lblUserName.Text = string.Format("{0} {1}", cliente.Nombres, cliente.ApPaterno);
            lblRole.Text = string.Format("Web Developer", cliente.Nombres);

            // Notifications TODO: pasar a capa negocio como método
            lblNumNotif.Text = 2.ToString();
            var icon = "<i class=\"fa fa-users text-aqua\"></i>";
            var link = "#";
            var text = "5 new members joined today";
            var test = string.Format("<li><a href=\"{0}\">{1}{2}</a></li>", link, icon, text);
            litNotifications.Text = test + test;
        }
    }
}