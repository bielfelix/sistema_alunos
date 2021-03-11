

<script>
			
	$(document).ready(function () {
		var qnt_result_pg = 20; //quantidade de registro por página
		var pagina = 1; //página inicial
		listar_alunos(pagina, qnt_result_pg); //Chamar a função para listar os registros
	});

	function listar_alunos(pagina, qnt_result_pg){
		
		var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
		
		$.ajax({
			type: "POST",
			url: "arquivos_ajax/alunos/paginacao.php",
			data: {pagina: pagina, qnt_result_pg: qnt_result_pg},
			beforeSend: function(retorno) {

				$('#resultado').html(load);

			},
			success: function(retorno) {

				$("#resultado").html(retorno);
			}
		});
	}
</script>

<h2>Listar Alunos</h2>

<div class="link-exportar displayFlex">
	
	<div class="buscarAlunos displayFlex">
	
		<input type="text" class="form-control" onKeyUp="buscarAlunos();" onkeypress="return onlynumber();" placeholder="Buscar aluno por ID" id="buscadorAlunos">
		<button type="button" onClick="alunos()">Limpar</button>
	
	</div>
	
	<a onClick='modal_caAlunos()' data-bs-toggle="modal" data-bs-target="#exampleModal">Criar Aluno <i class="fas fa-user-plus"></i></a>
</div>



<div id="resultado"></div>		
		
		
		
		
		
		
		
		
		
		
		
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







