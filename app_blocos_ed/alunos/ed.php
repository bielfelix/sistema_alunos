<?php

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	
	$bd = new banco_dados();
	
	$cod = $_POST['cod'];
	
	if(empty($_FILES['img']['name'])){
		
		$sql = 'UPDATE alunos SET nome_alunos = "'.$_POST['nome'].'", cep_alunos = "'.$_POST['cep'].'", estado_alunos = "'.$_POST['estado'].'", cidade_alunos = "'.$_POST['cidade'].'", bairro_alunos = "'.$_POST['bairro'].'", rua_alunos = "'.$_POST['rua'].'", numero_alunos = "'.$_POST['numero'].'", complemento_alunos = "'.$_POST['complemeto'].'", curso_alunos = "'.$_POST['curso'].'", turma_alunos = "'.$_POST['turma'].'", data_alunos = "'.$_POST['data'].'", situacao_alunos = "'.$_POST['situacao'].'" WHERE cod_alunos = '.$cod;
	}else{
		
		$sql = 'SELECT * FROM alunos WHERE cod_alunos = '.$cod;
		$query = $bd->select($sql);
		$dado = $bd->row($query);
		unlink('../../arquivos_up/alunos/'.$dado['img_alunos']);
		
		$caminho = '../../arquivos_up/alunos/';
	
		$nomeArq = novo_nome_arq($caminho, $_FILES['img']);

		$destino = $caminho.$nomeArq;

		$arquivo_tmp = $_FILES['img']['tmp_name'];

		move_uploaded_file($arquivo_tmp, $destino);
		
		$sql = 'UPDATE alunos SET img_alunos = "'.$nomeArq.'", nome_alunos = "'.$_POST['nome'].'", cep_alunos = "'.$_POST['cep'].'", estado_alunos = "'.$_POST['estado'].'", cidade_alunos = "'.$_POST['cidade'].'", bairro_alunos = "'.$_POST['bairro'].'", rua_alunos = "'.$_POST['rua'].'", numero_alunos = "'.$_POST['numero'].'", complemento_alunos = "'.$_POST['complemeto'].'", curso_alunos = "'.$_POST['curso'].'", turma_alunos = "'.$_POST['turma'].'", data_alunos = "'.$_POST['data'].'", situacao_alunos = "'.$_POST['situacao'].'" WHERE cod_alunos = '.$cod;
	}
	
	$query = $bd->update($sql);
	
?>