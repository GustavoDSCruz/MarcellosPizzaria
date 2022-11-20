<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loja de produtos</title>
	<link rel="icon" href="assets/pizza.png">
    <title>Marcellos</title>
	
	<!-- Slider CSS -->
	<link rel="stylesheet" href="css/swiper-bundle.min.css" />
    <link rel="stylesheet" href="css/slider.css" />
    
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>    

    <!-- CSS -->
    <link rel="stylesheet" href="../css/global.css">
    <link rel="stylesheet" href="../css/back-to-top.css">

     <!-- Font Poppins -->
     <link rel="preconnect" href="https://fonts.googleapis.com">
     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
     <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">



</head>
<body>
<nav class="navbar navbar-expand-lg bg-green-marcellos" id="navbar">
      <div class="container-fluid">
        <a class="navbar-brand ps-4 fs-3 fw-bold text-white fst-italic" href="../index.html">Marcello's <!--<img src="assets/marcellos.png" class="marcellos-img img-fluid align-self-center h-50">--></a>
        
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
  
        
          <ul class=" collapse navbar-collapse navbar-nav justify-content-end me-auto mb-2 mb-lg-0 " id="navbarSupportedContent">
            
            <li class="nav-item align-self-start">
              <a class="nav-link active fs-5 fw-light text-white" href="../cardapio.html">Cardápio</a>
            </li>
            
            <li class="nav-item align-self-start">
              <a class="nav-link active fs-5 fw-light text-white" href="../sobre.html">Quem somos</a>
            </li>
            <li class="nav-item align-self-start">
              <a class="nav-link active fs-5 fw-light text-white" href="../equipe.html">Nossa Equipe</a>
            </li>
            <li class="nav-item align-self-start">
              <a class="nav-link active fs-5 fw-light text-white" href="../contato.html">Fale Conosco</a>
            </li>
            <li class="nav-item align-self-start">
              <a class="nav-link active fw-light text-white" href="php/Login.php"><img src="../assets/user.png" style="height: 16px;" ></a>
            </li>
  
          </ul>
          <!-- Search -->
          <!-- <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Pesquisar">
            <button class="btn-pesquisar btn btn-dark" type="submit">
              <img src="assets/search.png">
            </button>
          </form> -->
       
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
          </div>
          <button type="submit" name="btnconsultar" class="btn btn-dark mt-5" style="width: 50%;">Enviar</button>
        </form> 

		<?php
		extract($_POST, EXTR_OVERWRITE);
		if(isset($btnconsultar))
		{
			include_once 'Usuario.php';
			$u = new usuario();
			$u->setLogin($txtnome);
			$u->setSenha($txtsenha);
			$pro_bd=$u->logar();
			
			$existe = false;
			foreach($pro_bd as $pro_mostrar)
			{
				$existe = true;
				?>
					<br><b> <?php echo "Bem vindo! Usuário: ".$pro_mostrar[0]; ?></b> <br><br> 
					<?php  
						$_SESSION['nome'] = $txtnome;
					?>
          			<button type="submit" class="btn btn-dark mt-5"><a class="fs-4 text-white" style="text-decoration:none;" href="painelMarcellos.php">Entrar</a></button>
				<?php
			}
		if($existe==false)
		{
			header("location:Invalido.php");
		}
		
		}
	?>    
	</main>     
  </body>
</html>