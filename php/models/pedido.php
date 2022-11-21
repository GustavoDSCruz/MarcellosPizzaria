<?php
    include_once '../conexao/conectar.php';

    
    // Attributes
    class pedido {
        private $id;
        private $nome;
        private $telefone;
        private $cep;
        private $complemento;
        private $id_pizza;
        private $conn;

        // Getters and Setters

        // ID
        public function getId() {
            return $this -> id;
        }

        public function setId($id) {
            return $this -> id = $id;
        }

        // Nome
        public function getNome() {
            return $this -> nome;
        }

        public function setNome($nome) {
            return $this -> nome = $nome;
        }

        // Telefone
        public function getTelefone() {
            return $this -> telefone;
        }

        public function setTelefone($telefone) {
            return $this -> telefone = $telefone;
        }
        
        // CEP
        public function getCep() {
            return $this -> cep;
        }

        public function setCep($cep) {
            return $this -> cep = $cep;
        }

        // Complemento
        public function getComplemento() {
            return $this -> complemento;
        }

        public function setComplemento($complemento) {
            return $this -> complemento = $complemento;
        }

        // Id_pizza
        public function getId_pizza() {
            return $this -> id_pizza;
        }

        public function setId_pizza($id_pizza) {
            return $this -> id_pizza = $id_pizza;
        }

        // Methods
        // List orders
        function listar() {
            try {
                $this -> conn = new Conectar();
                $sql = $this -> conn -> query ("select * from pedido order by id");
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
                $sql = $this -> conn -> prepare("insert into pedido (id, nome, telefone, cep, complemento, id_pizza) values (null, ?, ?, ?, ?, ?)");
                @$sql -> bindParam(1, $this-> getNome(), PDO::PARAM_STR);
                @$sql -> bindParam(2, $this -> getTelefone(), PDO::PARAM_STR);
                @$sql -> bindParam(3, $this -> getCep(), PDO::PARAM_STR);
                @$sql -> bindParam(4, $this -> getComplemento(), PDO::PARAM_STR);
                @$sql -> bindParam(5, $this -> getId_pizza(), PDO::PARAM_STR);

                if ($sql -> execute() == 1) {
                    return "Pedido cadastrado!";
                }
                $this -> conn = null;
            } catch(PDOException $exc) {
                echo "Erro ao cadastrar pedido." . $exc -> getMessage();
            }
        }

        // Remove Order
        function excluir() {
            try {
                $this -> conn = new Conectar();
                $sql = $this -> conn -> prepare("delete from pedido where id = ?");
                @$sql -> bindParam(1, $this -> getId(), PDO::PARAM_STR);
                if ($sql -> execute() == 1) {
                    return "Pedido Excluído com sucesso!";
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