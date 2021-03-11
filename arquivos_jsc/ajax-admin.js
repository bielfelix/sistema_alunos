$(document).ready(function() {
	
	alunos();
	
});


function sair(){
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	$.ajax({
		type: "POST",
		url: "arquivos_ajax/usuarios/sair.php",
		beforeSend: function(retorno) {

			$('.page-body').html(load);
			
		},
		success: function(retorno) {
			
			window.location.reload();
		},
		error: function(retorno) {


		}
	});	
}



function alunos(){
	
	$('.menus').removeClass('menuAtivo');
	$('#menuAlunos').addClass('menuAtivo');
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	$.ajax({
		type: "POST",
		url: "arquivos_ajax/alunos/listar.php",
		beforeSend: function(retorno) {

			$('.page-body').html(load);
			
		},
		success: function(retorno) {
			
			$('.page-body').html(retorno);
		},
		error: function(retorno) {


		}
	});	
}

function buscarAlunos(){
	
	var qnt_result_pg = 20; 
	var pagina = 1;
	
	var valor = $('#buscadorAlunos').val();
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	$.ajax({
		type: "POST",
		url: "arquivos_ajax/alunos/buscar.php",
		data: {valor: valor, pagina: pagina, qnt_result_pg: qnt_result_pg},
		beforeSend: function(retorno) {

			$('#resultado').html(load);
			
		},
		success: function(retorno) {
			
			$('#resultado').html(retorno);
		}
	});	
}

function info_alunos(cod){
	
	$('.modal-title').html('Info Aluno');
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	$.ajax({
		type: "POST",
		url: "arquivos_ajax/alunos/info.php",
		data: {cod: cod},
		beforeSend: function(retorno) {

			$('.modal-body').html(load);
			
		},
		success: function(retorno) {
			
			$('.modal-body').html(retorno);
		},
		error: function(retorno) {


		}
	});	
}

function modal_caAlunos(cod){
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	$.ajax({
		type: "POST",
		url: "arquivos_ajax/alunos/ca.php",
		data: {cod: cod},
		beforeSend: function(retorno) {

			$('.modal-body').html(load);
			$('.modal-title').html('Cadastrar Usuário');
			
		},
		success: function(retorno) {
			
			$('.modal-body').html(retorno);
		},
		error: function(retorno) {


		}
	});	
}

function modal_edAlunos(cod){
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	
	$.ajax({
		type: "POST",
		url: "arquivos_ajax/alunos/ed.php",
		data: {cod: cod},
		beforeSend: function(retorno) {

			$('.modal-body').html(load);
			$('.modal-title').html('Editar Usuário');
			
		},
		success: function(retorno) {
			
			$('.modal-body').html(retorno);
		},
		error: function(retorno) {


		}
	});	
}

function caAluno(){
	
	verifica = false;
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	var nome = 			$('#nome').val();
	var cep = 			$('#cep').val();
	var rua = 			$('#rua').val();
	var numero = 		$('#numero').val();
	var complemento = 	$('#complemento').val();
	var bairro = 		$('#bairro').val();
	var cidade = 		$('#cidade').val();
	var estado = 		$('#estado').val();
	var img = 			$('#img').val();
	var curso = 		$('#curso').val();
	var turma = 		$('#turma').val();
	var data = 			$('#data').val();
	var situacao = 		$('#situacao').val();

	if(nome == ''){	
		verifica = true;
		$('#nome').addClass('errorInput');
	}

	if(cep == ''){	
		verifica = true;
		$('#cep').addClass('errorInput');
	}

	if(rua == ''){	
		verifica = true;
		$('#rua').addClass('errorInput');
	}

	if(numero == ''){	
		verifica = true;
		$('#numero').addClass('errorInput');
	}

	if(bairro == ''){	
		verifica = true;
		$('#bairro').addClass('errorInput');
	}

	if(cidade == ''){	
		verifica = true;
		$('#cidade').addClass('errorInput');
	}

	if(estado == ''){	
		verifica = true;
		$('#estado').addClass('errorInput');
	}

	if(img == ''){	
		verifica = true;
		$('#img').addClass('errorInput');
	}

	if(curso == ''){	
		verifica = true;
		$('#curso').addClass('errorInput');
	}

	if(turma == ''){	
		verifica = true;
		$('#turma').addClass('errorInput');
	}

	if(data == ''){	
		verifica = true;
		$('#data').addClass('errorInput');
	}

	if(situacao == ''){	
		verifica = true;
		$('#situacao').addClass('errorInput');
	}

	if(verifica == true){	
			
		alert('Preencha todos os campos obrigatórios!');	

	}else{

		var formulario = document.getElementById('formulario');

		var formData = new FormData(formulario);

		$.ajax({
			url: "app_blocos_ed/alunos/ca.php",
			type: "POST",
			data: formData,
			dataType: 'json',
			processData: false,  
			contentType: false,
			beforeSend: function(retorno) {
				$('.modal-body').html(load);
			}
		});
		
		setTimeout(function(){
          	$('#exampleModal').modal('hide');
			alunos();
    	}, 1000);
	}
}

