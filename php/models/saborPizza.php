<?php
    include_once '../conexao/conectar.php';

    class saborpizza
    {
        private $id;
        private $nome;
        private $imagem;
        private $descricao;
        private $preco;
        private $conn;

        public function getId(){
            return $this->id;
        }
        public function setId($iid){
            return $this->id = $iid;
        }
        public function getNome(){
            return $this->nome;
        }
        public function setNome($name){
            return $this->nome = $name;
        }
        public function getImagem(){
            return $this->imagem;
        }
        public function setImagem($image){
            return $this->imagem = $image;
        }
        public function getDescricao(){
            return $this->descricao;
        }
        public function setDescricao($describe){
            return $this->descricao = $describe;
        }
        public function getPreco(){
            return $this->preco;
        }
        public function setPreco($price){
            return $this->preco = $price;
        }

        function listar()
        {
	        try
	        {
	        	$this-> conn = new Conectar();
	        	$sql = $this->conn->query ("select * from saborpizza order by id");
	        	$sql->execute();
	        	return $sql->fetchAll();
	        	$this->conn = null;
	        }
	        catch (PDOException $exc)
	        {
	        	echo "Erro ao execultar consulta.". $exc->getMessage();
	        }

        } 
    }

?>