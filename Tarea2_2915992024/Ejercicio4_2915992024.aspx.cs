using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea2_2915992024
{
    public partial class Ejercicio4_2915992024 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                pnlResultado.Visible = false;
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                pnlResultado.Visible = false;
                return;
            }

            decimal monto;
            if (!decimal.TryParse(txtCompra.Text, out monto))
            {
                pnlResultado.Visible = false;
                return;
            }

            // Tasa simple por tramos
            decimal tasa;
            if (monto <= 1000m)
                tasa = 0.10m;
            else if (monto <= 3000m)
                tasa = 0.20m;
            else
                tasa = 0.30m;

            decimal rebaja = Math.Round(monto * tasa, 2);
            decimal pagar = Math.Round(monto - rebaja, 2);

            lblCompra.Text = monto.ToString("C2");
            lblPct.Text = (tasa * 100m).ToString("0") + "%";
            lblDesc.Text = rebaja.ToString("C2");
            lblTotal.Text = pagar.ToString("C2");

            pnlResultado.Visible = true;
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtCompra.Text = "";

            lblCompra.Text = "";
            lblPct.Text = "";
            lblDesc.Text = "";
            lblTotal.Text = "";

            pnlResultado.Visible = false;

            foreach (BaseValidator val in Page.Validators)
                val.IsValid = true;
        }
    }
}
