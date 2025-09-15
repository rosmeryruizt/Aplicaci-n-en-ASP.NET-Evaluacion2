<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ejercicio5_2915992024.aspx.cs" Inherits="Tarea2_2915992024.Ejercicio5_2915992024" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron text-center colorStyle bodyStyle">
        <p class="lead text-justify">
            <strong>Ejercicio 5:</strong> Programa para calcular la nota final según las evaluaciones realizadas.
        </p>
        <hr />
        <br />
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-5">
                    <div class="panel panel-success">
                        <div class="panel-heading"><strong>Datos del alumno</strong></div>
                        <div class="panel-body">
                            <div class="form-group text-left">
                                <asp:Label runat="server" AssociatedControlID="txtAlumno" Text="Alumno:" CssClass="control-label" />
                                <asp:TextBox ID="txtAlumno" runat="server" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAlumno"
                                    ErrorMessage="Ingrese el nombre del alumno." CssClass="text-danger"
                                    Display="Dynamic" ValidationGroup="notas" />
                            </div>

                            <div class="form-group text-left">
                                <asp:Label runat="server" AssociatedControlID="txtE1" Text="Evaluación 1:" CssClass="control-label" />
                                <asp:TextBox ID="txtE1" runat="server" CssClass="form-control" placeholder="0 - 10" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtE1" ErrorMessage="Ingrese E1."
                                    CssClass="text-danger" Display="Dynamic" ValidationGroup="notas" />
                                <asp:CompareValidator runat="server" ControlToValidate="txtE1" Operator="DataTypeCheck" Type="Double"
                                    ErrorMessage="E1 debe ser numérico." CssClass="text-danger" Display="Dynamic" ValidationGroup="notas" />
                                <asp:RangeValidator runat="server" ControlToValidate="txtE1" Type="Double" MinimumValue="0" MaximumValue="10"
                                    ErrorMessage="E1 debe estar entre 0 y 10." CssClass="text-danger" Display="Dynamic" ValidationGroup="notas" />
                            </div>

                            <div class="form-group text-left">
                                <asp:Label runat="server" AssociatedControlID="txtE2" Text="Evaluación 2:" CssClass="control-label" />
                                <asp:TextBox ID="txtE2" runat="server" CssClass="form-control" placeholder="0 - 10" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtE2" ErrorMessage="Ingrese E2."
                                    CssClass="text-danger" Display="Dynamic" ValidationGroup="notas" />
                                <asp:CompareValidator runat="server" ControlToValidate="txtE2" Operator="DataTypeCheck" Type="Double"
                                    ErrorMessage="E2 debe ser numérico." CssClass="text-danger" Display="Dynamic" ValidationGroup="notas" />
                                <asp:RangeValidator runat="server" ControlToValidate="txtE2" Type="Double" MinimumValue="0" MaximumValue="10"
                                    ErrorMessage="E2 debe estar entre 0 y 10." CssClass="text-danger" Display="Dynamic" ValidationGroup="notas" />
                            </div>

                            <div class="form-group text-left">
                                <asp:Label runat="server" AssociatedControlID="txtE3" Text="Evaluación 3:" CssClass="control-label" />
                                <asp:TextBox ID="txtE3" runat="server" CssClass="form-control" placeholder="0 - 10" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtE3" ErrorMessage="Ingrese E3."
                                    CssClass="text-danger" Display="Dynamic" ValidationGroup="notas" />
                                <asp:CompareValidator runat="server" ControlToValidate="txtE3" Operator="DataTypeCheck" Type="Double"
                                    ErrorMessage="E3 debe ser numérico." CssClass="text-danger" Display="Dynamic" ValidationGroup="notas" />
                                <asp:RangeValidator runat="server" ControlToValidate="txtE3" Type="Double" MinimumValue="0" MaximumValue="10"
                                    ErrorMessage="E3 debe estar entre 0 y 10." CssClass="text-danger" Display="Dynamic" ValidationGroup="notas" />
                            </div>

                            <div class="form-group text-left">
                                <asp:Label runat="server" AssociatedControlID="txtE4" Text="Evaluación 4:" CssClass="control-label" />
                                <asp:TextBox ID="txtE4" runat="server" CssClass="form-control" placeholder="0 - 10" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtE4" ErrorMessage="Ingrese E4."
                                    CssClass="text-danger" Display="Dynamic" ValidationGroup="notas" />
                                <asp:CompareValidator runat="server" ControlToValidate="txtE4" Operator="DataTypeCheck" Type="Double"
                                    ErrorMessage="E4 debe ser numérico." CssClass="text-danger" Display="Dynamic" ValidationGroup="notas" />
                                <asp:RangeValidator runat="server" ControlToValidate="txtE4" Type="Double" MinimumValue="0" MaximumValue="10"
                                    ErrorMessage="E4 debe estar entre 0 y 10." CssClass="text-danger" Display="Dynamic" ValidationGroup="notas" />
                            </div>

                            <div class="form-group text-left">
                                <asp:Label runat="server" AssociatedControlID="txtE5" Text="Evaluación 5:" CssClass="control-label" />
                                <asp:TextBox ID="txtE5" runat="server" CssClass="form-control" placeholder="0 - 10" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtE5" ErrorMessage="Ingrese E5."
                                    CssClass="text-danger" Display="Dynamic" ValidationGroup="notas" />
                                <asp:CompareValidator runat="server" ControlToValidate="txtE5" Operator="DataTypeCheck" Type="Double"
                                    ErrorMessage="E5 debe ser numérico." CssClass="text-danger" Display="Dynamic" ValidationGroup="notas" />
                                <asp:RangeValidator runat="server" ControlToValidate="txtE5" Type="Double" MinimumValue="0" MaximumValue="10"
                                    ErrorMessage="E5 debe estar entre 0 y 10." CssClass="text-danger" Display="Dynamic" ValidationGroup="notas" />
                            </div>

                            <asp:Button ID="btnCalcular" runat="server" Text="Calcular"
                                CssClass="btn btn-success" ValidationGroup="notas" OnClick="btnCalcular_Click" />
                            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar"
                                CssClass="btn btn-default" CausesValidation="false" OnClick="btnLimpiar_Click" />
                        </div>
                    </div>

                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger"
                        HeaderText="Corrija lo siguiente:" ValidationGroup="notas" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
