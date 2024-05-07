using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SimuladorBancario
{
    public class ClsProyeccion
    {
        int mes;
        double saldoInicial;
        double cuota;
        double intereses;
        double capital;
        double saldoFinal;

        public int Mes { get => mes; set => mes = value; }
        public double SaldoInicial { get => saldoInicial; set => saldoInicial = value; }
        public double Cuota { get => cuota; set => cuota = value; }
        public double Intereses { get => intereses; set => intereses = value; }
        public double Capital { get => capital; set => capital = value; }
        public double SaldoFinal { get => saldoFinal; set => saldoFinal = value; }

        public void calcularCuota(double monto, double interes, int plazo)
        {
            this.cuota = monto * (Math.Pow((1+interes),plazo)*interes) 
                                                        / 
                                    (Math.Pow((1+interes), plazo)-1);
        }

        public List<ClsProyeccion> generarProyeccion(double monto, double interes, int plazo)
        {
            List<ClsProyeccion> listaCuotas = new List<ClsProyeccion>();
            double auxSaldoFinal = 0;
            for (int i = 1; i <= plazo; i++)
            {
                ClsProyeccion objProyeccion = new ClsProyeccion();
                objProyeccion.mes = i;

                if(i == 1)
                {
                    objProyeccion.saldoInicial = monto;

                } else
                {
                    objProyeccion.saldoInicial = auxSaldoFinal;
                }
                objProyeccion.cuota = this.cuota;
                objProyeccion.intereses = objProyeccion.saldoInicial * interes;
                objProyeccion.capital = objProyeccion.cuota - objProyeccion.intereses;
                objProyeccion.saldoFinal = objProyeccion.saldoInicial - objProyeccion.capital;
                auxSaldoFinal = objProyeccion.saldoFinal;
                listaCuotas.Add(objProyeccion);
            }
            return listaCuotas;
        }
    }
}