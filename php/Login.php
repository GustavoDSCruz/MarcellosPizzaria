<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loja de produtos</title>
    <link rel="stylesheet" href="../CSS/Barra.css">
    <link rel="stylesheet" href="../CSS/Index.css">
    <link rel="stylesheet" href="../CSS/Fundo_Pag.css">
	<link rel="stylesheet" href="../CSS/Cadastrar.css">


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

            <form name="cliente" method = "POST" action = "">
		<fieldset id="a">
			<legend><b> Login de Acesso: </b></legend>
				<p> Nome: <input name="txtnome" type="text" size="8" maxlength="5" placeholder="Nome" required>
				<p> Senha: <input name="txtsenha" type="password" size="5" maxlength="3" placeholder="000" onkeypress="return blokletras(window.event.keyCode)" required> </p>
				
		</fieldset>
		<br>
		<fieldset id="b">
			<br>
			<input class="btn-fieldset" name="btnconsultar" type="submit" value="Consultar" >
			
		</fieldset>
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