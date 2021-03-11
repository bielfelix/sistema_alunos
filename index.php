<?php
	session_start();
	//error_reporting(0);

	/**************************************** componentes php *************************************/
	include("app_comp_php/funcoes_bd.php");
	include("app_comp_php/funcoes_calendarios.php");
	include("app_comp_php/funcoes_datas.php");
	include("app_comp_php/funcoes_urls.php");
	include("app_comp_php/funcoes_gerais.php");
	include("app_comp_php/funcoes_admin.php");


	/***************************** verifica se a página existe fisicamente ************************/
	$nome_pagina = nome_pagina();
	
	if(isset($_SESSION['logado']) and $_SESSION['logado'] == 'sim'){
		
		$_SESSION['pagina'] = 'dashboard';
		
	}else{
		
		$_SESSION['pagina'] = 'login';
	}
	
	

//unset($_SESSION);

?>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="description" content="Sistema de gerenciamento de alunos."/>
		<meta name="keywords" content="gerenciamento, alunos">	
		<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		
		<link rel="shortcut icon" href="arquivos_img/favicon.ico" type="image/x-icon">
				
		<title>Sistema de Alunos</title>
		 
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<link href="arquivos_css/bootstrap.min.css" rel="stylesheet">
		<link href="arquivos_css/site.css" rel="stylesheet">
		<link href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" rel="stylesheet" crossorigin="anonymous">			
		
		<script src="arquivos_jsc/jquery-3.3.1.min.js"></script>
		<script src="arquivos_jsc/bootstrap.min.js"></script>
		<script src="arquivos_jsc/site.js"></script>				
	
		<?php 
		
		if(isset($_SESSION['logado']) and $_SESSION['pagina'] != 'login'){
			
			echo '<script src="arquivos_jsc/ajax-admin.js"></script>'; 
		}else{
			
			echo '<script src="arquivos_jsc/ajax.js"></script>'; 			
		}
		
		?>
	</head>
	<body>
	
		<?php 
		
		if($_SESSION['pagina'] != 'login'){
			
			echo '<div class="page">';
			include('app_blocos_co/menu.php'); 
			include('app_paginas/'.$_SESSION['pagina'].'.php');
			echo '</div>';
		}else{
			include('app_paginas/'.$_SESSION['pagina'].'.php');
		}
		
		?>	
		
	</body>
</html>		