<?php

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	
	$bd = new banco_dados();
	
	$cod = trata_numero($_POST['cod']);
	
	$sql = 'DELETE FROM usuarios WHERE cod_usuarios = '.$cod;
	$query = $bd->delete($sql);
	$dado = $bd->row($query);
	
?>