function edAluno(){
	
	verifica = false;
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	var nome = 			$('#nome').val();
	var cep = 			$('#cep').val();
	var rua = 			$('#rua').val();
	var numero = 		$('#numero').val();
	var complemento = 	$('#complemento').val();
	var bairro = 		$('#bairro').val();
	var cidade = 		$('#cidade').val();
	var estado = 		$('#estado').val();
	var curso = 		$('#curso').val();
	var turma = 		$('#turma').val();
	var data = 			$('#data').val();
	var situacao = 		$('#situacao').val();

	if(nome == ''){	
		verifica = true;
		$('#nome').addClass('errorInput');
	}

	if(cep == ''){	
		verifica = true;
		$('#cep').addClass('errorInput');
	}

	if(rua == ''){	
		verifica = true;
		$('#rua').addClass('errorInput');
	}

	if(numero == ''){	
		verifica = true;
		$('#numero').addClass('errorInput');
	}

	if(bairro == ''){	
		verifica = true;
		$('#bairro').addClass('errorInput');
	}

	if(cidade == ''){	
		verifica = true;
		$('#cidade').addClass('errorInput');
	}

	if(estado == ''){	
		verifica = true;
		$('#estado').addClass('errorInput');
	}

	if(curso == ''){	
		verifica = true;
		$('#curso').addClass('errorInput');
	}

	if(turma == ''){	
		verifica = true;
		$('#turma').addClass('errorInput');
	}

	if(data == ''){	
		verifica = true;
		$('#data').addClass('errorInput');
	}

	if(situacao == ''){	
		verifica = true;
		$('#situacao').addClass('errorInput');
	}

	if(verifica == true){	
			
		alert('Preencha todos os campos obrigatórios!');	

	}else{

		var formulario = document.getElementById('formulario');

		var formData = new FormData(formulario);

		$.ajax({
			url: "app_blocos_ed/alunos/ed.php",
			type: "POST",
			data: formData,
			dataType: 'json',
			processData: false,  
			contentType: false,
			beforeSend: function(retorno) {
				$('.modal-body').html(load);
			}
		});
		
		setTimeout(function(){
          	$('#exampleModal').modal('hide');
			alunos();
    	}, 1000);
	}

}

function exAlunos(cod){
	
	if(confirm('Tem certeza que desaja excluir?')){
		
		$.ajax({
			type: "POST",
			url: "app_blocos_ed/alunos/ex.php",
			data: {cod: cod},
			success: function(retorno) {
				alunos();
			}
		});	
	}	
}



function usuarios(){
	
	$('.menus').removeClass('menuAtivo');
	$('#menuUsuarios').addClass('menuAtivo');
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	$.ajax({
		type: "POST",
		url: "arquivos_ajax/usuarios/listar.php",
		beforeSend: function(retorno) {

			$('.page-body').html(load);
			
		},
		success: function(retorno) {
			
			$('.page-body').html(retorno);
		},
		error: function(retorno) {


		}
	});	
}

