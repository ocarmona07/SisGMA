<%@ Page Title="SisGMA - Inicio" Language="C#" MasterPageFile="~/Base.Master" AutoEventWireup="true"
    CodeBehind="Inicio.aspx.cs" Inherits="SisGMA.Vista.Inicio" %>

<asp:Content ID="Head" ContentPlaceHolderID="BaseHead" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnTest").click(function () {
                $.ajax({
                    type: "POST",
                    url: "Inicio.aspx/GetFullName",
                    data: "{idOper:" + $("#<%= tbTest.ClientID %>").val() + "}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (response) {
                        $("#<%= lblName.ClientID %>").html(response.d);
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        alert(xhr.responseJSON.Message);
                    }
                });
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content" ContentPlaceHolderID="BaseContent" runat="server">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Inicio</h1>
        <ol class="breadcrumb">
            <li><a href="/Inicio.aspx"><i class="fa fa-home"></i>Inicio</a></li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Title</h3>
                <div class="box-tools pull-right">
                    <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse">
                        <i class="fa fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
                        <i class="fa fa-times"></i>
                    </button>
                </div>
            </div>
            <div class="box-body">
                <asp:Label ID="lblName" runat="server" /><br />
                <br />
                <asp:TextBox ID="tbTest" runat="server" /><br />
                <br />
                <a id="btnTest" href="#" class="btn btn-danger btn-flat">Test button</a>
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                Footer
            </div>
            <!-- /.box-footer-->
        </div>
        <!-- /.box -->
    </section>
    <!-- /.content -->
</asp:Content>
