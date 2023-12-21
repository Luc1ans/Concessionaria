using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Concessionaria
{
    public partial class Produto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                var queryString_ID = Request.QueryString["id"];
                if (queryString_ID != null)
                {
                    int id = Convert.ToInt32(queryString_ID);
                    List<Veiculo> VeiculoProduto = ProdutoDAO.BuscarIDVeiculoList(id);
                    PreencherDados(VeiculoProduto);
                }
                else
                {
                    Response.Redirect("~/Catalogo.aspx");
                }
            }
        }

        private void PreencherDados(List<Veiculo> veiculo)
        {
            try
            {
                List<Opcional> opcs = listarOpcionais(veiculo[0]);

                lvOpcionais.DataSource = opcs;
                lvOpcionais.DataBind();
                ItemProduto.DataSource = veiculo;
                ItemProduto.DataBind();


            }
            catch (Exception ex)
            {
            }

        }

        private List<Opcional> listarOpcionais(Veiculo idVeiculo)
        {
            List<Opcional> opcs = ProdutoDAO.ListarOPCS(idVeiculo);

            return opcs;
        }

        protected void btnProcurarProduto_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Catalogo.aspx?nome=" + txtProcurarProduto.Text);
        }

        protected void btnEnviarMensagem_Click(object sender, EventArgs e)
        {
            if(idNomeForm.Text != "" && idEmailForm.Text != "" && idMensagemForm.Text != "" && idTelefoneForm.Text != "")
            {
                MensagemEnviada.InnerHtml = "Obriagdo " + idNomeForm.Text + "! <br> Enviaremos uma resposta ao seu email: " + idEmailForm.Text;
                idEmailForm.Text = "";
                idMensagemForm.Text = "";
                idNomeForm.Text = "";
                idTelefoneForm.Text = "";
            }
            else
            {
                MensagemEnviada.InnerHtml = "Preencha seus dados para enviar mensagens";
            }
        }
    }
}