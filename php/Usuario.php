<?php
include_once 'conectar.php';

class usuario
{
	private $Login;
	private $Senha;
	private $conn;
	
	public function getLogin()
	{
		return $this->Login;
	}
	public function setLogin($login)
	{
		$this->Login = $login;
	}
	
	public function getSenha()
	{
		return $this->Senha;
	}
	public function setSenha($senha)
	{
		$this->Senha = $senha;
	}
	
	function logar()
	{
		try
		{
			$this-> conn = new Conectar();
			$sql = $this->conn->prepare("SELECT * FROM usuario WHERE Login LIKE ? and Senha = ?");
			@$sql-> bindParam(1, $this->getLogin(), PDO::PARAM_STR);
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