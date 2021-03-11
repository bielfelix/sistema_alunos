<?php

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	
	$bd = new banco_dados();
	
	$nome = $_POST['nome'];
	
	$sql = 'INSERT INTO cursos (nome_cursos) VALUES ("'.$nome.'")';
	$query = $bd->insert($sql);
	
?>