using System;
using System.Collections.Generic;
using System.Linq;

namespace Concessionaria
{
    internal class DefaultDAO
    {
        internal static List<Veiculo> ListarProdutos()
        {
            List<Veiculo> ListaCompleta = null;
            List<Veiculo> ListaParaEnvio = new List<Veiculo>();
            using (var ctx = new CarDBEntities())
            {
                ListaCompleta = ctx.Veiculoes.OrderBy(x => x.DataCadastro).ToList();
                ListaCompleta.Reverse();
            }

            foreach(Veiculo v in ListaCompleta)
            {
                if(ListaParaEnvio.Count() < 16)
                {
                    ListaParaEnvio.Add(v);
                }
            }

            return ListaParaEnvio;
        }
    }
}