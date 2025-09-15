<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ejercicio4_2915992024.aspx.cs" Inherits="Tarea2_2915992024.Ejercicio4_2915992024" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center colorStyle bodyStyle">
        <p class="lead text-justify">
            <strong>Ejercicio 4:</strong> Programa para calcular el descuento y el total a pagar.
        </p>
        <hr />
        <br />
        <div class="container">
            <div class="row">

                <div class="col-md-6 col-lg-5">
                    <div class="panel panel-success">
                        <div class="panel-heading"><strong>Descuento por monto de compra</strong></div>
                        <div class="panel-body">
                            <div class="form-group text-center">
                                <asp:Label runat="server" AssociatedControlID="txtCompra" CssClass="control-label"
                                    Text="Monto de la compra (USD)" />
                                <asp:TextBox ID="txtCompra" runat="server" CssClass="form-control"
                                    placeholder="Ej: 2450.75" />

                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCompra"
                                    ErrorMessage="Ingrese el monto de la compra."
                                    CssClass="text-danger" Display="Dynamic" />
                                <asp:CompareValidator runat="server" ControlToValidate="txtCompra"
                                    Operator="DataTypeCheck" Type="Double"
                                    ErrorMessage="Ingrese un número válido."
                                    CssClass="text-danger" Display="Dynamic" />
                                <asp:RangeValidator runat="server" ControlToValidate="txtCompra"
                                    Type="Double" MinimumValue="0.01" MaximumValue="99999999"
                                    ErrorMessage="El monto debe ser mayor que 0."
                                    CssClass="text-danger" Display="Dynamic" />
                            </div>

                            <asp:Button ID="btnCalcular" runat="server" Text="Calcular"
                                CssClass="btn btn-success" OnClick="btnCalcular_Click" />
                            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar"
                                CssClass="btn btn-default" CausesValidation="false" OnClick="btnLimpiar_Click" />
                        </div>
                    </div>

                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger"
                        HeaderText="Corrija lo siguiente:" />
                </div>

                <div class="col-md-6 col-lg-7">
                    <asp:Panel ID="pnlResultado" runat="server" Visible="false" CssClass="panel panel-success">
                        <div class="panel-heading"><strong>Resultado</strong></div>
                        <div class="panel-body">
                            <table class="table table-bordered">
                                <tr>
                                    <th>Monto de la compra</th>
                                    <td>
                                        <asp:Label ID="lblCompra" runat="server" /></td>
                                </tr>
                                <tr>
                                    <th>Porcentaje aplicado</th>
                                    <td>
                                        <asp:Label ID="lblPct" runat="server" /></td>
                                </tr>
                                <tr>
                                    <th>Valor a descontar</th>
                                    <td>
                                        <asp:Label ID="lblDesc" runat="server" /></td>
                                </tr>
                                <tr class="success">
                                    <th>Total a pagar</th>
                                    <td>
                                        <asp:Label ID="lblTotal" runat="server" /></td>
                                </tr>
                            </table>
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
