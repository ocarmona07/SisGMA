namespace SisGMA.Vista.Mantenedores
{
    using System;
    using System.Web.Script.Serialization;
    using System.Web.Services;
    using System.Web.UI;
    using System.Web.UI.WebControls;
    using Negocio;
    using Entidades;

    public partial class Operadores : Page
    {
        private readonly ListItem _seleccione = new ListItem("Seleccione una opción...", "");

        protected void Page_Load(object sender, EventArgs e)
        {
            var selectores = new SelectoresBo();
            ddlRolOperario.DataSource = selectores.ObtenerRoles();
            ddlRolOperario.DataTextField = selectores.Text;
            ddlRolOperario.DataValueField = selectores.Value;
            ddlRolOperario.DataBind();
            ddlRolOperario.Items.Insert(0, _seleccione);

            ddlRegion.DataSource = selectores.ObtenerRegiones();
            ddlRegion.DataTextField = selectores.Text;
            ddlRegion.DataValueField = selectores.Value;
            ddlRegion.DataBind();
            ddlRegion.Items.Insert(0, _seleccione);

            lblVentanaEditar.Text = (false ? "Actualizar" : "Agregar") + " operador";

            gvListaOperadores.DataSource = new OperariosBo().GetAll();
            gvListaOperadores.DataBind();
            gvListaOperadores.HeaderRow.TableSection = TableRowSection.TableHeader;
            gvListaOperadores.FooterRow.TableSection = TableRowSection.TableFooter;
        }

        protected void ListaOperadoresOnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType != DataControlRowType.DataRow) return;

            var operario = (Operarios) e.Row.DataItem;
            var lblRut = (Label) e.Row.FindControl("lblRutOperario");
            if (lblRut != null)
            {
                var rut = operario.RutOperario;
                var rutNros = int.Parse(rut.Substring(0, rut.Length - 1));
                lblRut.Text = string.Format("{0:N0}-{1}", rutNros, rut.Substring(rut.Length - 1, 1));
            }

            var lblEstado = (Label) e.Row.FindControl("lblEstado");
            if (lblEstado != null)
            {
                lblEstado.Text = operario.Estado ? "Activo" : "Inactivo";
            }
        }

        [WebMethod]
        public static string ObtenerOperario(string idOperario)
        {
            int idOper;
            var serializer = new JavaScriptSerializer();
            var response = serializer.Serialize(new {});
            if (int.TryParse(idOperario, out idOper))
            {
                var operariosBo = new OperariosBo();
                var operario = operariosBo.Get(idOper);
                if (operariosBo.IsValid)
                {
                    // TODO: Cargar data
                    response = serializer.Serialize(operario);
                }
                else
                {
                    response = serializer.Serialize(new { Error = operariosBo.ErrorMessage });
                }
            }

            return response;
        }
    }
}