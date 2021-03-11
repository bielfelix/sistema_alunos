<?php
	
	session_start();
	error_reporting(0);

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	
	$bd = new banco_dados();
	
	$email = trata_email($_POST['email']);
	$senha = trata_senha($_POST['senha']);

	if($email[0] == false){
		$_SESSION['logado'] = 'nao';
		$_SESSION['error_login'] = 'false';
		die();	
	}
	
	$sql = 'SELECT * FROM usuarios WHERE email_usuarios = "'.$email[1].'" AND senha_usuarios = "'.$senha.'"';
	$query = $bd->select($sql);
	$dado = $bd->row($query);
	$num_rows = $bd->num_rows($query);
	
	if($num_rows >= 1){
		
		$_SESSION['logado'] = 'sim';
		$_SESSION['tipo_usuario'] = $dado['tipo_usuarios'];
		$_SESSION['pagina'] = 'dashboard';
		unset($_SESSION['error_login']);
		die();
		
	}else{
		$_SESSION['logado'] = 'nao';
		$_SESSION['error_login'] = 'false';
		die();		
	}
	
	
	
	
?>