<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Produto.aspx.cs" Inherits="Concessionaria.Produto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Produto</title>
    <link rel="icon" href="img/hatchback.png">
    <link rel="stylesheet" href="css/ProdutoStyle.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
  <form runat="server" id="Form1">

     <!--Div container-->
    <div class="container1">
        <!--Barra Lateral-->
        <div class="nav-left">
            <div class="margin">
                    <div class="form-group">
                        <asp:TextBox ID="idNomeForm" runat="server" class="form-control" aria-describedby="nomeHelp"
                            placeholder="Nome*" style="border-radius: 0;margin-bottom: 1vw;"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:TextBox ID="idEmailForm" runat="server" class="form-control" aria-describedby="emailHelp"
                            placeholder="Email*" style="border-radius: 0;margin-bottom: 1vw;"></asp:TextBox>
                    </div>
                    <div class="form-group">   
                         <asp:TextBox ID="idTelefoneForm" runat="server" class="form-control" aria-describedby="telefoneHelp"
                            placeholder="Telefone*" style="border-radius: 0;margin-bottom: 1vw;"></asp:TextBox>
                    </div>

                    <div class="form-group">
                         <asp:TextBox ID="idMensagemForm" runat="server" class="form-control" aria-describedby="mensagemHelp"
                            placeholder="Mensagem*" style="border-radius: 0;margin-bottom: 1vw;"></asp:TextBox>
                    </div>


                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck4"">
                        <label class="custom-control-label" for="customCheck1" style="font-size: 0.7rem;">Quero usar o meu veiculo na troca</label>
                    </div>
                    <div class="custom-control custom-checkbox" >
                        <input type="checkbox" class="custom-control-input" id="customCheck2" >
                        <label class="custom-control-label" for="customCheck1" style="font-size: 0.7rem;">Pretendo financiar este veiculo</label>
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" id="customCheck3">
                        <label class="custom-control-label" for="customCheck1" style="font-size: 0.7rem;">Gostaria de receber uma cotação do
                            seguro</label>
                    </div>

                    <asp:Button ID="btnEnviarMensagem" class="btn btn-outline-primary" runat="server" Text="Enviar Mensagem" OnClick="btnEnviarMensagem_Click"/>

                    <p runat="server" id="MensagemEnviada"></p>
            </div>
        </div>

        <!--Header-->
        <header>
            <div class="titulo">
                <p>Conte com quem mais ama e entende de carro</p>
            </div>

            <nav class="navbar navbar-expand-lg bg-body-tertiary" id="nav1">
                <div class="container-fluid" id="nav">
                    <a class="navbar-brand" href="Default.aspx">
                        <img src="img/Logo.png" id="imgLogo"/>
                    </a>

                   
                        <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
                            >
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="Catalogo.aspx" id="link1"><b>Catálogo</b></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="Default.aspx" id="link1"><b>Página Inicial</b></a>
                            </li>
                        </ul>
         

                        <asp:TextBox ID="txtProcurarProduto" runat="server" class="form-control me-2" type="search" placeholder="Procurar"></asp:TextBox>
                        <asp:Button runat="server" class="btn btn-outline-primary" ID="btnProcurarProduto" Text="Buscar" OnClick="btnProcurarProduto_Click"/>
                </div>
            </nav>

        </header>

        <!--Carousel-->
        <div class="carousel1">
        <div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="img/1.jpg" class="d-block w-100" alt="..." style="height: 30vw">
              </div>
              <div class="carousel-item">
                <img src="img/2.jpg" class="d-block w-100" alt="..." style="height: 30vw">
              </div>
              <div class="carousel-item">
                <img src="img/3.jpg" class="d-block w-100" alt="..." style="height: 30vw">
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
        </div>

        <!--Main-->
        <main>

            <asp:ListView runat="server" ID="ItemProduto">
                <ItemTemplate>
                <div id="titulo">
                    <img src="<%# Eval("GetImg")%>" alt="" id="icon">
                    <div id="card-title">
                        <h5><%#Eval("Descricao")%></h5>
                        <h5><%# Eval("PrecoNormal") %> R$</h5>
                        <div id="div-para">
                            <p><%#Eval("GetRank")%></p> 
                        </div>
                        
                    </div>
                    <div id="versao">
                        <p>Versão: <%# Eval("getVersao.Descricao") %> </p>
                    </div>
                    
                </div>
        
            
        
                <div id="caracteristicas">
                    <p>Ano <br><strong><%# Eval("AnoModelo") %></strong></p>
                    <p>Cor <br><strong><%# Eval("GetCor.Nome") %></strong></p>
                    <p>Combustível <br><strong><%# Eval("GetCombustivel.Descricao") %></strong></p>
                    <p>Quilometragem <br><strong><%# Eval("GetKM") %></strong></p>
                    <p>Câmbio <br><strong><%# Eval("GetCambio.Descricao") %></strong></p>
                    <p>Final da placa <br><strong><%# Eval("GetUltimoPlaca") %></strong></p>
                </div>


             
                
              
                </ItemTemplate>
            </asp:ListView>


                  <div id="itens">
                    <div id="itens-1">
                      <h6>Itens de veículo</h6>
                    </div>
                    
        
                    <div id="itens-2">
                        <div id="primeira-parte">
                            <p>
                                <asp:ListView ID="lvOpcionais" runat="server">
                                    <ItemTemplate>
                                        <p id="Tamanho"><%#Eval("Descricao")%></p>
                                    </ItemTemplate>
                                </asp:ListView>
                            </p>
                        </div> 
                    </div>
        
            
                </div>

        </main>

        
      
        
        <!--Novidade
        <div class="novidade">
    <div id="div-right">
        <h3>Novidade da Maxx</h3>
        <form>
            <div class="form-group">
              <input type="text" class="form-control" id="exampleInputNome" placeholder="Nome" style="margin-bottom: 2vw; border-radius: 0;">
            </div>
            <div class="form-group">

              <input type="email" class="form-control" id="exampleInputEmail" placeholder="Email" style="border-radius: 0; margin-bottom: 2vw;">
            </div>
            <div class="form-check">
              <input type="checkbox" class="form-check-input" id="exampleCheck1" style="border-radius: 0;">
              <label class="form-check-label" for="exampleCheck1" id="letra">Quero receber ofertas e informações sobre lançamentos de carros por e-mail</label>
            </div>
            <button type="submit" class="btn" style="margin-top: 1vw;" id="btn2">INSCREVA-SE</button>
          </form>
    </div>
    <div id="div-left">
        <img src="img/novidadededede.png" alt="">
    </div>
