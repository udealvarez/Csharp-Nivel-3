using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Direccion
    {
        public int Id { get; set; }
        public string Calle { get; set; }
        public int Altura { get; set; }
        public string Ciudad { get; set; }
        public string Provincia { get; set; }
        public int CodigoPostal { get; set; }
        public DateTime FechaRegistro { get; set; }
        public bool EsComercial { get; set; }
    }

    public class DireccionNegocio
    {
        public List<Direccion> listarDirecciones() 
        {
        
            List<Direccion> listaDirec = new List<Direccion>();

            for (int i = 0; i < 8; i++)
            {
                listaDirec.Add(new Direccion());
            }

            listaDirec[0].Id = 1;
            listaDirec[0].Calle = "Pardo";
            listaDirec[0].Altura = 1851;
            listaDirec[0].Ciudad = "Bella Vista";
            listaDirec[0].Provincia = "Buenos aires";
            listaDirec[0].CodigoPostal = 1661;
            listaDirec[0].FechaRegistro = DateTime.Now;
            listaDirec[0].EsComercial = false;

            listaDirec[1].Id = 2;
            listaDirec[1].Calle = "Mitre";
            listaDirec[1].Altura = 1023;
            listaDirec[1].Ciudad = "San Miguel";
            listaDirec[1].Provincia = "Buenos Aires";
            listaDirec[1].CodigoPostal = 1663;
            listaDirec[1].FechaRegistro = DateTime.Now.AddDays(-1);
            listaDirec[1].EsComercial = true;

            listaDirec[2].Id = 3;
            listaDirec[2].Calle = "Avenida Rivadavia";
            listaDirec[2].Altura = 4500;
            listaDirec[2].Ciudad = "CABA";
            listaDirec[2].Provincia = "Ciudad Autónoma de Buenos Aires";
            listaDirec[2].CodigoPostal = 1406;
            listaDirec[2].FechaRegistro = DateTime.Now.AddDays(-2);
            listaDirec[2].EsComercial = false;

            listaDirec[3].Id = 4;
            listaDirec[3].Calle = "San Martín";
            listaDirec[3].Altura = 789;
            listaDirec[3].Ciudad = "Tigre";
            listaDirec[3].Provincia = "Buenos Aires";
            listaDirec[3].CodigoPostal = 1648;
            listaDirec[3].FechaRegistro = DateTime.Now.AddDays(-3);
            listaDirec[3].EsComercial = true;

            listaDirec[4].Id = 5;
            listaDirec[4].Calle = "Belgrano";
            listaDirec[4].Altura = 1320;
            listaDirec[4].Ciudad = "La Plata";
            listaDirec[4].Provincia = "Buenos Aires";
            listaDirec[4].CodigoPostal = 1900;
            listaDirec[4].FechaRegistro = DateTime.Now.AddDays(-4);
            listaDirec[4].EsComercial = false;

            listaDirec[5].Id = 6;
            listaDirec[5].Calle = "Corrientes";
            listaDirec[5].Altura = 2500;
            listaDirec[5].Ciudad = "Morón";
            listaDirec[5].Provincia = "Buenos Aires";
            listaDirec[5].CodigoPostal = 1708;
            listaDirec[5].FechaRegistro = DateTime.Now.AddDays(-5);
            listaDirec[5].EsComercial = true;

            listaDirec[6].Id = 7;
            listaDirec[6].Calle = "Av. del Libertador";
            listaDirec[6].Altura = 3200;
            listaDirec[6].Ciudad = "Vicente López";
            listaDirec[6].Provincia = "Buenos Aires";
            listaDirec[6].CodigoPostal = 1638;
            listaDirec[6].FechaRegistro = DateTime.Now.AddDays(-6);
            listaDirec[6].EsComercial = false;

            listaDirec[7].Id = 8;
            listaDirec[7].Calle = "Sarmiento";
            listaDirec[7].Altura = 1100;
            listaDirec[7].Ciudad = "Luján";
            listaDirec[7].Provincia = "Buenos Aires";
            listaDirec[7].CodigoPostal = 6700;
            listaDirec[7].FechaRegistro = DateTime.Now.AddDays(-7);
            listaDirec[7].EsComercial = true;

            return listaDirec;
        }
    }
}
