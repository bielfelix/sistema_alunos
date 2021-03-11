<?php
	
	/*************************************************************************/
	/*                  Funções para tratamento de urls                      */
	/*************************************************************************/
	
	/*
		Retorna o valor de um parametro passado via url
		@parametros de entrada: nome do parametro
		@parametros de saida: valor do parametro
	*/
	function get($nome_parametro){
		
		/* Separa os elementos da url */
		$elementos_url = explode('_', $_GET['url']);
		
		$contador = 1;
		
		foreach ($elementos_url as &$value) {
			$conjunto = explode('=', $value);
			
			if($contador > 1 && $conjunto[0] == $nome_parametro){
				return($conjunto[1]);
			}
			
			$contador++;
		}
		
	}
	
	/*
		Retorna o nome do arquivo php a ser carregado
		@parametros de entrada: nenhum
		@parametros de saida: nome do arquivo php
	*/
	function nome_pagina(){
		
		
		
		if(empty($_GET['url'])){
			$nome_pagina = 'candidadtos';
		}
		else{
			$aux = explode('_', $_GET['url']);
			$nome_pagina = $aux[0];
		}	
				
		return $nome_pagina;	
	}
	
	/*
		Retorna quantos niveis são necesarios para a raiz a partir do diretorio atual
	*/
	function trata_diretorios(){
		
		$url = $_GET['url'];
		
		/* Verifica se a url termina com / */
		$caractere = substr($url, -1);
		
		if($caractere == '/'){
		
			$aux = explode('/', $url);
			$diretorios = '';
			for($i = 1; $i < sizeof($aux); $i++){
				
				$diretorios .= '../';
			}
		}
		else{
			
			$aux = explode('/', $url);
			$diretorios = '';
			for($i = 1; $i < sizeof($aux); $i++){
				
				$diretorios .= '../';
			}
		}
				
		return $diretorios;
	}
	
	/*
		Retorna a url atual
		@parametros de entrada: nenhum
		@parametros de saida: a url atual
	*/
	function url_atual(){
		
		$url_atual = 'http';
		if(isset($_SERVER["HTTPS"]) and ($_SERVER["HTTPS"] == "on")){
			$url_atual .= "s";
		}
		$url_atual .= "://";
			
		if(isset($_SERVER["SERVER_PORT"]) and ($_SERVER["SERVER_PORT"] == "8080")){
			$url_atual .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
		}
		else{
			$url_atual .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
		}
					
		return $url_atual;
	}
	
	/*
		Retira um parametro da url
		@parametros de entrada: a url e o parametro
		@parametros de saida: a url sem o parametro
	*/
	function tira_parametro_url($url, $parametro){
			
		$urlFormatada = preg_replace('/('.$parametro.'=)(.*)/', '', $url);
		
		return $urlFormatada;
	}
?>