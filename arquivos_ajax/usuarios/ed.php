<?php
	error_reporting(0);

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	
	$bd = new banco_dados();
	
	$cod = trata_numero($_POST['cod']);
	
	$sql = 'SELECT * FROM usuarios WHERE cod_usuarios = '.$cod;
	$query = $bd->select($sql);
	$dado = $bd->row($query);
	
	if($dado['tipo_usuarios'] == 1){
		$tipo = 'Normal';
	}else{
		$tipo = 'Admin';
	}
	
?>
<div class='form-modal'>

	<input id='cod' type='hidden' value='<?php echo $cod; ?>'>
	
	<input class='form-control' id='nome' placeholder='Nome' type='text' value='<?php echo $dado['nome_usuarios']; ?>'>
	<input class='form-control' id='email' placeholder='E-mail' type='text' value='<?php echo $dado['email_usuarios']; ?>'>
	<input class='form-control' id='senha' placeholder='Nova Senha' type='password'>
	<select class="form-control" id='tipo'>
		<option value="<?php echo $dado['tipo_usuarios']; ?>"> Atual: <?php echo $tipo; ?></option>
		<option value="">Tipo de usuário</option>
		<option value="1">Normal</option>
		<option value="2">Admin</option>
	</select>

	<button type="button" onClick="edUsuario()" data-bs-dismiss="modal" aria-label="Close">Salvar</button>

</div>