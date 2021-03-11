<?php
	error_reporting(0);

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	include_once('../../app_comp_php/funcoes_datas.php');
	
	$bd = new banco_dados();
	
	$cod = trata_numero($_POST['cod']);
	
	$sql = 'SELECT * FROM alunos WHERE cod_alunos = '.$cod;
	$query = $bd->select($sql);
	$dado = $bd->row($query);

	$sqlCurso = 'SELECT * FROM cursos WHERE cod_cursos = '.$dado['curso_alunos'];
	$queryCurso = $bd->select($sqlCurso);
	$dadoCurso = $bd->row($queryCurso);
	$curso = $dadoCurso['nome_cursos'];

	if($dado['situacao_alunos'] == 1){
		$situacao = 'Ativo';
	}else{
		$situacao = 'Inativo';
	}
		
	$aluno = '
	
	<img src="arquivos_up/alunos/'.$dado['img_alunos'].'" id="imgAtual">
	
	<span>COD</span>
	<p>'.$dado['cod_alunos'].'</p>
	
	<span>Nome</span>
	<p>'.$dado['nome_alunos'].'</p>
	
	<span>CEP</span>
	<p>'.mask($dado['cep_alunos'], '##.###-###').'</p>
	
	<span>Estado</span>
	<p>'.$dado['estado_alunos'].'</p>
	
	<span>Cidade</span>
	<p>'.$dado['cidade_alunos'].'</p>
	
	<span>Bairro</span>
	<p>'.$dado['bairro_alunos'].'</p>
	
	<span>Rua</span>
	<p>'.$dado['rua_alunos'].'</p>
	
	<span>Número</span>
	<p>'.$dado['numero_alunos'].'</p>
	
	<span>Complemento</span>
	<p>'.$dado['complemento_alunos'].'</p>
	
	<span>Curso</span>
	<p>'.$curso.'</p>
	
	<span>Turma</span>
	<p>'.$dado['turma_alunos'].'</p>
	
	<span>Data de matrícula</span>
	<p>'.formata_data_br($dado['data_alunos']).'</p>
	
	<span>Situação</span>
	<p>'.$situacao.'</p>
	
	';
	
?>


<div class="div-info">

	<?php echo $aluno; ?>

</div>






