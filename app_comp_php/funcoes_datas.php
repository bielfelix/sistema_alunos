<?php
	
	/*************************************************************************/
	/*                  Funções para tratamento de datas                     */
	/*************************************************************************/
	
	/* 
		Retira a data e coloca no formato brasileiro 
		@parametros de entrada: data e hora
		@saida: data e hora no seguinte formatado dia/mes/ano
	*/
	function retira_data_br($data_hora){
		$aux  = explode(' ', $data_hora);
		$data = explode('-', $aux[0]);
		$data_formatada = $data[2].'/'.$data[1].'/'.$data[0];
		
		return $data_formatada;
		
	}
	
	/* 
		Retira a hora e coloca no formato brasileiro 
		@parametros de entrada: data e hora
		@saida: data e hora no seguinte formatado horas:minutos
	*/
	function retira_hora_br($data_hora){
		$aux  = explode(' ', $data_hora);
		$hora = explode(':', $aux[1]);		
		$hora_formatada = $hora[0].':'.$hora[1];
		
		return $hora_formatada;
	}
	
	
	/* 
		Retorna a data no formato brasileiro 
		@parametros de entrada: data
		@saida: data no seguinte formatado dia/mes/ano
	*/
	function formata_data_br($data){
			
		$aux = explode('-', $data);
		$data_formatada = $aux[2].'/'.$aux[1].'/'.$aux[0];
			
		return $data_formatada;
	}
	
	/* 
		Retorna a hota no formato brasileiro 
		@parametros de entrada: hora
		@saida: data no seguinte formatado hora:minutos
	*/
	function formata_hora_br($hora){
			
		$aux = explode(':', $hora);
		$hora_formatada = $aux[0].':'.$aux[1];
			
		return $hora_formatada;
	}
	
	/* 
		Retorna a data e a hora no formato brasileiro 
		@parametros de entrada: data e hora
		@saida: data e hora no seguinte formatado dia/mes/ano horas:minutos
	*/
	function formata_data_hora_br($data_hora){
		$aux  = explode(' ', $data_hora);
		$data = explode('-', $aux[0]);
		$hora = explode(':', $aux[1]);		
		$data_hora_formatada = $data[2].'/'.$data[1].'/'.$data[0].' '.$hora[0].':'.$hora[1];
		
		return $data_hora_formatada;
		
	}
	
	/* 
		Retorna a data no formato norte americano
		@parametros de entrada: data
		@saida: data no seguinte formatado ano-mes-dia
	*/
	function formata_data_usa($data){
			
		$aux = explode('/', $data);
		$data_formatada = $aux[2].'-'.$aux[1].'-'.$aux[0];
			
		return $data_formatada;
	}
	
	/* 
		Retorna a data e a hora no formato norte americano
		@parametros de entrada: data e hora
		@saida: data e hora no seguinte formatado ano-mes-dia horas:minutos:segundos
	*/
	function formata_data_hora_usa($data_hora){
		$aux  = explode(' ', $data_hora);
		$data = explode('/', $aux[0]);
		$hora = explode(':', $aux[1]);		
		$data_hora_formatada = $data[2].'-'.$data[1].'-'.$data[0].' '.$hora[0].':'.$hora[1].':00';
		
		return $data_hora_formatada;
		
	}
	
	/*
		Retorna o nome do mês referente a um numero de 1 a 12 
	*/	
	function mes_referencia($mes){
		
		if($mes == 1 or $mes == '01'){
			return 'Janeiro';
		}
		if($mes == 2 or $mes == '02'){
			return 'Fevereiro';
		}
		if($mes == 3 or $mes == '03'){
			return 'Março';
		}
		if($mes == 4 or $mes == '04'){
			return 'Abril';
		}
		if($mes == 5 or $mes == '05'){
			return 'Maio';
		}
		if($mes == 6 or $mes == '06'){
			return 'Junho';
		}
		if($mes == 7 or $mes == '07'){
			return 'Julho';
		}
		if($mes == 8 or $mes == '08'){
			return 'Agosto';
		}
		if($mes == 9 or $mes == '09'){
			return 'Setembro';
		}
		if($mes == 10 or $mes == '10'){
			return 'Outubro';
		}
		if($mes == 11 or $mes == '11'){
			return 'Novembro';
		}
		if($mes == 12 or $mes == '12'){
			return 'Dezembro';
		}
	}
	
	function somar_dias_data($dias, $data){
		
		return date('Y-m-d', strtotime('+'.$dias.' days', strtotime($data)));
	}

	function data_extenso($data){
		$aux = explode('-', $data);
		$data_formatada = $aux[2].' de '.mes_referencia($aux[1]).' de '.$aux[0];
		return $data_formatada;
	}
	
?>	