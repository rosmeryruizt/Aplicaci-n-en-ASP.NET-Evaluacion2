<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ejercicio2_2915992024.aspx.cs" Inherits="Tarea2_2915992024.Ejercicio2_2915992024" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center colorStyle bodyStyle">
        <p class="lead text-justify">
            <strong>Ejercicio 2:</strong> Programa para calcular el salario neto, realizar descuentos ISSS, Renta, AFP y Seguro.
        </p>
        <hr />
        <br />
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-5">
                    <div class="panel panel-success">
                        <div class="panel-heading"><strong>Cálculo de salario neto</strong></div>
                        <div class="panel-body">
                            <div class="form-group">
                                <asp:Label runat="server" AssociatedControlID="txtSalario" CssClass="control-label"
                                    Text="Salario bruto (USD)" />
                                <asp:TextBox ID="txtSalario" runat="server" CssClass="form-control" placeholder="Ej: 985.50" />

                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtSalario"
                                    ErrorMessage="Ingrese el salario." Display="Dynamic" CssClass="text-danger" />
                                <asp:CompareValidator runat="server" ControlToValidate="txtSalario" Operator="DataTypeCheck" Type="Double"
                                    ErrorMessage="Ingrese un número válido." Display="Dynamic" CssClass="text-danger" />
                                <asp:RangeValidator runat="server" ControlToValidate="txtSalario" Type="Double"
                                    MinimumValue="0.01" MaximumValue="99999999"
                                    ErrorMessage="El salario debe ser mayor a 0." Display="Dynamic" CssClass="text-danger" />
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
                                    <th>Salario bruto</th>
                                    <td>
                                        <asp:Label ID="lblSalario" runat="server" /></td>
                                </tr>
                                <tr>
                                    <th>ISSS</th>
                                    <td>
                                        <asp:Label ID="lblISSSPct" runat="server" />
                                        → 
                <asp:Label ID="lblISSS" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <th>Renta</th>
                                    <td>
                                        <asp:Label ID="lblRentaPct" runat="server" />
                                        → 
                <asp:Label ID="lblRenta" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <th>AFP</th>
                                    <td>
                                        <asp:Label ID="lblAFPPct" runat="server" />
                                        → 
                <asp:Label ID="lblAFP" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <th>Seguro</th>
                                    <td>
                                        <asp:Label ID="lblSeguroPct" runat="server" />
                                        → 
                <asp:Label ID="lblSeguro" runat="server" />
                                    </td>
                                </tr>
                                <tr class="info">
                                    <th>Total descuentos</th>
                                    <td>
                                        <asp:Label ID="lblTotalDesc" runat="server" /></td>
                                </tr>
                                <tr class="success">
                                    <th>Salario neto</th>
                                    <td>
                                        <asp:Label ID="lblNeto" runat="server" /></td>
                                </tr>
                            </table>
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
