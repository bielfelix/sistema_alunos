<?php
	
	/*************************************************************************/
	/*                  Funções para tratamento de imagens                   */
	/*************************************************************************/
	
	function calcula_nova_largura($nome_img, $nova_altura){
		$dados_img = getimagesize("../../arquivos_up/imagens/up_imagens/imagens/".$nome_img);
		$largura_original = $dados_img[0];
		$altura_original = $dados_img[1];
		
		$nova_largura = ($largura_original * $nova_altura) / $altura_original;
		
		return round($nova_largura);
	}
	
	function calcula_nova_altura($nome_img, $nova_largura){
		$dados_img = getimagesize("../../arquivos_up/imagens/up_imagens/imagens/".$nome_img);
		$largura_original = $dados_img[0];
		$altura_original = $dados_img[1];
		
		$nova_altura = ($nova_largura / $largura_original) * $altura_original;
		
		return round($nova_altura);
	}
	
	function calcula_proporcao($nome_img, $caminho_img, $proporcao){
		
		if(empty($caminho_img)){
			$dados_img = getimagesize("../../arquivos_up/imagens/up_imagens/imagens/".$nome_img);
		}
		else{
			$dados_img = getimagesize($caminho_img.$nome_img);
		}
		
		$largura_original = $dados_img[0];
		$altura_original = $dados_img[1];
		
		if($proporcao < 1 or $proporcao > 100){
			$nova_largura = $largura_original;
			$nova_altura = $altura_original;
		}
		else{
			$nova_largura = $largura_original * ($proporcao / 100);
			$nova_altura = $altura_original * ($proporcao / 100);
		}
		
		$dimensoes = array('x' => round($nova_largura), 'y' => round($nova_altura));
		
		return $dimensoes;	
	}
	
	function gera_nova_imagem($imagem, $largura, $altura, $pasta){
		
		$nome_img = $imagem['name'];
		$local_img = 'arquivos_up/imagens/up_imagens/'.$pasta.'/'.$nome_img;
		
		if ($imagem['type'] == "image/jpeg"){
			$img = imagecreatefromjpeg($imagem['tmp_name']);
		}
		else if ($imagem['type'] == "image/gif"){	
			$img = imagecreatefromgif($imagem['tmp_name']);
		}
		else if ($imagem['type'] == "image/png"){
			$img = imagecreatefrompng($imagem['tmp_name']);
		}
		
		$x = imagesx($img);
		$y = imagesy($img);
		
		if(empty($largura) and !empty($altura)){
			$largura = round(($x * $altura) / $y);  
		}
		else if(!empty($largura) and empty($altura)){
			$altura = round(($largura / $x) * $y);
		}
		else{
			$largura = $x;
			$altura = $y;
		}
			
		$nova = imagecreatetruecolor($largura, $altura);
		imagecopyresampled($nova, $img, 0, 0, 0, 0, $largura, $altura, $x, $y);
			
		if ($imagem['type'] == "image/jpeg"){
			imagejpeg($nova, $local_img) or die('Erro ao gerar miniatura!');
		}
		else if ($imagem['type'] == "image/gif"){
			imagejpeg($nova, $local_img) or die('Erro ao gerar miniatura!');
		}
		else if ($imagem['type'] == "image/png"){
			imagejpeg($nova, $local_img) or die('Erro ao gerar miniatura!');
		}		
			
		imagedestroy($img);
		imagedestroy($nova);	
			
	}
	
	
	function cria_miniatura($img, $original, $miniatura, $largura_miniatura, $altura_miniatura ) {
	    
		/* Verifica o formato da imagem */
		if($img['type'] == "image/jpeg"){
			$imagem_original = imagecreatefromjpeg($original);
		}
		else if($img['type'] == "image/png"){
			$imagem_original = imagecreatefrompng($original);
		}
		else if($img['type'] == "image/gif"){	
			$imagem_original = imagecreatefromgif($original);
	    }
		
		/* Calcula a proporção com base na largura */
		$largura_original = imagesx($imagem_original);
	    $altura_original  = imagesy($imagem_original);
		
		if(empty($largura_miniatura) and !empty($altura_miniatura)){
			$largura_miniatura = round(($largura_original * $altura_miniatura) / $altura_original);  
		}
		else if(!empty($largura_miniatura) and empty($altura_miniatura)){
			$altura_miniatura = round(($largura_miniatura / $largura_original) * $altura_original);
		}
		else{
			$largura_miniatura = $largura_original;
			$altura_miniatura = $altura_original;
		}
		
	    $imagem_miniatura = imagecreatetruecolor($largura_miniatura, $altura_miniatura);
	    imagecopyresampled($imagem_miniatura, $imagem_original, 0, 0, 0, 0, $largura_miniatura, $altura_miniatura, $largura_original, $altura_original);
		
		/* Cria a miniatura */
	    if($img['type'] == "image/jpeg"){
			imagejpeg($imagem_miniatura, $miniatura);
		}
		else if($img['type'] == "image/png"){
			imagepng($imagem_miniatura, $miniatura);
		}
		else if($img['type'] == "image/gif"){
			imagegif($imagem_miniatura, $miniatura);
		}
	}
	
	function novo_nome_img($caminho, $img){
		
		$nome_img = substr($img['name'], 0, -4);
		$extensao_img = substr($img['name'], -3);
		$novo_nome_img = md5($nome_img).'.'.$extensao_img;
		$arquivo_img = $caminho.'/'.$novo_nome_img;
		
		$i = 1;
		while(file_exists($arquivo_img)){
			$novo_nome_img = md5($nome_img.$i).'.'.$extensao_img;
			$arquivo_img = $caminho.'/'.$novo_nome_img;
			$i++;
		}
		
		return $novo_nome_img;	
	}
	
	