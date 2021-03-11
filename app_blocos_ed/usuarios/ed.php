
<?php

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	
	$bd = new banco_dados();
	
	$cod = $_POST['cod'];
	$nome = $_POST['nome'];
	$email = $_POST['email'];
	$senha = trata_senha($_POST['senha']);
	$tipo = $_POST['tipo'];
	
	if(empty($_POST['senha'])){
		
		$sql = 'UPDATE usuarios SET nome_usuarios = "'.$nome.'", email_usuarios = "'.$email.'", tipo_usuarios = "'.$tipo.'" WHERE cod_usuarios = '.$cod;
	}else{
		
		$sql = 'UPDATE usuarios SET nome_usuarios = "'.$nome.'", email_usuarios = "'.$email.'", senha_usuarios = "'.$senha.'", tipo_usuarios = "'.$tipo.'" WHERE cod_usuarios = '.$cod;
	}
	
	$query = $bd->update($sql);
	
?>