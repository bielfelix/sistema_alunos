<?php

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	
	$bd = new banco_dados();
	
	$cod = trata_numero($_POST['cod']);

	$sql = 'SELECT * FROM alunos WHERE cod_alunos = '.$cod;
	$query = $bd->select($sql);
	$dado = $bd->row($query);
	unlink('../../arquivos_up/alunos/'.$dado['img_alunos']);
	
	$sql = 'DELETE FROM alunos WHERE cod_alunos = '.$cod;
	$query = $bd->delete($sql);
	$dado = $bd->row($query);
	
?>