function modal_caUsuario(){
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	$.ajax({
		type: "POST",
		url: "arquivos_ajax/usuarios/ca.php",
		beforeSend: function(retorno) {

			$('.modal-body').html(load);
			$('.modal-title').html('Criar Usuário');
			
		},
		success: function(retorno) {
			
			$('.modal-body').html(retorno);
		},
		error: function(retorno) {


		}
	});	
}

function modal_edUsuario(cod){
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	$.ajax({
		type: "POST",
		url: "arquivos_ajax/usuarios/ed.php",
		data: {cod: cod},
		beforeSend: function(retorno) {

			$('.modal-body').html(load);
			$('.modal-title').html('Editar Usuário');
			
		},
		success: function(retorno) {
			
			$('.modal-body').html(retorno);
		},
		error: function(retorno) {


		}
	});	
}

function exUSuarios(cod){
	
	if(confirm('Tem certeza que desaja excluir?')){
		
		$.ajax({
			type: "POST",
			url: "app_blocos_ed/usuarios/ex.php",
			data: {cod: cod},
			success: function(retorno) {
				usuarios();
			}
		});	
	}	
}

function caUsuario(){

	var verifica = false;
	
	var nome = 		$('#nome').val();
	var email = 	$('#email').val();
	var senha = 	$('#senha').val();
	var tipo = 		$('#tipo').val();

	
	if(nome == ''){	
		verifica = true;
		$('#nome').addClass('errorInput');
	}
	
	if(email == ''){	
		verifica = true;
		$('#email').addClass('errorInput');
	}
	
	if(senha == ''){	
		verifica = true;
		$('#senha').addClass('errorInput');
	}
	
	if(tipo == ''){	
		verifica = true;
		$('#tipo').addClass('errorInput');
	}
	
	var ver_email = IsEmail();

	if(ver_email == false){	
		verifica = true;
	}	
	
	if(verifica == true){	
			
		alert('Preencha todos os campos obrigatórios!');	
		
	}else{

		
		$.ajax({
			type: "POST",
			url: "app_blocos_ed/usuarios/ca.php",
			data: {nome: nome, email: email, senha: senha, tipo: tipo},
			success: function(retorno) {
				usuarios();
			}
		});

	
	}
}

function edUsuario(){

	var verifica = false;
	
	var cod = 		$('#cod').val();
	var nome = 		$('#nome').val();
	var email = 	$('#email').val();
	var senha = 	$('#senha').val();
	var tipo = 		$('#tipo').val();

	
	if(nome == ''){	
		verifica = true;
		$('#nome').addClass('errorInput');
	}
	
	if(email == ''){	
		verifica = true;
		$('#email').addClass('errorInput');
	}
	
	if(tipo == ''){	
		verifica = true;
		$('#tipo').addClass('errorInput');
	}
	
	var ver_email = IsEmail();

	if(ver_email == false){	
		verifica = true;
	}
	
	
	if(verifica == true){	
			
		alert('Preencha todos os campos obrigatórios!');	
		
	}else{

		
		$.ajax({
			type: "POST",
			url: "app_blocos_ed/usuarios/ed.php",
			data: {cod: cod, nome: nome, email: email, senha: senha, tipo: tipo},
			success: function(retorno) {
				usuarios();
			}
		});

	
	}
}



function cursos(){
	
	$('.menus').removeClass('menuAtivo');
	$('#menuCursos').addClass('menuAtivo');
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	$.ajax({
		type: "POST",
		url: "arquivos_ajax/cursos/listar.php",
		beforeSend: function(retorno) {

			$('.page-body').html(load);
			
		},
		success: function(retorno) {
			
			$('.page-body').html(retorno);
		},
		error: function(retorno) {


		}
	});	
}

function info_cursos(cod){
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	$('.modal-title').html('Info Curso');
	
	$.ajax({
		type: "POST",
		url: "arquivos_ajax/cursos/info.php",
		data: {cod: cod},
		beforeSend: function(retorno) {

			$('.modal-body').html(load);
			
		},
		success: function(retorno) {
			
			$('.modal-body').html(retorno);
		},
		error: function(retorno) {


		}
	});	
}

