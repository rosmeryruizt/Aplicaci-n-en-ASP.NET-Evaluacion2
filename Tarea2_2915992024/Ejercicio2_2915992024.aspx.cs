using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea2_2915992024
{
    public partial class Ejercicio2_2915992024 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnlResultado.Visible = false;
            }
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            // Si hay validadores en la página y no pasa, no calculamos
            if (!Page.IsValid)
            {
                pnlResultado.Visible = false;
                return;
            }

            decimal salarioBruto;
            if (!decimal.TryParse(txtSalario.Text, out salarioBruto))
            {
                pnlResultado.Visible = false;
                return;
            }

            // Tasas (todas empiezan en 0 y se activan con if)
            decimal tasaIsss = 0m;
            decimal tasaRenta = 0m;
            decimal tasaAfp = 0m;
            decimal tasaSeguro = 0m;

            if (salarioBruto > 657.25m)
            {
                tasaIsss = 0.03m;
            }

            if (salarioBruto > 857.15m)
            {
                tasaRenta = 0.10m;
            }

            if (salarioBruto > 450.00m)
            {
                tasaAfp = 0.05m;
            }

            if (salarioBruto < 1000m)
            {
                tasaSeguro = 0.04m;
            }
            else
            {
                tasaSeguro = 0.06m;
            }

            // Descuentos
            decimal descIsss = Math.Round(salarioBruto * tasaIsss, 2);
            decimal descRenta = Math.Round(salarioBruto * tasaRenta, 2);
            decimal descAfp = Math.Round(salarioBruto * tasaAfp, 2);
            decimal descSeguro = Math.Round(salarioBruto * tasaSeguro, 2);

            decimal totalDescuentos = descIsss + descRenta + descAfp + descSeguro;
            decimal salarioNeto = Math.Round(salarioBruto - totalDescuentos, 2);

            // Salida formateada
            lblSalario.Text = salarioBruto.ToString("C2");

            if (tasaIsss > 0m) lblISSSPct.Text = (tasaIsss * 100m).ToString("0") + "%";
            else lblISSSPct.Text = "No aplica";

            if (tasaRenta > 0m) lblRentaPct.Text = (tasaRenta * 100m).ToString("0") + "%";
            else lblRentaPct.Text = "No aplica";

            if (tasaAfp > 0m) lblAFPPct.Text = (tasaAfp * 100m).ToString("0") + "%";
            else lblAFPPct.Text = "No aplica";

            lblSeguroPct.Text = (tasaSeguro * 100m).ToString("0") + "%";

            lblISSS.Text = descIsss.ToString("C2");
            lblRenta.Text = descRenta.ToString("C2");
            lblAFP.Text = descAfp.ToString("C2");
            lblSeguro.Text = descSeguro.ToString("C2");

            lblTotalDesc.Text = totalDescuentos.ToString("C2");
            lblNeto.Text = salarioNeto.ToString("C2");

            pnlResultado.Visible = true;
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtSalario.Text = "";

            lblSalario.Text = "";
            lblISSSPct.Text = "";
            lblRentaPct.Text = "";
            lblAFPPct.Text = "";
            lblSeguroPct.Text = "";

            lblISSS.Text = "";
            lblRenta.Text = "";
            lblAFP.Text = "";
            lblSeguro.Text = "";

            lblTotalDesc.Text = "";
            lblNeto.Text = "";

            pnlResultado.Visible = false;

            foreach (BaseValidator v in Page.Validators)
            {
                v.IsValid = true;
            }
        }
    }
}