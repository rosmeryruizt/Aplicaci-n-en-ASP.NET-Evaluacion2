using System;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea2_2915992024
{
    public partial class Ejercicio1_2915992024 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            pnlResultado.Visible = false;
        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid)
            {
                OcultarResultado();
                return;
            }

            decimal importeIngresado;

            // Intenta leer el monto respetando la cultura actual (punto/coma)
            if (!decimal.TryParse(txtMonto.Text, NumberStyles.Number, CultureInfo.CurrentCulture, out importeIngresado))
            {
                OcultarResultado();
                return;
            }

            // Determina la tasa según tramos
            decimal tasa = DeterminarTasa(importeIngresado);

            // Cálculos con redondeo a 2 decimales
            decimal rebaja = decimal.Round(importeIngresado * tasa, 2);
            decimal aPagar = decimal.Round(importeIngresado - rebaja, 2);

            // Mostrar en etiquetas
            lblMonto.Text = importeIngresado.ToString("C2");
            lblPorcentaje.Text = $"{tasa * 100m:0}%";
            lblDescuento.Text = rebaja.ToString("C2");
            lblTotal.Text = aPagar.ToString("C2");

            pnlResultado.Visible = true;
        }

        private static decimal DeterminarTasa(decimal valor)
        {
            if (valor >= 1m && valor <= 100m) return 0.10m;
            if (valor <= 400m) return 0.15m; // ya implica >100m por la condición anterior
            if (valor <= 600m) return 0.20m;
            return 0.25m;
        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtMonto.Text = string.Empty;
            LimpiarEtiquetas();
            pnlResultado.Visible = false;

            // Resetea validadores
            foreach (BaseValidator v in Page.Validators)
                v.IsValid = true;
        }

        private void LimpiarEtiquetas()
        {
            lblMonto.Text = string.Empty;
            lblPorcentaje.Text = string.Empty;
            lblDescuento.Text = string.Empty;
            lblTotal.Text = string.Empty;
        }

        private void OcultarResultado()
        {
            pnlResultado.Visible = false;
            LimpiarEtiquetas();
        }
    }
}
