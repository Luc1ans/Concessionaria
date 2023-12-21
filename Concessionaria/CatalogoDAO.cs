using System;
using System.Collections.Generic;
using System.Linq;

namespace Concessionaria
{
    internal class CatalogoDAO
    {
        internal static System.Collections.Generic.List<Veiculo> ListarProdutos()
        {
            List<Veiculo> veiculos = null;
            try
            {
                using (var ctx = new CarDBEntities())
                {
                    veiculos = ctx.Veiculoes.ToList();
                }
            }
            catch (Exception ex)
            {

            }

            return veiculos;
        }

        public static Cambio ListarCambio(int cambioID)
        {
            Cambio cambio = null;

            using (var ctx = new CarDBEntities())
            {
                cambio = ctx.Cambios.FirstOrDefault(
                        x => x.IdCambio == cambioID
                    );
            }

            return cambio;
        }

        public static Modelo ListarModelo(int modeloID)
        {
            Modelo modelo = null;

            using (var ctx = new CarDBEntities())
            {

                modelo = ctx.Modeloes.FirstOrDefault(
                    x => x.IdModelo == modeloID);
            }

            return modelo;
        }

        internal static Marca ListarMarca(int versaoID)
        {
            Marca marca = null;

            using (var ctx = new CarDBEntities())
            {

                marca = ctx.Marcas.FirstOrDefault(
                    x => x.IdMarca == versaoID);
            }

            return marca;
        }

        public static Versao ListarVersao(int versaoID)
        {
            Versao versao = null;

            using (var ctx = new CarDBEntities())
            {

                versao = ctx.Versaos.FirstOrDefault(
                    x => x.IdVersao == versaoID);
            }

            return versao;
        }

        internal static Cor ListarCor(int corID)
        {
            Cor cor = null;

            using (var ctx = new CarDBEntities())
            {
                cor = ctx.Cors.FirstOrDefault(
                        x => x.IdCor == corID
                    );
            }

            return cor;
        }

        internal static Combustivel ListarCombustivel(int combustivelID)
        {
            Combustivel combustivel = null;

            using (var ctx = new CarDBEntities())
            {
                combustivel = ctx.Combustivels.FirstOrDefault(
                        x => x.IdCombustivel == combustivelID
                    );
            }

            return combustivel;
        }

        public static Veiculo ListarDesc(string Descricao)
        {
            Veiculo descricao = null;

            using (var ctx = new CarDBEntities())
            {
                descricao = ctx.Veiculoes.FirstOrDefault(
                        x => x.Descricao == Descricao
                    );
            }

            return descricao;
        }

        
        internal static List<Veiculo> ListarProdutosFiltros(int op, string marca, string nome)
        {
            List<Veiculo> veiculos = new List<Veiculo>();
            List<Veiculo> temp = null;
            int maxValor = 0;
            int minvalor = 0;

            if(op == 1)
            {
                maxValor = 0;
                minvalor = 0;
            }
            else if(op == 2)
            {
                maxValor = 350000;
                minvalor = 0;

            }
            else if(op == 3)
            {
                maxValor = 700000;
                minvalor = 350000;
            }
            else if(op == 4)
            {
                maxValor = 0;
                minvalor = 700000;
            }
            else
            {
                maxValor = 0;
                minvalor = 0;
            }

            try
            {
                using (var ctx = new CarDBEntities())
                {
                    temp = ctx.Veiculoes.ToList();
                }


                foreach(Veiculo veic in temp)
                {

                    if (marca == "Selecione.." && op == 0 && (string.IsNullOrEmpty(nome) || veic.Descricao.Contains(nome)))
                    {
                        veiculos.Add(veic);
                    }
                    else if (op == 1 && marca == "Selecione.." && (string.IsNullOrEmpty(nome) || veic.Descricao.Contains(nome)))
                    {
                        veiculos.Add(veic);
                    }
                    else if (op == 1 && marca == Convert.ToString(veic.GetMarca.IdMarca) && (string.IsNullOrEmpty(nome) || veic.Descricao.Contains(nome)))
                    {
                        veiculos.Add(veic);
                    }
                    else if (op == 4 && (veic.PrecoNormal >= minvalor) && marca == "Selecione.." && (string.IsNullOrEmpty(nome) || veic.Descricao.Contains(nome)))
                    {
                        veiculos.Add(veic);
                    }
                    else if (op == 4 && (veic.PrecoNormal >= minvalor) && marca == Convert.ToString(veic.GetMarca.IdMarca) && (string.IsNullOrEmpty(nome) || veic.Descricao.Contains(nome)))
                    {
                        veiculos.Add(veic);
                    }
                    else if (marca == "Selecione.." && (veic.PrecoNormal >= minvalor && veic.PrecoNormal <= maxValor) && (string.IsNullOrEmpty(nome) || veic.Descricao.Contains(nome)))
                    {
                        veiculos.Add(veic);
                    }
                    else if (Convert.ToString(veic.GetMarca.IdMarca) == marca && (veic.PrecoNormal >= minvalor && veic.PrecoNormal <= maxValor) && (string.IsNullOrEmpty(nome) || veic.Descricao.Contains(nome)))
                    {
                        veiculos.Add(veic);
                    }

                }
            }
            catch (Exception ex)
            {

            }

            return veiculos;
        }


        internal static List<Veiculo> ListarProdutosProcura(string paraBuscar)
        {
            List<Veiculo> veiculos = new List<Veiculo>();
            List<Veiculo> temp = null;
            try
            {
                using (var ctx = new CarDBEntities())
                {
                    temp = ctx.Veiculoes.ToList();
                }

                foreach (Veiculo veic in temp)
                {

                    if (veic.Descricao.Contains(paraBuscar))
                    {

                        veiculos.Add(veic);

                    }
                }

                }
            catch (Exception ex)
            {

            }

            return veiculos;
        }
    }
}