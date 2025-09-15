using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea2_2915992024
{
    public partial class Ejercicio7_2915992024 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Llenar 1..100 en un DataTable con columna N (básico)
                DataTable dtNums = new DataTable();
                dtNums.Columns.Add("N", typeof(int));

                for (int i = 1; i <= 100; i++)
                {
                    dtNums.Rows.Add(i);
                }

                dlNumeros.DataSource = dtNums;
                dlNumeros.DataBind();
            }
        }

        protected void Numero_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName != "sel") return;

            int n;
            if (!int.TryParse(e.CommandArgument.ToString(), out n)) return;

            DataTable dt = new DataTable();
            dt.Columns.Add("Operacion", typeof(string));
            dt.Columns.Add("Resultado", typeof(int));

            for (int i = 1; i <= 10; i++)
            {
                dt.Rows.Add(n + " × " + i, n * i);
            }

            gvTabla.DataSource = dt;
            gvTabla.DataBind();

            lblNum.Text = n.ToString();
            pnlTabla.Visible = true;
        }
    }
}
