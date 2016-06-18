<%@ Page Title="SisGMA - Mantenedores - Operadores" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="Operadores.aspx.cs" Inherits="SisGMA.Vista.Mantenedores.Operadores" %>

<asp:Content ID="Head" ContentPlaceHolderID="BaseHead" runat="server">
    <link rel="stylesheet" href="/plugins/select2/select2.min.css" />
    <script type="text/javascript" src="/plugins/select2/select2.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnEditarOperario").click(function () {
                // TODO: cargar operario
                var response = "";
                $.ajax({
                    type: "POST",
                    url: "/Mantenedores/Operadores.aspx/ObtenerOperario",
                    data: "{idOperario:" + $(this).attr("data-id") + "}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (respon) {
                        response = respon;
                        if (response !== "") {
                            $("#tbRutOperador").val(response.d);
                            $("#tbNombres").val(response.d);
                            $("#tbApPaterno").val(response.d);
                            $("#tbApMaterno").val(response.d);
                        }
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(xhr.responseJSON.Message);
                    }
                });
                var algo = response;
                $("#listaOperadores").hide();
                $("#dataOperador").show();
            });

            $("#btnCancelar").click(function () {
                $("#dataOperador").hide();
                // TODO: Resetear formulario
                $("#listaOperadores").show();
            });

            $("#btnAgregar").click(function () {
                $("#modalConfirm").modal("show", function() {
                    // TODO: guardar/actualizar operario
                    $("#mdlInfoTitulo").html($("#tbNombres").val());
                    $("#mdlInfoContenido").html($("#tbApPaterno").val());
                });
            });

            //$("#<%= ddlRolOperario.ClientID %>").select2();
            $("#<%= ddlRegion.ClientID %>").select2({
                language: "es"
            });
            $("#<%= ddlProvincia.ClientID %>").select2({
                language: "es"
            });
            $("#<%= ddlComuna.ClientID %>").select2({
                language: "es"
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content" ContentPlaceHolderID="BaseContent" runat="server">
    <section class="content-header">
        <h1>Operadores</h1>
        <ol class="breadcrumb">
            <li><a href="/Inicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
            <li><a href="#">Mantenedores</a></li>
            <li class="active">Operadores</li>
        </ol>
    </section>
    <section class="content">
        <div id="dataOperador" class="row" style="display: none;">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">
                            <asp:Label ID="lblVentanaEditar" runat="server" /></h3>
                    </div>
                    <form id="frmOperador" role="form">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="tbRutOperador">RUT</label>
                                        <input type="text" class="form-control" id="tbRutOperador" maxlength="12" placeholder="Ej: 12.345.678-9">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="<%= ddlRolOperario.ClientID %>">Rol</label>
                                        <asp:DropDownList ID="ddlRolOperario" runat="server" CssClass="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="tbNombres">Nombres</label>
                                        <input type="text" class="form-control" id="tbNombres" maxlength="32" placeholder="Nombre(s) del operador">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="tbApPaterno">Apellido Paterno</label>
                                        <input type="text" class="form-control" id="tbApPaterno" maxlength="32" placeholder="Apellido paterno">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="tbApMaterno">Apellido Materno</label>
                                        <input type="text" class="form-control" id="tbApMaterno" maxlength="32" placeholder="Apellido Materno">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="tbDireccion">Dirección</label>
                                <input type="text" class="form-control" id="tbDireccion" maxlength="64" placeholder="Dirección">
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="<%= ddlRegion.ClientID %>">Región</label>
                                        <asp:DropDownList ID="ddlRegion" runat="server" CssClass="form-control" Width="100%" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="<%= ddlProvincia.ClientID %>">Provincia</label>
                                        <asp:DropDownList ID="ddlProvincia" runat="server" CssClass="form-control" Width="100%" />
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="<%= ddlComuna.ClientID %>">Comuna</label>
                                        <asp:DropDownList ID="ddlComuna" runat="server" CssClass="form-control" Width="100%" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="tbTelefono">Teléfono</label>
                                        <input type="tel" class="form-control" id="tbTelefono" maxlength="16" placeholder="Ej: +569123456789">
                                    </div>
                                    <div class="form-group">
                                        <label for="tbClave">Contraseña</label>
                                        <input type="password" class="form-control" maxlength="16" id="tbClave" placeholder="Mínimo 6 - Máximo 16">
                                    </div>
                                    <div class="form-group">
                                        <label for="chkEstado">Estado</label>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" id="chkEstado" checked="checked">
                                                Activo
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="fupImagenOperador">Imagen</label>
                                        <input type="file" id="fupImagenOperador">
                                        <p class="help-block">Agregue una imagen para el operador</p>
                                    </div>
                                    <div style="border: 1px dashed black; width: 160px; height: 160px;"></div>
                                </div>
                            </div>
                        </div>
                        <div class="box-footer text-center">
                            <button type="button" id="btnCancelar" class="btn btn-flat btn-warning" style="width: 120px;">
                                <i class="fa fa-reply"></i>
                                Cancelar
                            </button>
                            <button type="reset" id="btnLimpiar" class="btn btn-flat btn-danger pull-left" style="width: 120px;">
                                <i class="fa fa-eraser"></i>
                                Limpiar
                            </button>
                            <button type="button" id="btnAgregar" class="btn btn-flat btn-success pull-right" style="width: 120px;">
                                <i class="fa fa-save"></i>
                                Aceptar
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div id="listaOperadores" class="row" style="display: block;">
            <div class="col-md-12">
                <div class="box">
                    <div class="box-body">
                        <asp:GridView ID="gvListaOperadores" runat="server" AutoGenerateColumns="False" GridLines="None" role="grid"
                            CssClass="table table-bordered table-hover dataTable" OnRowDataBound="ListaOperadoresOnRowDataBound">
                            <EmptyDataTemplate>No hay operarios para mostrar</EmptyDataTemplate>
                            <Columns>
                                <asp:TemplateField HeaderText="RUT">
                                    <ItemTemplate>
                                        <asp:Label ID="lblRutOperario" runat="server" Text="N/D" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Nombres" HeaderText="Nombre(s)" />
                                <asp:BoundField DataField="ApPaterno" HeaderText="Apellido Paterno" />
                                <asp:BoundField DataField="ApMaterno" HeaderText="Apellido Materno" />
                                <asp:BoundField DataField="Roles.Rol" HeaderText="Rol" />
                                <asp:TemplateField HeaderText="Estado">
                                    <ItemTemplate>
                                        <asp:Label ID="lblEstado" runat="server" Text="Inactivo" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Acciones">
                                    <ItemTemplate>
                                        <a id="btnEditarOperario" class="btn btn-flat btn-xs btn-warning" data-id='<%# Eval("IdOperario") %>'>Editar</a>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <%-- Modal Confirm --%>
    <div id="modalConfirm" class="modal fade" tabindex="-1" role="dialog" data-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 id="mdlConfirmTitulo" class="modal-title"></h4>
                </div>
                <div id="mdlConfirmContenido" class="modal-body"></div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cancelar</button>
                    <button type="button" class="btn btn-primary">Aceptar</button>
                </div>
            </div>
        </div>
    </div>
    <%-- Modal Alert --%>
    <div id="modalInfo" class="modal fade" tabindex="-1" role="dialog" data-backdrop="static">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 id="mdlInfoTitulo" class="modal-title"></h4>
                </div>
                <div class="modal-body" id="mdlInfoContenido"></div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" data-dismiss="modal">Aceptar</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
