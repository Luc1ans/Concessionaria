using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Concessionaria
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<Veiculo> veiculos = DefaultDAO.ListarProdutos();
                AtualizarLvProdutos(veiculos);

            }
        }

        private void AtualizarLvProdutos(List<Veiculo> veiculos)
        {
            try
            {
                lvVeiculos.DataSource = veiculos;
                lvVeiculos.DataBind();
            }
            catch (Exception ex)
            {

            }
        }
        protected void lvVeiculos_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            var id = e.CommandArgument;
            Response.Redirect("~/Produto.aspx?id=" + id);
        }

        protected void btnProcurarProduto_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Catalogo.aspx?nome=" + txtProcurarProduto.Text);
        }
    }
}