namespace SisGMA.Vista
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.Services;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using Negocio;

    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string GetFullName(string idOper)
        {
            int idOperario;
            if (int.TryParse(idOper, out idOperario))
            {
                var operario = new OperariosBo().Get(idOperario);
                if (operario != null)
                {
                    return string.Format("{0} {1} {2}", operario.Nombres, operario.ApPaterno, operario.ApMaterno);
                }
                else
                {
                    return "No encontrado";
                }
            }

            return "Ingrese ID";
        }
    }
}