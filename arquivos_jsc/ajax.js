
$(document).keypress(function(e) {
	if (e.which == 13) {
		login();
	}
});

function login(){
	
	var load = "<img src='arquivos_img/load.gif' class='loadGif'>";
		
	var verifica = false;
	
	var email = 	$('#email').val();
	var senha = 	$('#senha').val();
	
	if(email == ''){	
		verifica = true;
		$('#email').addClass('errorInput');
	}else{
		$('#email').removeClass('errorInput');
	}
	
	if(senha == ''){	
		verifica = true;
		$('#senha').addClass('errorInput');
	}else{
		$('#senha').removeClass('errorInput');
	}
	
	
	if(verifica){	
		
		alert('Preencha todos os campos obrigatórios!');	
		
	}else{
	
		$.ajax({
			type: "POST",
			url: "arquivos_ajax/usuarios/login.php",
			data: {email: email, senha: senha},
			beforeSend: function(retorno) {

				$('.form-box-login').html(load);
				
			},
			success: function(retorno) {
				
				window.location.reload();
			}
			
		});
		
	}
}
			
			
			
			
			
			
			
			
			
			