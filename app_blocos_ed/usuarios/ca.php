<?php

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	
	$bd = new banco_dados();
	
	$nome = $_POST['nome'];
	$email = $_POST['email'];
	$senha = trata_senha($_POST['senha']);
	$tipo = $_POST['tipo'];
	
	$sql = 'INSERT INTO usuarios (nome_usuarios, email_usuarios, senha_usuarios, tipo_usuarios) VALUES ("'.$nome.'", "'.$email.'", "'.$senha.'", "'.$tipo.'")';
	$query = $bd->insert($sql);
	
?>