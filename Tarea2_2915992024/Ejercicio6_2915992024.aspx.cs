using System;
using System.Data;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea2_2915992024
{
    public partial class Ejercicio6_2915992024 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dlNumeros.DataSource = Enumerable.Range(1, 10).Select(n => new { N = n });
                dlNumeros.DataBind();

                for (int i = 0; i < dlNumeros.Items.Count; i++)
                {
                    var item = dlNumeros.Items[i];
                    var btn = (ImageButton)item.FindControl("btnNum");
                    int n = i + 1;
                    btn.ImageUrl = SvgNumberDataUri(n);
                }
            }
        }

        protected void Numero_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName != "sel") return;
            int n = Convert.ToInt32(e.CommandArgument);

            var dt = new DataTable();
            dt.Columns.Add("Operacion");
            dt.Columns.Add("Resultado", typeof(int));

            for (int i = 1; i <= 10; i++)
            {
                dt.Rows.Add(string.Format("{0} × {1}", n, i), n * i);
            }

            gvTabla.DataSource = dt;
            gvTabla.DataBind();

            lblNum.Text = n.ToString();
            pnlTabla.Visible = true;
        }

        private string SvgNumberDataUri(int n)
        {
            string[] colors = {
                "#A8E6CF","#BDE0FE","#A8E6CF","#BDE0FE","#A8E6CF",
                "#CDB4DB","#A0E7E5","#CDB4DB","#A0E7E5","#CDB4DB"
            };
            string bg = colors[(n - 1) % colors.Length];

            string svg =
            $@"<svg xmlns='http://www.w3.org/2000/svg' width='110' height='110'>
            <rect width='100%' height='100%' rx='12' ry='12' fill='{bg}' />
            <text x='50%' y='58%' text-anchor='middle'
            font-family='Segoe UI, Arial' font-size='62' fill='#ffffff'>{n}</text>
            </svg>";

            string encoded = Uri.EscapeDataString(svg);
            return "data:image/svg+xml;utf8," + encoded;
        }
    }
}