<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="Concessionaria.Catalogo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catálogo</title>
    <link rel="icon" href="img/hatchback.png">
    <link rel="stylesheet" href="css/CatalogoStyle.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
   <form runat="server" id="mainForm">
    <div class="container1">
         <header>
            <div class="titulo">
                <p>Conte com quem mais ama e entende de carro</p>
            </div>

            <nav class="navbar navbar-expand-lg bg-body-tertiary" id="nav1">
                <div class="container-fluid" id="nav2">
                    <a class="navbar-brand" href="Default.aspx">
                        <img src="img/Logo.png" id="imgLogo" />
                    </a>
             
                        <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
                            style="--bs-scroll-height: 100px;">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="Default.aspx" id="link1"><b>Página Inicial</b></a>
                            </li>
                               
                        </ul>
                   
                </div>
            </nav>

        </header>
        

        <div id="navbar">
            <h3>Filtrar</h3>
            <hr/>
            <div id="contentFiltros">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Text="Qualquer valor" Value="primeiraOp"/>
                <asp:ListItem Text="R$0 - R$350000" Value="segundaOp" />
                <asp:ListItem Text="R$350000 - R$700000" Value="terceiraOp" />
                <asp:ListItem Text="R$700000 - Sem Limite" Value="quartaOp" />
            </asp:RadioButtonList>
            </div>
            
            <p>
                <label>Marcas: </label>
                <asp:DropDownList runat="server" ID="DDLMarcas"></asp:DropDownList>
            </p>

            <p id="procurar">
                <asp:TextBox ID="txtProcurar" runat="server" class="form-control me-2" type="search" placeholder="Procurar"></asp:TextBox>
                <!--<asp:Button runat="server" class="btn btn-outline-primary" ID="btnProcurar" Text="Buscar" OnClick="btnProcurar_Click"/>-->
            </p>
            <asp:Button ID="btnFiltro" runat="server" Text="Aplicar Filtros" class="btn btn-outline-primary" OnClick="btnFiltro_Click"/>
        </div>

       <main>
                    

                <p id="txtBuscar" runat="server" style="margin: 1vw 0 0 2vw;"></p>
                <asp:Button ID="btnTodosResult" runat="server" onClick="btnTodosResult_Click" class="btn" Text="Exibir todos veiculos" style="background-color: #8f0000;color: white; border-color: #8f0000; margin: 0 0 2vw 2vw;"/>
                <div class="itens">
                    <asp:ListView runat="server" ID="lvVeiculos" OnItemCommand="lvVeiculos_ItemCommand">
                        <ItemTemplate>
                            <div class="card" id="tamanhoCard" >
                                <img class="card-img-top" src="<%# Eval("GetImg")%>" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title"><%# Eval("Descricao") %></h5>
                                    <p><%# Eval("Quilometragem") %> KM / <%# Eval("GetCambio.Descricao") %> / <%# Eval("GetMarca.Descricao") %></p>
                                    <h3>R$<%# Eval("PrecoNormal") %></h3>
                                    <asp:Button runat="server" ID="btnVeiculo" class="btn btn-danger" Text="Saiba Mais" CommandArgument='<%# Eval("IdVeiculo") %>' CommandName="VisualizarVeiculo" style="background-color:#8f0000; border-color: #8f0000;"/>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
                <p id="txtNEncontrados" runat="server" style="margin: 1vw 0 0 2vw;"></p>
        </main>

        <!--Novidade-->
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
