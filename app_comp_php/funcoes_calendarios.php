<?php
	
	/*************************************************************************/
	/*                Funções para criação de calendarios                    */
	/*************************************************************************/
	
	function GetNumeroDias($mes){
		
		$numero_dias = array(
							'01' => 31, '02' => 28, '03' => 31, '04' =>30, '05' => 31, '06' => 30, 
							'07' => 31, '08' =>31, '09' => 30, '10' => 31, '11' => 30, '12' => 31
							);
		
		// Altera o numero de dias de fevereiro se o ano for bissexto
		if(((date('Y') % 4) == 0 and (date('Y') % 100)!=0) or (date('Y') % 400)==0){
			$numero_dias['02'] = 29;	
		}

		return $numero_dias[$mes];
	}

	function GetNomeMes($mes){
		$meses = array(
						'01' => "Janeiro", '02' => "Fevereiro", '03' => "Março", '04' => "Abril", '05' => "Maio", '06' => "Junho",
						'07' => "Julho",   '08' => "Agosto",    '09' => "Setembro", '10' => "Outubro", '11' => "Novembro",  '12' => "Dezembro"
						 );

		if($mes >= 01 && $mes <= 12){
			return $meses[$mes];
		}
		
		return "Mês deconhecido";
	}
	
	function CriaDiasSemana(){
		
		$diasSemana = array('D', 'S', 'T', 'Q', 'Q', 'S', 'S');
		$estruturaSemana = '';
		
		for($i = 0; $i < 7; $i++){
			$estruturaSemana .= "<td>".$diasSemana{$i}."</td>";
		}
		
		return $estruturaSemana;
		
	}
	
	function CriaCalendarioMes($mes){

		$numero_dias = GetNumeroDias($mes);
		$nome_mes = GetNomeMes($mes);
		$diacorrente = 0;	
		
		// função que descobre o dia da semana
		$diasemana = jddayofweek(cal_to_jd(CAL_GREGORIAN, $mes,"01",date('Y')) , 0 );	
		
		$calendarioMes = '';
		$calendarioMes .= "<table border = 0 cellspacing = '0' align = 'center'>";
		$calendarioMes .= "<tr>";
		$calendarioMes .= "<td colspan = 7><h3>".$nome_mes."</h3></td>";
		$calendarioMes .= "</tr>";
		$calendarioMes .= "<tr>";
		$calendarioMes .= CriaDiasSemana();
		$calendarioMes .= "</tr>";
		
		for($linha = 0; $linha < 6; $linha++){
			
			$calendarioMes .= "<tr>";

			for($coluna = 0; $coluna < 7; $coluna++){
				
				$calendarioMes .= "<td width = 30 height = 30 ";

				if(($diacorrente == ( date('d') - 1) && date('m') == $mes)){	
				   
					$calendarioMes .= " id = 'dia_atual' ";
				}
				else{
					
					if(($diacorrente + 1) <= $numero_dias ){
						
						if( $coluna < $diasemana && $linha == 0){
							$calendarioMes .= " id = 'dia_branco' ";
						}
						else{
							$calendarioMes .= " id = 'dia_comum' ";
						}
					}
					else{
						$calendarioMes .= " ";
					}
				}
				
				$calendarioMes .= " align = \"center\" valign = \"center\">";
				
				// Cria os dias da semana
				if($diacorrente + 1 <= $numero_dias){
				 
					if( $coluna < $diasemana && $linha == 0){
						$calendarioMes .= " ";
					}
					else{
						$calendarioMes .= "<a href = ".$_SERVER["PHP_SELF"]."?mes=$mes&dia=".($diacorrente+1).">".++$diacorrente . "</a>";
					}
				}
				else{
					break;
				}

				$calendarioMes .= "</td>";
			}
			
			$calendarioMes .= "</tr>";
		}

		$calendarioMes .= "</table>";
		
		return $calendarioMes;
	}

	function CriaCalendarioCompleto(){
		
		$calendarioCompleto = '';
		
		$calendarioCompleto .= "<table align = \"center\">";
		$cont = 1;
		for($j = 0; $j < 4; $j++){
			
			$calendarioCompleto .=  "<tr>";
			
			for($i = 0; $i < 3; $i++){
			 
				$calendarioCompleto .= "<td>";
				$calendarioCompleto .= CriaCalendarioMes(($cont < 10 ) ? "0".$cont : $cont);  

				$cont++;
				
				$calendarioCompleto .=  "</td>";

			}
			
			$calendarioCompleto .=  "</tr>";
		}
		
		$calendarioCompleto .=  "</table>";
		
		return $calendarioCompleto;
	}