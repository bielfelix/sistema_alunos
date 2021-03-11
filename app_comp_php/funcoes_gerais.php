<?php

/* * ******************************************************************* Fun��es letra G ********************************************************* */

function gerador_senha($tamanho = 8, $maiusculas = true, $numeros = true) {
    
    $lmin = 'abcdefghijklmnopqrstuvwxyz';
    $lmai = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $num = '1234567890';
    $retorno = '';
    $caracteres = '';
    $caracteres .= $lmin;
    if ($maiusculas){
        
        $caracteres .= $lmai;
    }   
    if ($numeros){
        
        $caracteres .= $num;
    }
        
    $len = strlen($caracteres);
    for ($n = 1; $n <= $tamanho; $n++) {
        $rand = mt_rand(1, $len);
        $retorno .= $caracteres[$rand - 1];
    }
    return $retorno;
}

/* * ***************************************************************** Fun��es N ***************************************************************** */

function novo_nome_arq($caminho, $arq) {

    $aux = explode('.', $arq['name']);

    $nome_arq = $aux[0];
    $extensao_arq = end($aux);
    $novo_nome_arq = md5($nome_arq) . '.' . $extensao_arq;
    $arquivo_arq = $caminho . '/' . $novo_nome_arq;

    $i = 1;
    while (file_exists($arquivo_arq)) {
        $novo_nome_arq = md5($nome_arq . $i) . '.' . $extensao_arq;
        $arquivo_arq = $caminho . '/' . $novo_nome_arq;
        $i++;
    }

    return $novo_nome_arq;
}

/* * ***************************************************************** Fun��es R ***************************************************************** */

function retira_acentos($texto) {

    $array1 = array("�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�", "�");

    $array2 = array("a", "a", "a", "a", "a", "e", "e", "e", "e", "i", "i", "i", "i", "o", "o", "o", "o", "o", "u", "u", "u", "u", "c", "A", "A", "A", "A", "A", "E", "E", "E", "E", "I", "I", "I", "I", "O", "O", "O", "O", "O", "U", "U", "U", "U", "C");

    $aux = str_replace($array1, $array2, $texto);

    return $aux;
}

function retira_caracteres_especiais($texto) {

    $ce = array("'", '"', '?', '!', ',', ';', '.', ':', "-", "_", "�", "�", "�", "/", "\\", "&", "%");

    $aux = str_replace($ce, "", $texto);

    return $aux;
}

?>	

