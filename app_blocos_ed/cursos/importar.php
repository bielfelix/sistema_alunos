<?php

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	
	$bd = new banco_dados();
	
	$caminho = '../../arquivos_up/cursos/';
	
	$nomeArq = novo_nome_arq($caminho, $_FILES['xml']);
	
	$destino = $caminho.$nomeArq;
	 
	$arquivo_tmp = $_FILES['xml']['tmp_name'];
	 
	move_uploaded_file($arquivo_tmp, $destino);

	$xml = simplexml_load_file($destino); 
 
	foreach ($xml as $dado){
		
		$sql = 'SELECT * FROM cursos WHERE nome_cursos = "'.$dado->nome.'"';
		$query = $bd->select($sql);
		$num_rows = $bd->num_rows($query);
		
		if($num_rows < 1){
			
			$sql = 'INSERT INTO cursos (nome_cursos) VALUES ("'.$dado->nome.'")';
			$query = $bd->insert($sql);
		}
	}
	
?>