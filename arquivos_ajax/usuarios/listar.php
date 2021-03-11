<?php

	session_start();
	error_reporting(0);

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	
	$bd = new banco_dados();
	
	$sql = 'SELECT * FROM usuarios';
	$query = $bd->select($sql);
	$num_rows = $bd->num_rows($query);
	
	$tabela ='
	
	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">Nome</th>
				<th scope="col">E-mail</th>
				<th scope="col">Ações</th>
			</tr>
		</thead>
		<tbody>
		
	';
	
	$usuarios = '';
	
	while($dado = $bd->row($query)){
		
		$usuarios .= '
		
		<tr>
			<th scope="row">'.$dado['cod_usuarios'].'</th>
			<td>'.$dado['nome_usuarios'].'</td>
			<td>'.$dado['email_usuarios'].'</td>
			<td>
				<a onClick="modal_edUsuario('.$dado['cod_usuarios'].')" data-bs-toggle="modal" data-bs-target="#exampleModal">
				<i class="fas fa-user-edit icone-info"></i>
				</a>
				<a onClick="exUSuarios('.$dado['cod_usuarios'].')">
				<i class="fas fa-trash icone-info"></i>
				</a>
			</td>
		</tr>
		
		';
	}
	
	$tabela .= $usuarios;
	
	$tabela .='
	
		</tbody>
	</table>
		
	';
?>


<h2>Listar Usuários</h2>

<div class="link-exportar">
	<a onClick='modal_caUsuario()' data-bs-toggle="modal" data-bs-target="#exampleModal">Criar Usuário <i class="fas fa-user-plus"></i></a>
</div>

<?php echo $tabela; ?>


<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Info</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<div class="modal-body">
				...
			</div>
		</div>
	</div>
</div>








