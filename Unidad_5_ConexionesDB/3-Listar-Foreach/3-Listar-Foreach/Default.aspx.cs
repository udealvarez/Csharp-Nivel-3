﻿using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace _2_Listar_con_SP
{
    public partial class Default : System.Web.UI.Page
    {
        public List<Pokemon> ListaPokemon { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            ListaPokemon = negocio.listarConSP();


        }
    }
}