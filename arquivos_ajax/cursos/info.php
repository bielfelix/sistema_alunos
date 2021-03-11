<?php
	error_reporting(0);

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	
	$bd = new banco_dados();
	
	$cod = trata_numero($_POST['cod']);
	
	$sql = 'SELECT * FROM cursos WHERE cod_cursos = '.$cod;
	$query = $bd->select($sql);
	$dado = $bd->row($query);
		
	$curso = '
	
	<span>COD</span>
	<p>'.$dado['cod_cursos'].'</p>
	
	<span>Nome</span>
	<p>'.$dado['nome_cursos'].'</p>
	
	';
	
?>


<div class="div-info">

	<?php echo $curso; ?>

</div>






