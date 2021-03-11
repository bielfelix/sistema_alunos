<?php

	class Cookie{
		
		private $name;
		private $value;
		private $time;
		private $domain;
		private $path;
		private $secure;
		
		public function __construct() { }

		/**
		 * cookie.
		 */
		
		
		/********* Cria o cookie *********/
		public function criar_cookie($nome_cookie, $valor_cookie) {
			
			//return setcookie('hospital_visitante_bh', 'hospital_visitou_bh', (time() + (20 * 24 * 3600)));
			  return setcookie($nome_cookie, $valor_cookie, (time() + (20 * 24 * 3600)),"/");
			
		}
		
		/********* Ler o cookie *********/
		public function ler_cookie($nome_cookie){
			return $_COOKIE[$nome_cookie];
		}
		
		/********* Deleta o cookie *********/
	   
		public function excluir_cookie($nome_cookie){
			return setcookie($nome_cookie);
		}
	}

?>