<?php

include_once('../../app_comp_php/funcoes_bd.php');

$bd = new banco_dados();

$cursos = "";

$sql = 'SELECT * FROM cursos';
$query = $bd->select($sql);

while($dado = $bd->row($query)){
	
	$cursos .= "<option value='".$dado['cod_cursos']."'>".$dado['nome_cursos']."</option>";
}


?>

<div class='form-modal'>
	<form action='' id='formulario'>
		
		<img src='' id='imgResult'>
		
		<input class='form-control' name='img' id='img' type='file'>

		<input class='form-control' name='nome' id='nome' placeholder='Nome' type='text'>

		<input class='form-control' name='cep' id='cep' placeholder='CEP' type='text' maxlength="10" onBlur="pesquisacep(this.value);" onkeydown="javascript: fMasc( this, mCEP );">

		<input class='form-control' name='estado' id='estado' placeholder='Estado' type='text'>

		<div class='displayFlex'>
			<input class='form-control w48' name='bairro' id='bairro' placeholder='Bairro' type='text'>
			<input class='form-control w48' name='cidade' id='cidade' placeholder='Cidade' type='text'>
		</div>

		<input class='form-control' name='rua' id='rua' placeholder='Rua' type='text'>

		<div class='displayFlex'>
			<input class='form-control w48' name='numero' id='numero' placeholder='Número' type='text'>
			<input class='form-control w48' name='complemento' id='complemento' placeholder='Complemento' type='text'>
		</div>

		<select class='form-control' name='curso' id='curso'>
			<option value="">Curso</option>
			<?php echo $cursos; ?>
		</select>

		<input class='form-control' name='turma' id='turma' placeholder='Turma' type='text'>

		<input class='form-control' name='data' id='data' placeholder='Data de matrícula' type='text' onkeypress="mascaraData(this)" maxlength="10">

		<select class='form-control' name='situacao' id='situacao'>
			<option value="">Situação</option>
			<option value="1">Ativo</option>
			<option value="2">Inativo</option>
		</select>
		
		
	  <button type="button" onClick="caAluno()">Salvar</button>

	</form>
</div>

<script>

$(document).ready(function($) {
	
	$("input[type=file]").on("change", function(){
        var files = !!this.files ? this.files : [];
        if (!files.length || !window.FileReader) return;
 
        if (/^image/.test( files[0].type)){
            var reader = new FileReader();
            reader.readAsDataURL(files[0]);
 
            reader.onload = function(){
                $("#imgResult").attr('src', this.result);
                $("#imgResult").show();
            }
        }
    });
 
});

</script>