<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="notas_2915992024.aspx.cs" Inherits="Tarea2_2915992024.notas_2915992024" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron text-center colorStyle bodyStyle">
        <p class="lead text-justify">
            <strong>Ejercicio 5:</strong> Programa para calcular la nota final según las evaluaciones realizadas.
        </p>
        <hr />
        <br />
        <div class="container">
            <p><strong>Alumno:</strong>
                <asp:Label ID="lblAlumno" runat="server" /></p>

            <asp:GridView ID="gvNotas" runat="server" AutoGenerateColumns="False"
                CssClass="table table-bordered table-striped" HeaderStyle-CssClass="text-center">
                <Columns>
                    <asp:BoundField DataField="Evaluacion" HeaderText="Evaluación" />
                    <asp:BoundField DataField="Nota" HeaderText="Nota" DataFormatString="{0:0.00}" />
                    <asp:BoundField DataField="Porcentaje" HeaderText="Porcentaje" DataFormatString="{0:P0}" HtmlEncode="false" />
                    <asp:BoundField DataField="Puntos" HeaderText="Puntos ganados" DataFormatString="{0:0.00}" />
                </Columns>
            </asp:GridView>

            <div class="alert" runat="server" id="divFinal" classCss="alert alert-success">
                <strong>Nota final:</strong>
                <asp:Label ID="lblFinal" runat="server" />
                <asp:Label ID="lblEstado" runat="server" />
            </div>

            <a href="Ejercicio5_2915992024.aspx" class="btn btn-default">Regresar</a>
        </div>
    </div>

</asp:Content>
