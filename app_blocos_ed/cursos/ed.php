<?php

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	
	$bd = new banco_dados();
	
	$cod = $_POST['cod'];
	
	$sql = 'UPDATE cursos SET nome_cursos = "'.$nome.'" WHERE cod_cursos = '.$cod;
	$query = $bd->update($sql);
	
?>