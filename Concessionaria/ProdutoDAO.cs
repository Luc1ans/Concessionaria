using System;
using System.Collections.Generic;
using System.Linq;

namespace Concessionaria
{
    internal class ProdutoDAO
    {
        internal static List<Veiculo> BuscarIDVeiculoList(int id)
        {
            List<Veiculo> lista = new List<Veiculo>();
            Veiculo veiculo = null;

            using (var ctx = new CarDBEntities())
            {
                veiculo = ctx.Veiculoes.FirstOrDefault(
                        x => x.IdVeiculo == id
                    );
            }
            lista.Add(veiculo);
            return lista;
        }

        internal static Veiculo BuscarIDVeiculoObj(int id)
        {
            Veiculo veiculo = null;

            using (var ctx = new CarDBEntities())
            {
                veiculo = ctx.Veiculoes.FirstOrDefault(
                        x => x.IdVeiculo == id
                    );
            }
            return veiculo;
        }

        internal static List<Opcional> ListarOPCS(Veiculo idVeiculo)
        {
            List<Opcional> listaOPC = new List<Opcional>();
            List<int> listaDeInteiros = new List<int>();
            List<Opcionaisveiculo> listaTotalOpcVeic = null;

            using (var ctx = new CarDBEntities())
            {
                listaTotalOpcVeic = ctx.Opcionaisveiculos.ToList();
            }

            foreach(Opcionaisveiculo item in listaTotalOpcVeic)
            {
                if(item.IDVeiculo == idVeiculo.IdVeiculo)
                {
                    listaDeInteiros.Add(item.IDOpcional);
                }
            }

            foreach(int num in listaDeInteiros)
            {
                using (var ctx = new CarDBEntities())
                {
                    listaOPC.Add(ctx.Opcionals.FirstOrDefault(
                        x => x.IdOpcional == num
                    ));
                }
            }

            return listaOPC;
        }
    }
}