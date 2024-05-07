using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimuladorBancario
{
    public partial class Simulador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            ClsProyeccion proyeccion = new ClsProyeccion(); 
            double monto = double.Parse(txtMonto.Text);
            double interes = double.Parse(ddlTipoCredito.SelectedValue.ToString())/100;
            int plazo = int.Parse(ddlPlazo.SelectedValue.ToString());

            proyeccion.calcularCuota(monto, interes, plazo);
            gdvCuotas.DataSource = proyeccion.generarProyeccion(monto, interes, plazo); //Cargar datos
            gdvCuotas.DataBind(); //Mostrar Datos
        }
    }
}