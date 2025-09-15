<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ejercicio6_2915992024.aspx.cs" Inherits="Tarea2_2915992024.Ejercicio6_2915992024" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center colorStyle bodyStyle">
        <p class="lead text-justify">
            <strong>Ejercicio 6:</strong> Programa permite elegir un número del 1 al 10, debe de mostrar la tabla de multiplicación del número seleccionado.
        </p>
        <hr />
        <br />
        <div class="container">
            <div class="panel panel-success">
                <div class="panel-heading"><strong>Haga clic en un número (1 a 10)</strong></div>
                <div class="panel-body">
                    <asp:DataList ID="dlNumeros" runat="server"
                        RepeatColumns="5" RepeatDirection="Horizontal"
                        CellPadding="8" CellSpacing="8">
                        <ItemTemplate>
                            <asp:ImageButton ID="btnNum" runat="server" Width="100" Height="50"
                                CommandName="sel" CommandArgument='<%# Eval("N") %>'
                                AlternateText='<%# "Número " + Eval("N") %>'
                                ToolTip='<%# "Ver tabla del " + Eval("N") %>'
                                OnCommand="Numero_Command" />
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>

            <asp:Panel ID="pnlTabla" runat="server" Visible="false" CssClass="panel panel-success">
                <div class="panel-heading text-center">
                    <h4 class="panel-title" style="margin: 0">Tabla del
                        <asp:Label ID="lblNum" runat="server" /></h4>
                </div>
                <div class="panel-body">
                    <asp:GridView ID="gvTabla" runat="server" AutoGenerateColumns="False"
                        CssClass="table table-bordered table-striped" HeaderStyle-CssClass="text-center">
                        <Columns>
                            <asp:BoundField DataField="Operacion" HeaderText="Operación" />
                            <asp:BoundField DataField="Resultado" HeaderText="Resultado" />
                        </Columns>
                    </asp:GridView>
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
