<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="assets/pizza.png">
    <title>Marcellos</title>

    <!-- Slider CSS -->
    <link rel="stylesheet" href="css/swiper-bundle.min.css" />
    <link rel="stylesheet" href="css/slider.css" />
    
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>    

    <!-- CSS -->
    <link rel="stylesheet" href="./css/global.css">
    <link rel="stylesheet" href="./css/back-to-top.css">

     <!-- Font Poppins -->
     <link rel="preconnect" href="https://fonts.googleapis.com">
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
  </head>
  <body>
    <nav class="navbar navbar-expand-lg bg-green-marcellos" id="navbar">
      <div class="container-fluid">
        <a class="navbar-brand ps-4 fs-3 fw-bold text-white fst-italic" href="index.php">Marcello's <!--<img src="assets/marcellos.png" class="marcellos-img img-fluid align-self-center h-50">--></a>
        
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
  
        
          <ul class=" collapse navbar-collapse navbar-nav justify-content-end me-auto mb-2 mb-lg-0 " id="navbarSupportedContent">
            
            <li class="nav-item align-self-start">
              <a class="nav-link active fs-5 fw-light text-white" href="php/clientPages/cardapio.php">Cardápio</a>
            </li>
            
            <li class="nav-item align-self-start">
              <a class="nav-link active fs-5 fw-light text-white" href="sobre.html">Quem somos</a>
            </li>
            <li class="nav-item align-self-start">
              <a class="nav-link active fs-5 fw-light text-white" href="equipe.html">Nossa Equipe</a>
            </li>
            <li class="nav-item align-self-start">
              <a class="nav-link active fs-5 fw-light text-white" href="php/clientPages/contato.php">Fale Conosco</a>
            </li>
            <li class="nav-item align-self-start">
              <a class="nav-link active fw-light text-white" href="php/login/Login.php"><img src="assets/user.png" style="height: 32px;"></a>
            </li>
  
          </ul>
      </div>
    </nav>
    
    <main class="p-5 d-flex flex-column">
      <h2 class="fs-1 fw-bolder">
          Bem vindo a Pizzaria Marcellos!
      </h2><br>

      <h4>Recomendações</h4>

      <hr>

      <!-- Home Introduction -->
      <section class="py-5 d-inline-flex align-self-center" id="main-promotion">
        <div class="d-inline-flex justify-content-center ">
          <img src="assets/banner-home.jpg" class="banner-home img-fluid rounded">
          <div class="d-flex flex-column justify-content-center align-items-center card-home p-3 rounded-end my-3" style="width: 18rem;">
              <div class="card-body">
                <h5 class="banner-home-title fs-1 fw-bold text-center text-white py-4">Marguerita</h5>
                  <p class="banner-home-text fs-2 text-center text-white">
                      A clássica Italiana por apenas R$39,99
                  </p>                        
              </div>
              <div class="card-body d-flex justify-content-center align-items-start pb-5">
                <button type="button" class="banner-home-button btn bg-white" ><a class="text-black text-decoration-none fs-3" href="php/clientPages/comprar.php">Comprar</a></button>
              </div>
          </div>
        </div>
      </section>
      <!-- End of Home Introduction -->

      <h2 class="fs-2 fw-semibold">Promoções da semana</h2>

      <hr>
      
      <!-- Slider -->
       <section class="cards-slider">
        <div class="container swiper">

          <div class="slide-container">

            <div class="card-wrapper swiper-wrapper">

              <div class="card swiper-slide d-flex flex-column justify-content-between align-items-center">

                <div class="profile-details">
                  
                  <div class="name-job">
                    <h4 class="fs-6 fw-normal text-center ">Segunda</h4>
                    <h3 class="fs-3 fw-semibold text-center ">Pizza de Calabresa</h3>
                  </div>
                </div>
                <div class="image-box">
                  <img src="assets/home-slider/segunda.png"/>
                </div>
                <button type="submit" class="btn btn-dark mt-5" style="width: 100%;" ><a class="fs-4 text-white" style="text-decoration:none;" href="php/clientPages/comprar.php">Comprar</a></button>
              </div>
              <div class="card swiper-slide d-flex flex-column justify-content-between align-items-center">

                <div class="profile-details">
                  
                  <div class="name-job">
                    <h4 class="fs-6 fw-normal text-center ">Terça</h4>
                    <h3 class="fs-3 fw-semibold text-center">Pizza de 4 Queijos</h3>
                  </div>
                </div>
                <div class="image-box d">
                  <img src="assets/home-slider/terca.png"/>
                </div>
                <button type="submit" class="btn btn-dark mt-5" style="width: 100%;" ><a class="fs-4 text-white" style="text-decoration:none;" href="php/clientPages/comprar.php">Comprar</a></button>
              </div>
              <div class="card swiper-slide d-flex flex-column justify-content-between align-items-center">

                <div class="profile-details">
                  
                  <div class="name-job">
                    <h4 class="fs-6 fw-normal text-center ">Quarta</h4>
                    <h3 class="fs-3 fw-semibold text-center ">Pizza de Brócolis</h3>
                  </div>
                </div>
                <div class="image-box">
                  <img src="assets/home-slider/quarta.png"/>
                </div>
                <button type="submit" class="btn btn-dark mt-5" style="width: 100%;" ><a class="fs-4 text-white" style="text-decoration:none;" href="php/clientPages/comprar.php">Comprar</a></button>
              </div>
              <div class="card swiper-slide d-flex flex-column justify-content-between align-items-center">

                <div class="profile-details">
                  
                  <div class="name-job">
                    <h4 class="fs-6 fw-normal text-center ">Quinta</h4>
                    <h3 class="fs-3 fw-semibold text-center ">Pizza de Marguerita</h3>
                  </div>
                </div>
                <div class="image-box">
                  <img src="assets/home-slider/quinta.png"/>
                </div>
                <button type="submit" class="btn btn-dark mt-5" style="width: 100%;" ><a class="fs-4 text-white" style="text-decoration:none;" href="php/clientPages/comprar.php">Comprar</a></button>
              </div>
              <div class="card swiper-slide d-flex flex-column justify-content-between align-items-center">

                <div class="profile-details">
                  
                  <div class="name-job">
                    <h4 class="fs-6 fw-normal text-center ">Sexta</h4>
                    <h3 class="fs-3 fw-semibold text-center ">Pizza Portuguesa</h3>
                  </div>
                </div>
                <div class="image-box">
                  <img src="assets/home-slider/sexta.png"/>
                </div>
                <button type="submit" class="btn btn-dark mt-5" style="width: 100%;" ><a class="fs-4 text-white" style="text-decoration:none;" href="php/clientPages/comprar.php">Comprar</a></button>
              </div>
              <div class="card swiper-slide d-flex flex-column justify-content-between align-items-center">

                <div class="profile-details">
                  
                  <div class="name-job">
                    <h4 class="fs-6 fw-normal text-center ">Sábado</h4>
                    <h3 class="fs-3 fw-semibold text-center ">Pizza de Atum</h3>
                  </div>
                </div>
                <div class="image-box">
                  <img src="assets/home-slider/sabado.png"/>
                </div>
                <button type="submit" class="btn btn-dark mt-5" style="width: 100%;" ><a class="fs-4 text-white" style="text-decoration:none;" href="php/clientPages/comprar.php">Comprar</a></button>
              </div>
              <div class="card swiper-slide d-flex flex-column justify-content-between align-items-center">

                <div class="profile-details">
                  
                  <div class="name-job">
                    <h4 class="fs-6 fw-normal text-center ">Domingo</h4>
                    <h3 class="fs-3 fw-semibold text-center ">Pizza Moda do Chefe</h3>
                  </div>
                </div>
                <div class="image-box">
                  <img src="assets/home-slider/domingo.png"/>
                </div>
                <button type="submit" class="btn btn-dark mt-5" style="width: 100%;" ><a class="fs-4 text-white" style="text-decoration:none;" href="php/clientPages/comprar.php">Comprar</a></button>
              </div>
              
            </div>
          </div>
          <div class="swiper-button-next swiper-navBtn"></div>
          <div class="swiper-button-prev swiper-navBtn"></div>
          <div class="swiper-pagination"></div>
        </div>
      </section>
      <!-- End of Slider -->

      <!-- Back to top button -->
      <section class="d-none" id="back-to-top">
        <a href="#navbar" class="back-to-top-button rounded-circle bg-success d-flex justify-content-center align-items-center">
          <img src="./assets/arrow-top-icon.png" alt="">
        </a>
      </section>

    </main>
      
      <!-- Footer -->
      <footer
              class="text-center container-fluid  text-lg-start text-white"
              style="background-color: #0C9A4D"
              >
        <!-- Grid container -->
        <div class="container p-3 pb-0">
          <!-- Section: Links -->
          <section class="">
            <!--Grid row-->
            <div class="row">
              <!-- Grid column -->
              <div class="col-md-1 col-lg-5 col-xl-3 mx-auto mt-3">
                <h6 class="text-uppercase fs-4 mb-4 font-weight-bold">
                  Saiba mais
                </h6>
                <p class="text-start links-footer fs-6">
                  Descubra e explore sabores que te darão água
                  na boca! <a class="fw-semibold" href="php/clientPages/cardapio.php">Cardápio</a> 
                </p>
              </div>
            
              <!-- Grid column -->
              <div class="col-md-2 col-lg-2 col-xl-3 mx-auto mt-3">
                <h6 class="text-uppercase fs-4 mb-4 font-weight-bold">Nossa Equipe</h6>
                <p class="text-start links-footer fs-6">
                  Quem são os fundadores e colaboradores da Marcellos?
                  <a class="fw-semibold" href="equipe.html">Nossa Equipe</a> 
                </p>
              </div>
            
              <!-- Grid column -->
              <div class="col-md-3 col-lg-2 col-xl-3 mx-auto mt-3">
                <h6 class="text-uppercase fs-5 mb-4 font-weight-bold">Nossas redes sociais</h6>
                <a class="px-2" target="_blank" href="https://www.instagram.com/pizzaria_marcellos/"><img class="img-fluid" src="assets/footer/instagram.png"></a>
            </div>
            <!--Grid row-->
          </section>
          <!-- Section: Links -->
        
          <hr class="my-3">
        
          <!-- Section: Copyright -->
          <section class="p-3 pt-0">
            <div class="row d-flex align-items-center">
              <!-- Grid column -->
              <div class="col-md-7 col-lg-8 text-center text-md-start">
                <!-- Marcellos Logo -->
                <div class="text-white fs-2 fw-bold mx-3 p-2">
                  Marcello's
                </div>
              </div>
              <!-- Grid column -->
            
              <!-- Grid column -->
              <div class="links-footer col-md-5 col-lg-4 ml-lg-0 text-center text-md-end">   
                <a class="fs-5 px-2" href="sobre.html">
                  Quem somos
                </a>

                <a class="fs-5 px-2" href="php/clientPages/contato.php">
                  Ajuda
                </a>
              </div>
              <!-- Grid column -->
            </div>
          </section>
          <!-- Section: Copyright -->
        </div>
        <!-- Grid container -->
      </footer>
      <!-- End of Footer -->
    
    <!-- JS  -->

    <!-- Slider Scripts -->  
    <script src="js/swiper-bundle.min.js"></script>
    <script src="js/script.js"></script>

    <!-- Script to show back to top button -->
    <script src="./js/scroll.js"></script>
  </body>
</html>
