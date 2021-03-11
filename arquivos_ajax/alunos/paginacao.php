<?php

	session_start();
	error_reporting(0);

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	
	$bd = new banco_dados();

	$pagina = $_POST['pagina'];
	$qnt_result_pg = $_POST['qnt_result_pg'];

	$inicio = ($pagina * $qnt_result_pg) - $qnt_result_pg;

	$sql = "SELECT * FROM alunos LIMIT $inicio, $qnt_result_pg";
	$query = $bd->select($sql);
	
	$tabela ='
	
	<table class="table" id="results">
		<thead>
			<tr>
				<th scope="col">#</th>
				<th scope="col">Nome</th>
				<th scope="col">Info</th>
			</tr>
		</thead>
		<tbody id="body-alunos">
		
	';
	
	$alunos = '';
	
	while($dado = $bd->row($query)){
		
		$alunos .= '
		
		<tr>
			<th scope="row">'.$dado['cod_alunos'].'</th>
			<td>'.$dado['nome_alunos'].'</td>
			<td>
				<a onClick="info_alunos('.$dado['cod_alunos'].')" data-bs-toggle="modal" data-bs-target="#exampleModal">
					<i class="fas fa-info-circle icone-info"></i>
				</a>
				<a onClick="modal_edAlunos('.$dado['cod_alunos'].')" data-bs-toggle="modal" data-bs-target="#exampleModal">
					<i class="fas fa-user-edit icone-info"></i>
				</a>
				<a onClick="exAlunos('.$dado['cod_alunos'].')">
					<i class="fas fa-trash icone-info"></i>
				</a>
			</td>
		</tr>
		
		';
	}
	
	$tabela .= $alunos;
	
	$tabela .='
	
		</tbody>
	</table>
		
	';

	
	$result_pg = "SELECT COUNT(cod_alunos) AS num_result FROM alunos";
	$resultado_pg = $bd->select($result_pg);
	$row_pg = $bd->row($resultado_pg);


	$quantidade_pg = ceil($row_pg['num_result'] / $qnt_result_pg);

	
	$max_links = 2;

	$htmlPag = '';

	$htmlPag .= '<nav aria-label="paginacao">';
	$htmlPag .= '<ul class="pagination">';
	$htmlPag .= '<li class="page-item">';
	$htmlPag .= "<span class='page-link'><a data-href='#' onclick='listar_alunos(1, $qnt_result_pg)'>Primeira</a> </span>";
	$htmlPag .= '</li>';
	for ($pag_ant = $pagina - $max_links; $pag_ant <= $pagina - 1; $pag_ant++) {
		if($pag_ant >= 1){
			$htmlPag .= "<li class='page-item'><a class='page-link' data-href='#' onclick='listar_alunos($pag_ant, $qnt_result_pg)'>$pag_ant </a></li>";
		}
	}
	$htmlPag .= '<li class="page-item active">';
	$htmlPag .= '<span class="page-link">';
	$htmlPag .= "$pagina";
	$htmlPag .= '</span>';
	$htmlPag .= '</li>';

	for ($pag_dep = $pagina + 1; $pag_dep <= $pagina + $max_links; $pag_dep++) {
		if($pag_dep <= $quantidade_pg){
			$htmlPag .= "<li class='page-item'><a class='page-link' data-href='#' onclick='listar_alunos($pag_dep, $qnt_result_pg)'>$pag_dep</a></li>";
		}
	}
	$htmlPag .= '<li class="page-item">';
	$htmlPag .= "<span class='page-link'><a data-href='#' onclick='listar_alunos($quantidade_pg, $qnt_result_pg)'>Última</a></span>";
	$htmlPag .= '</li>';
	$htmlPag .= '</ul>';
	$htmlPag .= '</nav>';


	echo $tabela;

	echo $htmlPag;

?>

