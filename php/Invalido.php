
    <?php

    if(!isset($_SESSION)) {
        session_start();
    }

    if(!isset($_SESSION['nome'])) {
        die("Você não pode acessar esta página porque não está logado.<p class=\"d-inline-flex justify-content-center\"> <a class=\"text-black text-decoration-none\" href=\"Login.php\">Voltar</a></p>");
    }
