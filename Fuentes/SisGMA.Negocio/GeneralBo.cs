namespace SisGMA.Negocio
{
    using System;
    using System.Linq;
    using Entidades;
    using Datos;

    public class GeneralBo : BaseEntity
    {
        public int CantNotificaciones;

        public string GetNotifications()
        {
            var retornoNotifs = string.Empty;
            var notificaciones = new NotificacionesDa().GetAll();
            foreach (var notif in notificaciones)
            {
                retornoNotifs += CrearNotificacion(notif.Icono, notif.Color, notif.TituloNotificacion);
            }

            CantNotificaciones = notificaciones.Count;
            return retornoNotifs;
        }

        private string CrearNotificacion(string icon, string color, string text)
        {
            const string link = "Notificaciones.aspx";
            return string.Format(
                "<li><a href=\"{0}\"><i class=\"fa {1} {2}\"></i>{3}</a></li>",
                link, icon, color, text);
        }

        public string GetMenuLateral()
        {
            var menu = "<ul class=\"sidebar-menu\">";
            var categorias = new CategoriasAccesoDa().GetAll();
            foreach (var categoria in categorias)
            {
                menu += "<li class=\"header\">" + categoria.Categoria + "</li>";
                foreach (var acceso in categoria.Accesos.Where(e => e.IdAccesoPadre == null).ToList())
                {
                    if (acceso.Accesos1.Count == 0)
                    {
                        menu += "<li><a href=\"" + acceso.UrlAcceso + "\" " +
                                "alt=\"" + acceso.Descripcion + "\">" +
                                "<i class=\"fa " + acceso.Icono + "\"></i>" +
                                "<span>" + acceso.NombreAcceso + "</span>" +
                                "</a></li>";
                        continue;
                    }

                    menu += "<li class=\"treeview\">" +
                            "<a href=\"#\" alt=\"" + acceso.Descripcion + "\">" +
                            "<i class=\"fa " + acceso.Icono + "\"></i>" +
                            "<span>" + acceso.NombreAcceso + "</span>" +
                            "</a><ul class=\"treeview-menu\">";

                    foreach (var subacceso in acceso.Accesos1.Where(e => e.IdAccesoPadre != null).ToList())
                    {

                        menu += "<li><a href=\"" + subacceso.UrlAcceso +
                                "\" alt=\"" + subacceso.Descripcion + " \" >" +
                                "<i class=\"fa " + subacceso.Icono + "\"></i>" +
                                subacceso.NombreAcceso + "</a></li>";
                    }

                    menu += "</ul></li>";
                }
            }

            return menu + "</ul>";
        }
    }
}
