﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Pokemon
    {
        public int ID {  get; set; }

        [DisplayName("Número")]//COMO LO QUIERO VER EN MI PROGRAMA
        public int Numero {  get; set; }

        public string Nombre {  get; set; }

        [DisplayName("Descripción")]//COMO LO QUIERO VER EN MI PROGRAMA
        public string Descripcion {  get; set; }

        public string UrlImagen {  get; set; }

        public Elemento Tipo { get; set; }

        public Elemento Debilidad { get; set; }

    }
}