</div>
            -->
        <!--Footer-->
        
       <footer>
    <div class="container-footer">
        <div id="div-footer-1"><h5>Grupo Sinal</h5>
            <button type="button" class="btn" id="btn1" style="margin-top: 4vw; margin-bottom: 1vw;">TABELA FIPE</button>
            <br>
            <button type="button" class="btn" id="btn1">VENDAS DIRETAS</button>
        </div>
        <div id="div-footer-2">
            <h6>INSTITUCIONAL</h6>
            <a href="#">Quem somos</a><br>
            <a href="#">Nossas Lojas Política de Privacidade</a><br>
            <a href="#">Cuidado com boletos falsos</a><br>
            <a href="#">Resolução Banco Central</a><br>
            
        </div>
        <div id="div-footer-3">
            <h6>Pós vendas</h6>
            <a href="#">Revisão</a><br>
            <a href="#">Ofertas</a><br>
        </div>
        <div id="div-footer-4">
            <h6>Outros serviços</h6>
            <a href="#">Seguro</a><br>
            <a href="#">Consórcio</a><br>
            <a href="#">Blindados</a><br>
        </div>
        <div id="div-footer-5">
            <h6>Atendimentos</h6>
            <a href="#">Fale conosco</a><br>
            <a href="#">Trabalhe conosco</a><br>
            <a href="#">contato</a><br>
            <a href="#">Fornecedores</a><br>
        </div>
    </div>

    <div id="copyright">
        <p>Copyright © 2023 Grupo Sinal</p>
    </div>
</footer>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
            </form>

</body>

</html>