function modal_importCursos(cod){
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	$.ajax({
		type: "POST",
		url: "arquivos_ajax/cursos/importar.php",
		data: {cod: cod},
		beforeSend: function(retorno) {

			$('.modal-body').html(load);
			$('.modal-title').html('Importar Cursos XML');
			
		},
		success: function(retorno) {
			
			$('.modal-body').html(retorno);
		},
		error: function(retorno) {


		}
	});	
}

function modal_caCursos(cod){
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	$.ajax({
		type: "POST",
		url: "arquivos_ajax/cursos/ca.php",
		data: {cod: cod},
		beforeSend: function(retorno) {

			$('.modal-body').html(load);
			$('.modal-title').html('Cadastrar Curso');
			
		},
		success: function(retorno) {
			
			$('.modal-body').html(retorno);
		},
		error: function(retorno) {


		}
	});	
}

function modal_edCursos(cod){
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	
	$.ajax({
		type: "POST",
		url: "arquivos_ajax/cursos/ed.php",
		data: {cod: cod},
		beforeSend: function(retorno) {

			$('.modal-body').html(load);
			$('.modal-title').html('Editar Curso');
			
		},
		success: function(retorno) {
			
			$('.modal-body').html(retorno);
		},
		error: function(retorno) {


		}
	});	
}

function importCursos(){
	
	verifica = false;
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	var xml = 	$('#xml').val();

	if(xml == ''){	
		verifica = true;
		$('#xml').addClass('errorInput');
	}

	if(verifica == true){	
			
		alert('Preencha todos os campos obrigatórios!');	

	}else{

		var formulario = document.getElementById('formulario');

		var formData = new FormData(formulario);

		$.ajax({
			url: "app_blocos_ed/cursos/importar.php",
			type: "POST",
			data: formData,
			dataType: 'json',
			processData: false,  
			contentType: false,
			beforeSend: function(retorno) {
				$('.modal-body').html(load);
			}
		});
		
		setTimeout(function(){
          	$('#exampleModal').modal('hide');
			cursos();
    	}, 1000);
	}
}

function caCursos(){
	
	verifica = false;
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	var nome = 	$('#nome').val();

	if(nome == ''){	
		verifica = true;
		$('#nome').addClass('errorInput');
	}

	if(verifica == true){	
			
		alert('Preencha todos os campos obrigatórios!');	

	}else{

		var formulario = document.getElementById('formulario');

		var formData = new FormData(formulario);

		$.ajax({
			url: "app_blocos_ed/cursos/ca.php",
			type: "POST",
			data: formData,
			dataType: 'json',
			processData: false,  
			contentType: false,
			beforeSend: function(retorno) {
				$('.modal-body').html(load);
			}
		});
		
		setTimeout(function(){
          	$('#exampleModal').modal('hide');
			cursos();
    	}, 1000);
	}
}

function edCursos(){
	
	verifica = false;
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
	
	var nome = $('#nome').val();

	if(nome == ''){	
		verifica = true;
		$('#nome').addClass('errorInput');
	}

	if(verifica == true){	
			
		alert('Preencha todos os campos obrigatórios!');	

	}else{

		var formulario = document.getElementById('formulario');

		var formData = new FormData(formulario);

		$.ajax({
			url: "app_blocos_ed/cursos/ed.php",
			type: "POST",
			data: formData,
			dataType: 'json',
			processData: false,  
			contentType: false,
			beforeSend: function(retorno) {
				$('.modal-body').html(load);
			}
		});
		
		setTimeout(function(){
          	$('#exampleModal').modal('hide');
			cursos();
    	}, 1000);
	}

}

function exCursos(cod){
	
	if(confirm('Tem certeza que desaja excluir?')){
		
		$.ajax({
			type: "POST",
			url: "app_blocos_ed/cursos/ex.php",
			data: {cod: cod},
			success: function(retorno) {
				cursos();
			}
		});	
	}	
}





















