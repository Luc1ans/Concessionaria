<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Concessionaria.Default" %>

<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página Principal</title>
    <link rel="icon" href="img/hatchback.png">
    <!--Links Uteis-->
    
    <link href="css/Style.css" rel="stylesheet" />
    <link href="css/DefaultStyle.css" rel="stylesheet" />

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>

<body>
    <form runat="server" id="Form1">
    <!--Div container-->
    <div class="container1">

       

        <!--Header-->
         <header>
    <div id="titulo">
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

                </ul>
 

                <asp:TextBox ID="txtProcurarProduto" runat="server" class="form-control me-2" type="search" placeholder="Procurar"></asp:TextBox>
                <asp:Button runat="server" class="btn btn-outline-primary" ID="btnProcurarProduto" Text="Buscar" OnClick="btnProcurarProduto_Click"/>
        </div>
    </nav>

</header>







        <!--Carousel-->
        <div class="carousel1" >
            <div id="carouselExampleControlsNoTouching" class="carousel slide" data-bs-touch="false" >
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
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControlsNoTouching"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControlsNoTouching"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>

        <!--Main Primeira-Parte-->
        <main>
            <div class="navegarmarcas">
            <h5>NAVEGUE POR NOSSAS MARCAS</h5>
                <div class="marcas">
                    <div class="marca-container">
                        <img src="img/marca1.png" class="marca-logo" alt="marca logo" />
                        <label>Volkswagen</label>
                    </div>
            
                    <div class="marca-container">
                        <img src="img/marca2.png" class="marca-logo" alt="marca logo" />
                        <label>Renault</label>
                    </div>
            
                    <div class="marca-container">
                        <img src="img/marca3.png" class="marca-logo" alt="marca logo" />
                        <label>Fiat</label>
                    </div>
            
                    <div class="marca-container">
                        <img src="img/marca4.png" class="marca-logo" alt="marca logo" />
                        <label>Toyota</label>
                    </div>
            
                    <div class="marca-container">
                        <img src="img/marca5.png" class="marca-logo" alt="marca logo" />
                        <label>Honda</label>
                    </div>
            </div>
        </div>
                <div class="logomarcas">
        
                </div>
           



               
        </main>



        <!--Cards-->
        <div class="cards">
            <div class="itens">
                    <asp:ListView runat="server" ID="lvVeiculos" OnItemCommand="lvVeiculos_ItemCommand">
                        <ItemTemplate>
                            <div class="card" id="tamanhoCard">
                                <img class="card-img-top" src="<%# Eval("GetImg")%>" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title"><%# Eval("Descricao") %></h5>
                                    <p><%# Eval("Quilometragem") %> KM / <%# Eval("GetCambio.Descricao") %> / <%# Eval("GetMarca.Descricao") %></p>
                                    <h3>R$<%# Eval("PrecoNormal") %></h3>
                                    <asp:Button runat="server" ID="btnVeiculo" class="btn" Text="Saiba Mais" CommandArgument='<%# Eval("IdVeiculo") %>' CommandName="VisualizarVeiculo" style="background-color: #8f0000;color:white;border-color: #8f0000"/>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
        </div>


        <!--Card antes do footer-->
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


        <!--Footer-->
        <footer>
            <div class="container-footer">
                <div id="div-footer-1">
                    <h6>Grupo Sinal</h6>
                    <button type="button" class="btn" id="btn1" style="margin-top: 4vw; margin-bottom: 1vw;">TABELA
                        FIPE</button>
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