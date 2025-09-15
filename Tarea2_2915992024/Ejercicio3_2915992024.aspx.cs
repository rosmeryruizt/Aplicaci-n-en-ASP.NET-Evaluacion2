using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea2_2915992024
{
    public partial class Ejercicio3_2915992024 : Page
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
            if (!Page.IsValid)
            {
                pnlResultado.Visible = false;
                return;
            }

            // Lectura de datos
            int unidades;
            if (!int.TryParse(txtCantidad.Text, out unidades))
            {
                pnlResultado.Visible = false;
                return;
            }

            decimal importeBase;
            if (!decimal.TryParse(txtTotalSin.Text, out importeBase))
            {
                pnlResultado.Visible = false;
                return;
            }

            // Determinar porcentaje de descuento
            decimal porcentajeDescuento;

            if (unidades >= 1 && unidades <= 5)
            {
                porcentajeDescuento = 0.10m;
            }
            else if (unidades >= 6 && unidades <= 10)
            {
                porcentajeDescuento = 0.20m;
            }
            else if (unidades >= 11 && unidades <= 15)
            {
                porcentajeDescuento = 0.30m;
            }
            else if (unidades >= 16 && unidades <= 20)
            {
                porcentajeDescuento = 0.40m;
            }
            else
            {
                porcentajeDescuento = 0.50m;
            }

            // Cálculos (redondeo a 2 decimales)
            decimal montoDescuento = Math.Round(importeBase * porcentajeDescuento, 2);
            decimal importeFinal = Math.Round(importeBase - montoDescuento, 2);

            // Salida en etiquetas
            lblCant.Text = unidades.ToString();
            lblTotalSin.Text = importeBase.ToString("C2");
            lblPct.Text = (porcentajeDescuento * 100m).ToString("0") + "%";
            lblDesc.Text = montoDescuento.ToString("C2");
            lblTotalCon.Text = importeFinal.ToString("C2");

            pnlResultado.Visible = true;
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            // Limpiar entradas
            txtCantidad.Text = "";
            txtTotalSin.Text = "";

            // Limpiar salidas
            lblCant.Text = "";
            lblTotalSin.Text = "";
            lblPct.Text = "";
            lblDesc.Text = "";
            lblTotalCon.Text = "";

            pnlResultado.Visible = false;

            // Resetear validadores
            foreach (BaseValidator v in Page.Validators)
            {
                v.IsValid = true;
            }
        }
    }
}
