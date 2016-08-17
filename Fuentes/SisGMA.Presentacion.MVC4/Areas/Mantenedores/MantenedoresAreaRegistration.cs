using System.Web.Mvc;

namespace SisGMA.Presentacion.MVC4.Areas.Mantenedores
{
    public class MantenedoresAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Mantenedores";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            context.MapRoute(
                "Mantenedores_default",
                "Mantenedores/{controller}/{action}/{id}",
                new { action = "Index", area = "Mantenedores", id = UrlParameter.Optional }
            );
        }
    }
}
