<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Concessionaria.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>MAXX TURBO</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
    <link href="css/style.css" rel="stylesheet" />
</head>

<body>

    <header>
        <div class="title-header">
            <h6>A melhor loja online de veiculos BRASILEIRA</h6>
        </div>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <img src="img/MAXPNG.png" alt="Alternate Text" /></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarScroll" aria-controls="navbarScroll" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarScroll">
                    <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll" style="--bs-scroll-height: 100px;">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Pagina Inicial</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Veiculos
                            </a>
                            <ul class="dropdown-menu">

                                <li><a class="dropdown-item" href="#">Todos Veiculos</a></li>
                                <li>
                                    <hr class="dropdown-divider" />
                                </li>
                                <li><a class="dropdown-item" href="#">Carros</a></li>
                                <li><a class="dropdown-item" href="#">Motos</a></li>
                                <li><a class="dropdown-item" href="#">Bicicletas</a></li>
                                <li><a class="dropdown-item" href="#">Outros...</a></li>

                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contato</a>
                        </li>

                    </ul>


                    <form class="d-flex" role="search">
                        <button class="btnUnlockBuscar buttonstyle1" id="btnUnlockBuscarID" onclick="showSearchInput(event)">Buscar...</button>
                        <button class="btnLockBuscar buttonstyle1" id="btnLockBuscarID" onclick="hideSearchInput(event)">X</button>
                        <input class="form-control me-2" id="buscarInput" type="search" placeholder="Search" aria-label="Search" />
                        <button class="btn btn-outline-success buttonstyle1 btnExtra" id="btnBuscar" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
    </header>

    <main>

        <div id="carouselExampleCaptions" class="carousel slide">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/carro1.jpg" class="d-block w-50 h-50" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Carro do Luciano</h5>
                        <p>Some representative placeholder content for the first slide.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="img/carro2.jpg" class="d-block w-50 h-50" alt="..." />
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Carro do Mauricio</h5>
                        <p>Some representative placeholder content for the second slide.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="img/carro3.jpg" class="d-block w-50 h-50" alt="..." />
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Carro do Pedro</h5>
                        <p>Some representative placeholder content for the second slide.</p>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <div>
        <div class="cards">
            <div class="card" style="width: 20rem; height: 21rem;">
                <img src="img/car1.jpg" class="card-img-top"  alt="Card image cap"/>
                <div class="card-body">
                    <h5 class="card-title">Ford sexo</h5>

                    <p>82.520 KM / AUTOMATICO</p>

                    <h5>R$55.990</h5>
                    <a href="#" class="btn btn-primary">Ver o carro</a>
                </div>
            </div>

            <div class="card" id="cards1" style="width: 20rem; height: 21rem;">
                <img src="img/car1.jpg" class="card-img-top" " alt="Card image cap"/>
                <div class="card-body">
                    <h5 class="card-title">Ford sexo</h5>

                    <p>82.520 KM / AUTOMATICO</p>

                    <h3>R$55.990</h3>
                    <a href="#" class="btn btn-primary">Ver o carro</a>
                </div>
            </div>

            <div class="card" id="cards2" style="width: 20rem; height: 21rem;">
                <img src="img/car1.jpg" class="card-img-top" alt="Card image cap"/>
                <div class="card-body">
                    <h5 class="card-title">Ford sexo</h5>

                    <p>82.520 KM / AUTOMATICO</p>

                    <h3>R$55.990</h3>
                    <a href="#" class="btn btn-primary">Ver o carro</a>
                </div>
            </div>

        </div>
</div>

  <div class="navegarmarcas">
    <label>NAVEGUE POR NOSSAS MARCAS</label>
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

       <footer>
            <div class="container-footer">
                <div id="div-footer-1"><h5>Grupo Sinal</h5>
                    <div class="icones">
                        <img src="img/facebook.png" alt="">
                        <img src="img/instagram.png" alt="">
                        <img src="img/twitter.png" alt="">
                        <img src="img/youtube.png" alt="">
                        <img src="img/linkedin.png" alt="">
                        <img src="img/tiktok.png" alt="">
                    </div>
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
   

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="js/script.js"></script>

</body>
</html>
