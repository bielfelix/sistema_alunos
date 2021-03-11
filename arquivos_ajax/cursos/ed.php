<?php
	error_reporting(0);

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	
	$bd = new banco_dados();
	
	$cod = trata_numero($_POST['cod']);

	$cursos = "";

	$sql = 'SELECT * FROM cursos WHERE cod_cursos = '.$cod;
	$query = $bd->select($sql);
	$dado = $bd->row($query);

?>
<div class='form-modal'>
	
	<form action='' id='formulario'>
	
		<input id='cod' type='hidden' value='<?php echo $cod; ?>'>

		<input class='form-control' name='nome' id='nome' placeholder='Nome' type='text' value='<?php echo $dado['nome_cursos']; ?>'>

		<button type="button" onClick="edCursos()" data-bs-dismiss="modal" aria-label="Close">Salvar</button>
	
	</form>
		
</div>

