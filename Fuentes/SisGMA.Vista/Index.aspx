<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SisGMA.Vista.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>CarService ASL</title>
    <link rel="stylesheet" href="~/css/bootstrap.min.css" />
    <link rel="stylesheet" href="~/css/font-awesome.min.css" />
    <link rel="stylesheet" href="~/dist/css/AdminLTE.min.css" />
    <script src="/plugins/jQuery/jQuery-2.2.0.min.js"></script>
    <script src="/scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row" style="margin-top: 50px;">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="callout callout-info">
                    <h4><asp:Label runat="server" Text="Usuario: "/>
                    <asp:Label runat="server" ID="lblCliente" /></h4>
                    <p>
                        <asp:LinkButton runat="server" Text="Ir a Inicio..." PostBackUrl="/Inicio.aspx"/>
                    </p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
