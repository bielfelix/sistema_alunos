<?php

	session_start();
	error_reporting(0);

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	
	$bd = new banco_dados();
	
	$sql = 'SELECT * FROM cursos';
	$query = $bd->select($sql);
	
	$tabela ='
	
	<table class="table">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">Nome</th>
				<th scope="col">Info</th>
			</tr>
		</thead>
		<tbody>
		
	';
	
	$cursos = '';
	
	while($dado = $bd->row($query)){
		
		$cursos .= '
		
		<tr>
			<th scope="row">'.$dado['cod_cursos'].'</th>
			<td>'.$dado['nome_cursos'].'</td>
			<td>
				<a onClick="info_cursos('.$dado['cod_cursos'].')" data-bs-toggle="modal" data-bs-target="#exampleModal">
					<i class="fas fa-info-circle icone-info"></i>
				</a>
				<a onClick="modal_edCursos('.$dado['cod_cursos'].')" data-bs-toggle="modal" data-bs-target="#exampleModal">
					<i class="fas fa-user-edit icone-info"></i>
				</a>
				<a onClick="exCursos('.$dado['cod_cursos'].')">
					<i class="fas fa-trash icone-info"></i>
				</a>
			</td>
		</tr>
		
		';
	}
	
	$tabela .= $cursos;
	
	$tabela .='
	
		</tbody>
	</table>
		
	';
?>


<h2>Listar Cursos</h2>

<div class="link-exportar displayFlex">
	<a onClick='modal_importCursos()' data-bs-toggle="modal" data-bs-target="#exampleModal">Importar cursos <i class="fas fa-file-upload"></i></a>
	<a onClick='modal_caCursos()' data-bs-toggle="modal" data-bs-target="#exampleModal">Criar Curso <i class="fas fa-calendar-plus"></i></a>
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
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fechar</button>
			</div>
		</div>
	</div>
</div>







