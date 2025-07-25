using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Direccion
    {
        public string Calle { get; set; }
        public int Altura { get; set; }
    }

    public class DireccionNegocio
    {
        List<Direccion> listarDirecciones() 
        {
        
            List<Direccion> listaDirec = new List<Direccion>();

            listaDirec.Add(new Direccion());
            listaDirec.Add(new Direccion());

            listaDirec[0].Calle = "Pardo";
            listaDirec[0].Altura = 1851;

            listaDirec[1].Calle = "Alsina";
            listaDirec[1].Altura = 1275;

            return listaDirec;
        }
    }
}
