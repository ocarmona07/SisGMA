<%@ Page Title="SisGMA - Mantenedores - Operadores" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true" CodeBehind="Operadores.aspx.cs" Inherits="SisGMA.Vista.Mantenedores.Operadores" %>

<asp:Content ID="Head" ContentPlaceHolderID="BaseHead" runat="server">
    <link rel="stylesheet" href="/plugins/select2/select2.min.css"/>
    <script type="text/javascript" src="/plugins/select2/select2.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            //$("#<%= ddlRolOperario.ClientID %>").select2();
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
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">
                            <asp:Label ID="lblVentanaEditar" runat="server" /></h3>
                    </div>
                    <form role="form">
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="RutOperador">RUT</label>
                                        <input type="text" class="form-control" id="RutOperador" maxlength="12" placeholder="Ej: 12.345.678-9">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="<%= ddlRolOperario.ClientID %>">Rol</label>
                                        <asp:DropDownList ID="ddlRolOperario" runat="server" CssClass="form-control"/>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="Nombres">Nombres</label>
                                        <input type="text" class="form-control" id="Nombres" maxlength="32" placeholder="Nombre(s) del operador">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="ApPaterno">Apellido Paterno</label>
                                        <input type="text" class="form-control" id="ApPaterno" maxlength="32" placeholder="Apellido paterno">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="ApMaterno">Apellido Materno</label>
                                        <input type="text" class="form-control" id="ApMaterno" maxlength="32" placeholder="Apellido Materno">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Direccion">Dirección</label>
                                <input type="text" class="form-control" id="Direccion" maxlength="64" placeholder="Dirección">
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="Region">Región</label>
                                        <input type="text" class="form-control" id="Region">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="Provincia">Provincia</label>
                                        <input type="text" class="form-control" id="Provincia">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="Comuna">Comuna</label>
                                        <input type="text" class="form-control" id="Comuna">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="Telefono">Teléfono</label>
                                        <input type="tel" class="form-control" id="Telefono" maxlength="16" placeholder="Ej: +569123456789">
                                    </div>
                                    <div class="form-group">
                                        <label for="Clave">Contraseña</label>
                                        <input type="password" class="form-control" maxlength="16" id="Clave" placeholder="Mínimo 6 - Máximo 16">
                                    </div>
                                    <div class="form-group">
                                        <label for="Estado">Estado</label>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox" id="Estado" checked="checked">
                                                Activo
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="ImagenOperador">Imagen</label>
                                        <input type="file" id="ImagenOperador">
                                        <p class="help-block">Agregue una imagen para el operador</p>
                                    </div>
                                    <div style="border: 1px dashed black; width: 160px; height: 160px;"></div>
                                </div>
                            </div>
                        </div>
                        <div class="box-footer">
                            <button type="submit" class="btn btn-primary">Aceptar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
