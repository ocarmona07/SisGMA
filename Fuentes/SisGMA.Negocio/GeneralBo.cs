using System.Collections.Generic;
using System.Linq;
using SisGMA.Entidades;
using SisGMA.Datos.SystemDa;

namespace SisGMA.Negocio
{
    public class GeneralBo
    {
        public List<Notificaciones> GetNotificaciones()
        {
            return new NotificacionesDa().GetAll().Where(n => n.Estado).ToList();
        }

        public List<CategoriasAcceso> GetMenu()
        {
            return new CategoriasAccesoDa().GetAll();
        }

        /// <summary>
        /// Método que valida un RUT
        /// </summary>
        /// <param name="rut">RUT</param>
        /// <returns>Respuesta de validación</returns>
        public bool ValidarRut(string rut)
        {
            try
            {
                rut = rut.ToUpper();
                rut = rut.Replace(".", "");
                rut = rut.Replace("-", "");
                var rutAux = int.Parse(rut.Substring(0, rut.Length - 1));
                var dv = char.Parse(rut.Substring(rut.Length - 1, 1));

                int m = 0, s = 1;
                for (; rutAux != 0; rutAux /= 10)
                {
                    s = (s + rutAux % 10 * (9 - m++ % 6)) % 11;
                }
                return dv == (char)(s != 0 ? s + 47 : 75);
            }
            catch
            {
                return false;
            }
        }

        /// <summary>
        /// Método que calcula el digito verificador a partir de la mantisa del rut
        /// </summary>
        /// <param name="rut">Rut de ingreso</param>
        /// <returns>Dígito verificador</returns>
        public string ObtenerDigitoVerificador(int rut)
        {
            var suma = 0;
            var multiplicador = 1;
            while (rut != 0)
            {
                multiplicador++;
                if (multiplicador == 8)
                    multiplicador = 2;
                suma += (rut % 10) * multiplicador;
                rut = rut / 10;
            }

            suma = 11 - (suma % 11);
            if (suma == 11)
            {
                return "0";
            }

            return suma == 10 ? "K" : suma.ToString();
        }
    }
}
