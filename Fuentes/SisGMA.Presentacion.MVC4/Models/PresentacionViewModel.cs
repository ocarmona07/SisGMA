namespace SisGMA.Presentacion.MVC4.Models
{
    using System.Collections.Generic;
    using System.Linq;
    using Entidades;
    
    public class PresentacionViewModel
    {
        public List<NotificacionesViewModel> Notificaciones { get; set; }
        public string Usuario { get; set; }
        public string NombreRol { get; set; }
        public string SkinUsuario { get; set; }

        public static List<NotificacionesViewModel> ToViewModels(List<Notificaciones> notificaciones)
        {
            var list = new List<NotificacionesViewModel>();
            if (notificaciones != null)
            {
                list = notificaciones.Select(o => new NotificacionesViewModel
                {
                    IdOperario = o.IdOperario,
                    Descripcion = o.Descripcion,
                    Color = o.Color,
                    Icono = o.Icono,
                    IdNotificacion = o.IdNotificacion,
                    TituloNotificacion = o.TituloNotificacion,
                    IdNivel = o.IdNivel,
                    Estado = o.Estado
                }).ToList();
            }

            return list;
        }
    }
}