namespace SisGMA.Presentacion.MVC4.Models
{
    public class NotificacionesViewModel
    {
        public int IdNotificacion { get; set; }
        public int? IdOperario { get; set; }
        public string TituloNotificacion { get; set; }
        public string Descripcion { get; set; }
        public string Color { get; set; }
        public string Icono { get; set; }
        public int IdNivel { get; set; }
        public bool Estado { get; set; }
    }
}