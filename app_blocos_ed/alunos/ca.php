<?php

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	include_once('../../app_comp_php/funcoes_datas.php');
	
	$bd = new banco_dados();
	
	$caminho = '../../arquivos_up/alunos/';
	
	$nomeArq = novo_nome_arq($caminho, $_FILES['img']);
	
	$destino = $caminho.$nomeArq;
	 
	$arquivo_tmp = $_FILES['img']['tmp_name'];
	 
	move_uploaded_file($arquivo_tmp, $destino);
	
	$sql = 'INSERT INTO alunos (img_alunos, nome_alunos, cep_alunos, estado_alunos, bairro_alunos, cidade_alunos, rua_alunos, numero_alunos, complemento_alunos, curso_alunos, turma_alunos, data_alunos, situacao_alunos) VALUES ("'.$nomeArq.'", "'.$_POST['nome'].'", "'.trata_numero($_POST['cep']).'", "'.$_POST['estado'].'", "'.$_POST['cidade'].'", "'.$_POST['bairro'].'", "'.$_POST['rua'].'", "'.$_POST['numero'].'", "'.$_POST['complemento'].'", "'.$_POST['curso'].'", "'.$_POST['turma'].'", "'.formata_data_usa($_POST['data']).'", "'.$_POST['situacao'].'")';
	$query = $bd->insert($sql);
	
?>