
<div class='box-login'>

	<div class='form-box-login'>
	
		<div class='titulo-login'>Área Restrita</div>
		
		<div class='row-form-box-login'>
			<input type='email' id='email' placeholder='E-mail'>
		</div>
		
		<div class='row-form-box-login'>
			<input type='password' id='senha' placeholder='Senha'>
		</div>
		
		<div class='row-form-box-login'>
			<button class='btn-login' onClick='login()'>ENTRAR</button>
		</div>
		<?php
		
		if(isset($_SESSION['error_login']) and $_SESSION['error_login'] == 'false'){
			
			echo "<span id='error-login'>ERROR: E-mail ou senha incorretos!</span>"; 
		}
		
		?>
		
		
		
	</div>

</div>