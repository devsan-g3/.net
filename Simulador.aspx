<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Simulador.aspx.cs" Inherits="SimuladorBancario.Simulador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <div class="container p-5">
        <form id="form1" runat="server">
            <div class="row">
                <asp:Label ID="label1" runat="server" Text="Monto"></asp:Label>
                <asp:TextBox ID="txtMonto" runat="server" CssClass="form-control mb-3" required="true"></asp:TextBox>
            </div>

            <div class="row">
                <asp:Label ID="label2" runat="server" Text="Tipo Crédito"></asp:Label>
                <asp:DropDownList ID="ddlTipoCredito" runat="server" CssClass="form-control mb-3" required="true">
                    <asp:ListItem Value="" Selected="True">Seleccione</asp:ListItem>
                    <asp:ListItem Value="1.0">Vivienda</asp:ListItem>
                    <asp:ListItem Value="2.0">Vehículo</asp:ListItem>
                    <asp:ListItem Value="3.0">Consumo</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="row">
                <asp:Label ID="label3" runat="server" Text="Plazo"></asp:Label>
                <asp:DropDownList ID="ddlPlazo" runat="server" CssClass="form-control mb-3" required="true">
                    <asp:ListItem Value="" Selected="True">Seleccione</asp:ListItem>
                    <asp:ListItem Value="12">12</asp:ListItem>
                    <asp:ListItem Value="24">24</asp:ListItem>
                    <asp:ListItem Value="36">36</asp:ListItem>
                    <asp:ListItem Value="48">48</asp:ListItem>
                    <asp:ListItem Value="60">60</asp:ListItem>
                    <asp:ListItem Value="120">120</asp:ListItem>
                    <asp:ListItem Value="180">180</asp:ListItem>
                    <asp:ListItem Value="240">240</asp:ListItem>
                </asp:DropDownList>
                <br />
            </div>
            <div class="row">
            <asp:Button ID="btnCalcular" runat="server" Text="Calcular" CssClass="btn btn-primary" OnClick="btnCalcular_Click" />
                </div>
            <div class="row">
                <asp:GridView ID="gdvCuotas" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" CssClass="table table-dark mt-5" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="mes" HeaderText="Mes" />
                        <asp:BoundField ConvertEmptyStringToNull="False" DataField="saldoInicial" DataFormatString="{0:c}" HeaderText="Saldo Inicial" />
                        <asp:BoundField DataField="cuota" DataFormatString="{0:c}" HeaderText="Cuota" />
                        <asp:BoundField DataField="intereses" DataFormatString="{0:c}" HeaderText="Intereses" />
                        <asp:BoundField DataField="capital" DataFormatString="{0:c}" HeaderText="Capital" />
                        <asp:BoundField DataField="saldoFinal" DataFormatString="{0:c}" HeaderText="Saldo Final" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
            </div>
        </form>
    </div>
</body>
</html>
