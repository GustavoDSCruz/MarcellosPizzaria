<?php
    include_once '../conexao/conectar.php'
    class usuario{
        private $id;
        private $nome;
        private $senha;
        private $conn;

        public function getId(){
            return $this->id;
        }
        public function setId(){
            return $this->id=$iid;
        }
        public function getNome(){
            return $this->nome;
        }
        public function setNome(){
            return $this->nome=$name;
        }
        public function getSenha(){
            return $this->senha;
        }
        public function setSenha(){
            return $this->senha=$senha;
        }

        function logar()
	    {
		    try
		    {
		    	$this-> conn = new Conectar();
		    	$sql = $this->conn->prepare("SELECT * FROM usuario WHERE login = ? and senha = ?");
		    	@$sql-> bindParam(1, $this->getSenha(), PDO::PARAM_STR);
		    	@$sql-> bindParam(2, $this->getSenha(), PDO::PARAM_STR);
		    	$sql->execute();
		    	return $sql->fetchAll();
		    	$this->conn = null;
		    }
		    catch(PDOException $exc)
		    {
		    	echo "<span class='text-green-200'>Erro ao executar consulta.</span>" . $exc->getMessage();
		    }
	    }

            




        




        




        



    }


?>