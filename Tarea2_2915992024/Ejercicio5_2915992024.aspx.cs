using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea2_2915992024
{
    public partial class Ejercicio5_2915992024 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            // Guardar en Session
            Session["Alumno"] = txtAlumno.Text.Trim();

            decimal n1, n2, n3, n4, n5;
            if (!decimal.TryParse(txtE1.Text, out n1)) return;
            if (!decimal.TryParse(txtE2.Text, out n2)) return;
            if (!decimal.TryParse(txtE3.Text, out n3)) return;
            if (!decimal.TryParse(txtE4.Text, out n4)) return;
            if (!decimal.TryParse(txtE5.Text, out n5)) return;

            Session["E1"] = n1; Session["E2"] = n2; Session["E3"] = n3; Session["E4"] = n4; Session["E5"] = n5;

            Response.Redirect("~/notas_2915992024.aspx");
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtAlumno.Text = "";
            txtE1.Text = ""; txtE2.Text = ""; txtE3.Text = ""; txtE4.Text = ""; txtE5.Text = "";

            foreach (BaseValidator v in Page.Validators) v.IsValid = true;
        }
    }
}
