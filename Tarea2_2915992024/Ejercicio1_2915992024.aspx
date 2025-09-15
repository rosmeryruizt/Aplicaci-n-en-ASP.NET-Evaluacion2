<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ejercicio1_2915992024.aspx.cs" Inherits="Tarea2_2915992024.Ejercicio1_2915992024" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center colorStyle bodyStyle">
        <br />
        <p class="lead text-justify">
            <strong>Ejercicio 1:</strong> Programa para calcular el descuento y calcular el total a pagar.       
        </p>
        <hr />
        <br />
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-5">
                    <div class="panel panel-success">
                        <div class="panel-heading"><strong>Calcular descuento</strong></div>
                        <div class="panel-body">
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="txtMonto"
                                    CssClass="control-label" Text="Monto de la compra" />
                                <asp:TextBox ID="txtMonto" runat="server" CssClass="form-control" placeholder="Ej: 150.75" />

                                <asp:RequiredFieldValidator ID="rfvMonto" runat="server"
                                    ControlToValidate="txtMonto"
                                    ErrorMessage="Ingrese el monto."
                                    Display="Dynamic" CssClass="text-danger" />

                                <asp:CompareValidator ID="cmpMonto" runat="server"
                                    ControlToValidate="txtMonto" Operator="DataTypeCheck" Type="Double"
                                    ErrorMessage="Ingrese un número válido."
                                    Display="Dynamic" CssClass="text-danger" />

                                <asp:RangeValidator ID="rngMonto" runat="server"
                                    ControlToValidate="txtMonto" Type="Double"
                                    MinimumValue="1" MaximumValue="99999999"
                                    ErrorMessage="El monto debe ser mayor o igual a 1."
                                    Display="Dynamic" CssClass="text-danger" />
                            </div>

                            <asp:Button ID="btnCalcular" runat="server" Text="Calcular"
                                CssClass="btn btn-success" OnClick="btnCalcular_Click" />

                            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar"
                                CssClass="btn btn-default"
                                CausesValidation="false"
                                OnClick="btnLimpiar_Click" />
                        </div>
                    </div>

                    <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                        CssClass="alert alert-danger" HeaderText="Corrija lo siguiente:" />
                </div>

                <div class="col-md-6 col-lg-7">
                    <asp:Panel ID="pnlResultado" runat="server" Visible="false" CssClass="panel panel-success">
                        <div class="panel-heading"><strong>Resultado</strong></div>
                        <div class="panel-body">
                            <table class="table table-bordered">
                                <tr>
                                    <th>Monto comprado</th>
                                    <td>
                                        <asp:Label ID="lblMonto" runat="server" /></td>
                                </tr>
                                <tr>
                                    <th>Porcentaje aplicado</th>
                                    <td>
                                        <asp:Label ID="lblPorcentaje" runat="server" /></td>
                                </tr>
                                <tr>
                                    <th>Monto del descuento</th>
                                    <td>
                                        <asp:Label ID="lblDescuento" runat="server" /></td>
                                </tr>
                                <tr>
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
