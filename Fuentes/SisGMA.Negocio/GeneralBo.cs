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
            var notifs = CrearNotificacion();
            CantNotificaciones = 1;
            return notifs;
        }

        private string CrearNotificacion()
        {
            var icon = "fa-users";
            var link = "#";
            var text = "5 new members joined today";
            return string.Format("<li><a href=\"{0}\"><i class=\"fa {1} text-aqua\"></i>{2}</a></li>", link, icon, text);
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
