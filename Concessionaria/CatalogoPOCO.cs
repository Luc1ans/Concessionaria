using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Concessionaria
{
    public partial class Veiculo
    {
        //Retorna a classe dessa subclasse
        private Cambio getCambio;
        private Versao getVersao;
        private Marca getMarca;
        private Modelo getModelo;
        private Cor getCor;
        private Combustivel getCombustivel;

        private Veiculo getImgVeic;

        private string getImg;
        private string getRank;
        private string getKM;

        public Cambio GetCambio
        {
            get
            {
                getCambio = CatalogoDAO.ListarCambio(CambioID);
                return getCambio;
            }
        }

        public Versao GetVersao
        {
            get
            {
                getVersao = CatalogoDAO.ListarVersao(VersaoID);
                return getVersao;
            }
        }

        public Modelo GetModelo
        {
            get
            {
                getModelo = CatalogoDAO.ListarModelo(GetVersao.ModeloID);
                return getModelo;
            }
        }

        public Marca GetMarca
        {
            get
            {
                Modelo modelo = CatalogoDAO.ListarModelo(GetVersao.ModeloID);
                getMarca = CatalogoDAO.ListarMarca((int)modelo.MarcaID);
                return getMarca;
            }
        }

        public string GetImg
        {
            get
            {
                getImgVeic = CatalogoDAO.ListarDesc(Descricao);
                getImg = "img/" + getImgVeic.Descricao + ".png";

                return getImg;
            }
        }

        public Cor GetCor
        {
            get
            {
                getCor = CatalogoDAO.ListarCor(CorID);
                return getCor;
            }
        }

        public Combustivel GetCombustivel
        {
            get
            {
                getCombustivel = CatalogoDAO.ListarCombustivel(CombustivelID);
                return getCombustivel;
            }
        }

        public char GetUltimoPlaca
        {
            get
            {
                char ultimoDigito = Placa[Placa.Length - 1];

                return ultimoDigito;
            }
        }

        public string GetKM
        {
            get
            {
                if(Quilometragem == null || Quilometragem == 0)
                {
                    getKM = "Zero Km";
                }
                else
                {
                    getKM = Convert.ToString(Quilometragem) + " KM";
                }

                return getKM;
            }
        }

        public string GetRank
        {
            get
            {
                getImgVeic = CatalogoDAO.ListarDesc(Descricao);
                getRank = "TOP " + Convert.ToInt32(getImgVeic.Ranking) + " no ranking da loja";

                return getRank;
            }
        }

    }

}