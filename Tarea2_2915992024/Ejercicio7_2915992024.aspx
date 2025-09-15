<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ejercicio7_2915992024.aspx.cs" Inherits="Tarea2_2915992024.Ejercicio7_2915992024" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center colorStyle bodyStyle">
        <p class="lead text-justify">
            <strong>Ejercicio 7:</strong> Programa permite elegir un número del 1 al 100, debe de mostrar la tabla de multiplicación del número seleccionado.
        </p>
        <hr />
        <br />
        <div class="container">
            <div class="panel panel-default">
                <div class="panel-heading text-center"><strong>Haga clic en un botón (1 a 100)</strong></div>

                <div class="panel-body text-center">
                    <asp:DataList ID="dlNumeros" runat="server"
                        RepeatLayout="Table" RepeatColumns="10" RepeatDirection="Horizontal"
                        CellPadding="0"
                        Style="display: inline-table; border-collapse: separate; border-spacing: 10px;">
                        <ItemTemplate>
                            <asp:Button ID="btnNum" runat="server"
                                Text='<%# Eval("N") %>'
                                CssClass="btn btn-success btn-sm"
                                Style="min-width: 48px; min-height: 36px;"
                                CommandName="sel"
                                CommandArgument='<%# Eval("N") %>'
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
