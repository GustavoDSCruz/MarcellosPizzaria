<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loja de produtos</title>
	<link rel="icon" href="assets/pizza.png">
    <title>Marcellos</title>
	
	<!-- Slider CSS -->
	  <link rel="stylesheet" href="../../css/swiper-bundle.min.css" />
    <link rel="stylesheet" href="../../css/slider.css" />
    
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>    

    <!-- CSS -->
    <link rel="stylesheet" href="../../css/global.css">
    <link rel="stylesheet" href="../../css/back-to-top.css">

     <!-- Font Poppins -->
     <link rel="preconnect" href="https://fonts.googleapis.com">
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">



</head>
<body>
  <nav class="navbar navbar-expand-lg bg-green-marcellos" id="navbar">
      <div class="container-fluid">
        <a class="navbar-brand ps-4 fs-3 fw-bold text-white fst-italic" href="../../index.php">Marcello's <!--<img src="assets/marcellos.png" class="marcellos-img img-fluid align-self-center h-50">--></a>
        
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
  
        
          <ul class=" collapse navbar-collapse navbar-nav justify-content-end me-auto mb-2 mb-lg-0 " id="navbarSupportedContent">
            
            <li class="nav-item align-self-start">
              <a class="nav-link active fs-5 fw-light text-white" href="../clientPages/cardapio.php">Cardápio</a>
            </li>
            
            <li class="nav-item align-self-start">
              <a class="nav-link active fs-5 fw-light text-white" href="../../sobre.html">Quem somos</a>
            </li>
            <li class="nav-item align-self-start">
              <a class="nav-link active fs-5 fw-light text-white" href="../../equipe.html">Nossa Equipe</a>
            </li>
            <li class="nav-item align-self-start">
              <a class="nav-link active fs-5 fw-light text-white" href="../clientPages/contato.html">Fale Conosco</a>
            </li>
            <li class="nav-item align-self-start">
              <a class="nav-link active fw-light text-white" href="Login.php"><img src="../../assets/user.png" style="height: 32px;" ></a>
            </li>
  
          </ul>
      </div>
  </nav>
	<main class="p-5 d-flex flex-column align-items-center">
	<form class="card-contato card icard-color py-5 d-flex flex-column align-items-center" name="cliente" method="POST" action="">
          <div class="text-center  border-bottom border-white" style="width: 80%;" >
            <h5 class="card-title text-white fs-3 fw-semibold ">Acesso ao Painel de Administrador</h5>
          </div>
          <div class="d-flex flex-column align-items-stretch py-4" style="width: 80%;">
            <div class="mt-4">
              <label class="form-label text-white">Usuário</label>
              <input type="text" name="txtnome" class="form-control" required name="txtnome" size="8" maxlength="5" required>
            </div>
            <div class="mt-4">
              <label for="exampleInputEmail1" class="form-label text-white">Senha</label>
              <input type="password" name="txtsenha" class="form-control" id="exampleInputPassword1" aria-describedby="emailHelp" size="5" maxlength="3" required>
            </div>
            <input type="hidden" value='<?php echo $pro_mostrar[0]?>'>
          </div>
          <button type="submit" name="btnlogar" class="btn btn-dark mt-5" style="width: 50%;">Enviar</button>
        </form> 

		<?php
		extract($_POST, EXTR_OVERWRITE);
		if(isset($btnlogar))
		{
			include_once 'Usuario.php';
			$u = new usuario();
			$u->setNome($txtnome);
			$u->setSenha($txtsenha);
			$pro_bd=$u->logar();
			
			$existe = false;
			foreach($pro_bd as $pro_mostrar)
			{
				$existe = true;
				?>
					<br><b> <?php echo "Bem vindo! Usuário: ".$pro_mostrar[0]; ?></b> <br><br> 
					<?php  
            header("../adminPages/painelMarcellos.php");
					?>
          			<button type="submit" class="btn btn-dark mt-5"><a class="fs-4 text-white" style="text-decoration:none;" href="../adminPages/painelMarcellos.php">Entrar</a></button>
				<?php
			}
		if($existe==false)
		{
			header("location:Invalido.php");
		}
		
		}
	?>    
	</main>
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
                  na boca! <a class="fw-semibold" href="../clientPages/cardapio.php">Cardápio</a> 
                </p>
              </div>
            
              <!-- Grid column -->
              <div class="col-md-2 col-lg-2 col-xl-3 mx-auto mt-3">
                <h6 class="text-uppercase fs-4 mb-4 font-weight-bold">Nossa Equipe</h6>
                <p class="text-start links-footer fs-6">
                  Quem são os fundadores e colaboradores da Marcellos?
                  <a class="fw-semibold" href="../../equipe.html">Nossa Equipe</a> 
                </p>
              </div>
            
              <!-- Grid column -->
              <div class="col-md-3 col-lg-2 col-xl-3 mx-auto mt-3">
                <h6 class="text-uppercase fs-5 mb-4 font-weight-bold">Nossas redes sociais</h6>
                <a class="px-2" target="_blank" href="https://www.instagram.com/pizzaria_marcellos/"><img class="img-fluid" src="../../assets/footer/instagram.png"></a>
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
                <a class="fs-5 px-2" href="../../sobre.html">
                  Quem somos
                </a>

                <a class="fs-5 px-2" href="../clientPages/contato.php">
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
  </body>
</html>