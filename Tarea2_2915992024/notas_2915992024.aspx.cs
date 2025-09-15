using System;
using System.Data;
using System.Web.UI;

namespace Tarea2_2915992024
{
    public partial class notas_2915992024 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;

            if (Session["Alumno"] == null)
            {
                Response.Redirect("~/leernotas.aspx");
                return;
            }

            string alumno = Convert.ToString(Session["Alumno"]);
            decimal n1 = Convert.ToDecimal(Session["E1"]);
            decimal n2 = Convert.ToDecimal(Session["E2"]);
            decimal n3 = Convert.ToDecimal(Session["E3"]);
            decimal n4 = Convert.ToDecimal(Session["E4"]);
            decimal n5 = Convert.ToDecimal(Session["E5"]);

            // Pesos
            decimal w1 = 0.10m, w2 = 0.15m, w3 = 0.20m, w4 = 0.25m, w5 = 0.30m;

            // Puntos
            decimal p1 = Math.Round(n1 * w1, 2);
            decimal p2 = Math.Round(n2 * w2, 2);
            decimal p3 = Math.Round(n3 * w3, 2);
            decimal p4 = Math.Round(n4 * w4, 2);
            decimal p5 = Math.Round(n5 * w5, 2);
            decimal total = p1 + p2 + p3 + p4 + p5;

            // Tabla para el GridView
            DataTable dt = new DataTable();
            dt.Columns.Add("Evaluacion", typeof(string));
            dt.Columns.Add("Nota", typeof(decimal));
            dt.Columns.Add("Porcentaje", typeof(decimal));
            dt.Columns.Add("Puntos", typeof(decimal));
            dt.Rows.Add("E1", n1, w1, p1);
            dt.Rows.Add("E2", n2, w2, p2);
            dt.Rows.Add("E3", n3, w3, p3);
            dt.Rows.Add("E4", n4, w4, p4);
            dt.Rows.Add("E5", n5, w5, p5);

            gvNotas.DataSource = dt;
            gvNotas.DataBind();

            lblAlumno.Text = alumno;
            lblFinal.Text = total.ToString("0.00");

            // Aprobado/Reprobado 
            bool aprueba = total >= 6.00m;
            divFinal.Attributes["class"] = aprueba ? "alert alert-success" : "alert alert-danger";
            lblEstado.Text = aprueba ? " (Aprobado)" : " (Reprobado)";

            // Limpia la sesión
            Session.Remove("Alumno"); Session.Remove("E1"); Session.Remove("E2"); Session.Remove("E3"); Session.Remove("E4"); Session.Remove("E5");
        }
    }
}