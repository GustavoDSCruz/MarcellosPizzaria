<?php
    include_once '../conexao/conectar.php';

    class contato{
        private $id;
        private $nome;
        private $email;
        private $descricao;

        public function getId(){
            return $this-> id;  
        }
        public function setId($iid){
            return $this-> id = $iid;      
        }
        public function getNome(){
            return $this-> nome;
        }
        public function setNome($name){
            return $this-> nome = $name;
        }
        public function getEmail(){
            return $this-> email;
        }
        public function setEmail($email){
            return $this-> email = $email;
        }
        public function getDescricao(){
            return $this-> descricao;
        }
        public function setDescricao($desc){
            return $this-> descricao = $desc;
        }

        function listar() {
            try {
                $this -> conn = new Conectar();
                $sql = $this -> conn -> query ("select * from contato order by id");
                $sql -> execute();
                return $sql -> fetchAll();
                $this -> conn = null;
            } catch (PDOException $exc) {
                echo "erro ao execultar consulta." . $exc -> getMessage();
            }
        } 

        // Register order
        function cadastrar() {
            try {
                $this -> conn = new Conectar();
                $sql = $this -> conn -> prepare("insert into contato (id, nome, email, descricao) values (null, ?, ?, ?)");
                @$sql -> bindParam(1, $this-> getNome(), PDO::PARAM_STR);
                @$sql -> bindParam(2, $this -> getEmail(), PDO::PARAM_STR);
                @$sql -> bindParam(3, $this -> getDescricao(), PDO::PARAM_STR);

                if ($sql -> execute() == 1) {
                    return "Mensagem enviada!";
                }
                $this -> conn = null;
            } catch(PDOException $exc) {
                echo "Erro ao enviar a mensagem." . $exc -> getMessage();
            }
        }

        // Remove Order
        function excluir() {
            try {
                $this -> conn = new Conectar();
                $sql = $this -> conn -> prepare("delete from contato where id = ?");
                @$sql -> bindParam(1, $this -> getId(), PDO::PARAM_STR);
                if ($sql -> execute() == 1) {
                    return "Mensagem Excluída com sucesso!";
                } else {
                    return "Erro na exclusão!";
                }
                $this -> conn = null;
            } catch(PDOException $exc) {
                echo "Erro ao excluir pedido :(" . $exc -> getMessage();
            }
        }



    }



?>