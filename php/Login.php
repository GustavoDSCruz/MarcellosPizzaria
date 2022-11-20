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


    <script language=javascript>
		
		function blokletras(keypress)
		{
			if(keypress>=48 && keypress<=57)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		</script>

</head>
<body>

        <div class="header">
        
            <!--Content before waves-->
            <div class="inner-header flex">
			<form name="cliente" method="POST" action="">
			  <div class="mb-3">
			    <label for="exampleInputEmail1" class="form-label">Email address</label>
			    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="txtnome" size="8" maxlength="5" placeholder="Nome" required>
			    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
			  </div>
			  <div class="mb-3">
			    <label for="exampleInputPassword1" class="form-label">Password</label>
			    <input type="password" class="form-control" id="exampleInputPassword1" name="txtsenha" size="5" maxlength="3" placeholder="000" onkeypress="return blokletras(window.event.keyCode)" required>
			  </div>
			  <div class="mb-3 form-check">
			    <input type="checkbox" class="form-check-input" id="exampleCheck1">
			    <label class="form-check-label" for="exampleCheck1">Check me out</label>
			  </div>
			  <button type="submit" class="btn btn-primary" name="btnconsultar" type="submit">Consultar</button>
			</form>
            
		<?php
		extract($_POST, EXTR_OVERWRITE);
		if(isset($btnconsultar))
		{
			include_once 'Usuario.php';
			$u = new Usuario();
			$u->setUsu($txtnome);
			$u->setSenha($txtsenha);
			$pro_bd=$u->logar();
			
			$existe = false;
			foreach($pro_bd as $pro_mostrar)
			{
				$existe = true;
				?>
					<br><b> <?php echo "Bem vindo! Usuário: ".$pro_mostrar[0]; ?></b> <br><br> 
                    <?php header("location:../index.html"); ?>
				<?php
			}
		if($existe==false)
		{
			header("location:Invalido.php");
		}
		
		}
	?>

            <!--Just the logo.. Don't mind this-->

            </div>
            <div>
                <svg class="waves" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                viewBox="0 24 150 28" preserveAspectRatio="none" shape-rendering="auto">
                <defs>
                <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
                </defs>
                <g class="parallax">
                <use xlink:href="#gentle-wave" x="48" y="0" fill="rgba(255,255,255,0.7" />
                <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)" />
                <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)" />
                <use xlink:href="#gentle-wave" x="48" y="7" fill="#fff" />
                </g>
                </svg>
                </div>
                <!--Waves end-->
                
                </div>
                <!--Header ends-->
                
                <!--Content starts-->
                <div class="content flex">
                  <p>By.Apenas o Lima</p>
                </div>
                <!--Content ends-->            
   
  </body>
</html>