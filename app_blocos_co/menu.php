<div class='menu'>

	<span onClick='alunos()' id='menuAlunos' class='menus'>Alunos</span>
	
	<span onClick='cursos()' id='menuCursos' class='menus'>Cursos</span>
	
	<?php
	
	if($_SESSION['tipo_usuario'] == '2'){
		
		echo "<span onClick='usuarios()' id='menuUsuarios' class='menus'>Usuários</span>";
	}

	
	?>
	
	<span onClick='sair()'>Sair</span>

</div>