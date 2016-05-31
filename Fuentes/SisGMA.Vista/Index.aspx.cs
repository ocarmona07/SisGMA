namespace SisGMA.Vista
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Web;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using Negocio;
    using Entidades;

    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (false)
            {
                var addCliente = new CliClientesBo().Insert(new CliClientes
                {
                    RutCliente = "159888207",
                    Nombres = "Omar",
                    ApPaterno = "Carmona",
                    ApMaterno = "Rivas",
                    Direccion = "Lynch 1040",
                    Email = "ocarmona07@gmail.com",
                    Estado = true,
                    IdComuna = 211,
                    Telefono = 82433600
                });
            }

            var cliente = new CliClientesBo().Get(1);
            lblCliente.Text = cliente.Nombres;
        }
    }
}