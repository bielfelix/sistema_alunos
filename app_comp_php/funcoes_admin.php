<?php

function mask($val, $mask) {
    $maskared = '';
    $k = 0;
    for($i = 0; $i<=strlen($mask)-1; $i++) {
        if($mask[$i] == '#') {
            if(isset($val[$k])) $maskared .= $val[$k++];
        } else {
            if(isset($mask[$i])) $maskared .= $mask[$i];
        }
    }
    return $maskared;
}

function trata_senha($senha) {
	
	$key = '$y2$_994b4ccbcaa8ffbc1b1a16eff952f7d9#@cw71jbj31%_mk27$994b4ccbcaa8ffbc1b1a16eff952f7d9994b4ccbcaa8ffbc1b1a16eff952f7d9$$_YbHk%%_@_837_$$_0889./Hbdk_$$';
	
	$array = array("'", "%", "¨", "&", "*", "(", ")", "-", "_", "=", "+", "§", "{", "}", "[", "]", "/", ";", ":", "?", "<", ">", ".", ",", '|', "\\", '"', ' ');

    $aux0 = str_replace($array, "", $senha);
	
	$aux1 = addslashes(preg_replace('/[^[:alnum:]_]/', '',$aux0));
	
	$aux2 = '$_%#!&_?_$08Hk89./Hbdk_$_$.#@%$'.base64_encode($aux1);

    $aux3 = '$y2$_'.md5($aux2).'#@cw71jbj31%_mk27$'.$key.md5($aux2).'$$_YbHk%%_@_837'.$aux2.'_$$_0889./Hbdk_$$';
	
	return md5(base64_encode($aux3));
}

function trata_email($email) {
	
	$array = array("'", "!", "#", "$", "%", "¨", "&", "*", "(", ")", "-", "=", "+", "§", "{", "}", "[", "]", "/", ";", ":", "?", "<", ">", ",", '|', "\\", '"');

    $aux0 = addslashes(str_replace($array, "", $email));

	$find1 = strpos($aux0, '@');
	$find2 = strpos($aux0, '.');
	
	 
	if($find1 !== false && $find2 !== false){
	 $validador = true;
	 $conteudo = $aux0;
	}else{
	 $validador = false;
	 $conteudo = false;
	}
	
	return(array($validador, $conteudo));
}

function trata_numero($numero){
	
	$array = array("'", "!", "@", "#", "$", "%", "¨", "&", "*", "(", ")", "-", "_", "=", "+", "§", "{", "}", "[", "]", "/", ";", ":", "?", "<", ">", ".", ",", '|', "\\", '"');

    $aux0 = str_replace($array, "", $numero);
	
	return addslashes(preg_replace('/[^0-9]/', '',$aux0));
}


?>