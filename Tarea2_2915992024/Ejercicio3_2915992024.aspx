<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ejercicio3_2915992024.aspx.cs" Inherits="Tarea2_2915992024.Ejercicio3_2915992024" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center colorStyle bodyStyle">
        <p class="lead text-justify">
            <strong>Ejercicio 3:</strong> Programa para calcular el total a pagar, si se hace un descuento de acuerdo a la cantidad de artículos que compre.
        </p>
        <hr />
        <br />
        <div class="container">
            <div class="row">

                <div class="col-md-6 col-lg-5">
                    <div class="panel panel-success">
                        <div class="panel-heading"><strong>Descuento por cantidad de artículos</strong></div>
                        <div class="panel-body">

                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="txtCantidad" CssClass="control-label"
                                    Text="Cantidad de artículos" />
                                <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control" placeholder="Ej: 12" />

                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCantidad"
                                    ErrorMessage="Ingrese la cantidad." Display="Dynamic" CssClass="text-danger" />
                                <asp:CompareValidator runat="server" ControlToValidate="txtCantidad"
                                    Operator="DataTypeCheck" Type="Integer" ErrorMessage="La cantidad debe ser un número entero."
                                    Display="Dynamic" CssClass="text-danger" />
                                <asp:RangeValidator runat="server" ControlToValidate="txtCantidad"
                                    Type="Integer" MinimumValue="1" MaximumValue="1000000"
                                    ErrorMessage="La cantidad debe ser mayor o igual a 1."
                                    Display="Dynamic" CssClass="text-danger" />
                            </div>

                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="txtTotalSin" CssClass="control-label"
                                    Text="Total sin descuento (USD)" />
                                <asp:TextBox ID="txtTotalSin" runat="server" CssClass="form-control" placeholder="Ej: 250.00" />

                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTotalSin"
                                    ErrorMessage="Ingrese el total sin descuento." Display="Dynamic" CssClass="text-danger" />
                                <asp:CompareValidator runat="server" ControlToValidate="txtTotalSin"
                                    Operator="DataTypeCheck" Type="Double" ErrorMessage="Ingrese un monto válido."
                                    Display="Dynamic" CssClass="text-danger" />
                                <asp:RangeValidator runat="server" ControlToValidate="txtTotalSin"
                                    Type="Double" MinimumValue="0.01" MaximumValue="99999999"
                                    ErrorMessage="El total debe ser mayor a 0." Display="Dynamic" CssClass="text-danger" />
                            </div>

                            <asp:Button ID="btnCalcular" runat="server" Text="Calcular"
                                CssClass="btn btn-success" OnClick="btnCalcular_Click" />
                            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar"
                                CssClass="btn btn-default" CausesValidation="false" OnClick="btnLimpiar_Click" />
                        </div>
                    </div>

                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" HeaderText="Corrija lo siguiente:" />
                </div>

                <div class="col-md-6 col-lg-7">
                    <asp:Panel ID="pnlResultado" runat="server" Visible="false" CssClass="panel panel-success">
                        <div class="panel-heading"><strong>Resultado</strong></div>
                        <div class="panel-body">
                            <table class="table table-bordered">
                                <tr>
                                    <th>Cantidad</th>
                                    <td>
                                        <asp:Label ID="lblCant" runat="server" /></td>
                                </tr>
                                <tr>
                                    <th>Total sin descuento</th>
                                    <td>
                                        <asp:Label ID="lblTotalSin" runat="server" /></td>
                                </tr>
                                <tr>
                                    <th>Porcentaje aplicado</th>
                                    <td>
                                        <asp:Label ID="lblPct" runat="server" /></td>
                                </tr>
                                <tr>
                                    <th>Monto del descuento</th>
                                    <td>
                                        <asp:Label ID="lblDesc" runat="server" /></td>
                                </tr>
                                <tr class="success">
                                    <th>Total a pagar</th>
                                    <td>
                                        <asp:Label ID="lblTotalCon" runat="server" /></td>
                                </tr>
                            </table>
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
