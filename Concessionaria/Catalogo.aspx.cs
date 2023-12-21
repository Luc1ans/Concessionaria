using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Concessionaria
{
    public partial class Catalogo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                List<Marca> marcas = MarcasDAO.ListarMarcas();
                AtualizarDDLMarcas(marcas);

                var queryString_nome = Request.QueryString["nome"];
                if(queryString_nome == "")
                {
                    List<Veiculo> veiculos = CatalogoDAO.ListarProdutos();
                    AtualizarLvProdutos(veiculos);
                    btnTodosResult.Visible = false;
                }
                else if(queryString_nome == null)
                {

                    List<Veiculo> veiculos = CatalogoDAO.ListarProdutos();
                    AtualizarLvProdutos(veiculos);
                    btnTodosResult.Visible = false;
                }
                else
                {
                    List<Veiculo> veiculos = CatalogoDAO.ListarProdutosProcura(queryString_nome);
                    AtualizarLvProdutos(veiculos);
                    txtBuscar.InnerText = "Todos resultados com: " + queryString_nome;
                    btnTodosResult.Visible = true;
                }
            }
        }

        private void AtualizarDDLMarcas(List<Marca> marcas)
        {
            DDLMarcas.DataSource = marcas;
            DDLMarcas.DataTextField = "Descricao";
            DDLMarcas.DataValueField = "IdMarca";
            DDLMarcas.DataBind();
            DDLMarcas.Items.Insert(0, "Selecione..");
        }

        private void AtualizarLvProdutos(List<Veiculo> veiculos)
        {
            try
            {
                foreach (Veiculo veiculo in veiculos) { 
                    if(veiculo.Quilometragem == null)
                    {
                        veiculo.Quilometragem = 0;
                    }
                }
                if(veiculos.Count() == 0)
                {
                    txtNEncontrados.InnerText = "Nenhum veiculo encontrado!";
                }
                else
                {
                    txtNEncontrados.InnerText = "";
                }

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

        protected void btnFiltro_Click(object sender, EventArgs e)
        {

            int op = 1;
            if (RadioButtonList1.SelectedValue == "primeiraOp")
            {
                op = 1;
            }
            else if(RadioButtonList1.SelectedValue == "segundaOp")
            {
                op = 2;
            }
            else if(RadioButtonList1.SelectedValue == "terceiraOp") {
                op = 3;
            }
            else if(RadioButtonList1.SelectedValue == "quartaOp")
            {
                op = 4;
            }


          

            List<Veiculo> veiculos = CatalogoDAO.ListarProdutosFiltros(op, Convert.ToString(DDLMarcas.SelectedValue), txtProcurar.Text);
            if(txtProcurar.Text == "")
            {
                txtBuscar.Visible = true;
                txtBuscar.InnerText = "";
                btnTodosResult.Visible = true;
            }
            else
            {
                txtBuscar.Visible = true;
                var paraBuscar = txtProcurar.Text;
                txtBuscar.InnerText = "Todos resultados com: " + paraBuscar;
                btnTodosResult.Visible = true;
            }
            AtualizarLvProdutos(veiculos);
        }

        protected void btnProcurar_Click(object sender, EventArgs e)
        {
            var paraBuscar = txtProcurar.Text;

            if(paraBuscar != "")
            {
                List<Veiculo> veiculos = CatalogoDAO.ListarProdutosProcura(paraBuscar);
                txtBuscar.Visible = true;
                txtBuscar.InnerText = "Todos resultados com: " + paraBuscar;
                btnTodosResult.Visible = true;
                AtualizarLvProdutos(veiculos);
            }
        }

        protected void btnTodosResult_Click(object sender, EventArgs e)
        {
            txtBuscar.Visible = false;
            RadioButtonList1.ClearSelection();
            DDLMarcas.SelectedIndex = 0;
            btnTodosResult.Visible = false;
            txtProcurar.Text = "";
            List<Veiculo> veiculos = CatalogoDAO.ListarProdutos();
            AtualizarLvProdutos(veiculos);
        }
    }
}