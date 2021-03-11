<?php
	error_reporting(0);

	include_once('../../app_comp_php/funcoes_bd.php');
	include_once('../../app_comp_php/funcoes_gerais.php');
	include_once('../../app_comp_php/funcoes_admin.php');
	include_once('../../app_comp_php/funcoes_datas.php');
	
	$bd = new banco_dados();
	
	$cod = trata_numero($_POST['cod']);

	$cursos = "";

	$sql = 'SELECT * FROM cursos';
	$query = $bd->select($sql);

	while($dado = $bd->row($query)){

		$cursos .= "<option value='".$dado['cod_cursos']."'>".$dado['nome_cursos']."</option>";
	}
	
	$sql = 'SELECT * FROM alunos WHERE cod_alunos = '.$cod;
	$query = $bd->select($sql);
	$dado = $bd->row($query);

	if($dado['situacao_alunos'] == 1){
		$situacao = '<option value="1" selected>Atual: Ativo</option>';
	}else{
		$situacao = '<option value="2" selected>Atual: Inativo</option>';
	}

	$sqlCurso = 'SELECT * FROM cursos WHERE cod_cursos = '.$dado['curso_alunos'];
	$queryCurso = $bd->select($sqlCurso);
	$dadoCurso = $bd->row($queryCurso);

	$cursoAtual = '<option value="'.$dado['curso_alunos'].'" selected>Atual: '.$dado['nome_cursos'].'</option>'
?>
<div class='form-modal'>
	
	<form action='' id='formulario'>
	
		<input id='cod' type='hidden' value='<?php echo $cod; ?>'>

		<p id="txt_img">Imagem Atual:</p>

		<img src='arquivos_up/alunos/<?php echo $dado['img_alunos']; ?>' id='imgAtual'>

		<img src='' id='imgResult'>

		<input class='form-control' name='img' id='img' type='file'>

		<input class='form-control' name='nome' id='nome' placeholder='Nome' type='text' value='<?php echo $dado['nome_alunos']; ?>'>

		<input class='form-control' name='cep' id='cep' placeholder='CEP' type='text' maxlength="10" onBlur="pesquisacep(this.value);" onkeydown="javascript: fMasc( this, mCEP );" value='<?php echo mask($dado['cep_alunos'], '##.###-###'); ?>'>

		<input class='form-control' name='estado' id='estado' placeholder='Estado' type='text' value='<?php echo $dado['estado_alunos']; ?>'>

		<div class='displayFlex'>
			<input class='form-control w48' name='bairro' id='bairro' placeholder='Bairro' type='text' value='<?php echo $dado['bairro_alunos']; ?>'>
			<input class='form-control w48' name='cidade' id='cidade' placeholder='Cidade' type='text' value='<?php echo $dado['cidade_alunos']; ?>'>
		</div>

		<input class='form-control' name='rua' id='rua' placeholder='Rua' type='text' value='<?php echo $dado['rua_alunos']; ?>'>

		<div class='displayFlex'>
			<input class='form-control w48' name='numero' id='numero' placeholder='Número' type='text' value='<?php echo $dado['numero_alunos']; ?>'>
			<input class='form-control w48' name='complemento' id='complemento' placeholder='Complemento' type='text' value='<?php echo $dado['complemento_alunos']; ?>'>
		</div>

		<select class='form-control' name='curso' id='curso'>
			<?php echo $cursoAtual; ?>
			<option value="">Curso</option>
			<?php echo $cursos; ?>
		</select>

		<input class='form-control' name='turma' id='turma' placeholder='Turma' type='text' value='<?php echo $dado['turma_alunos']; ?>'>

		<input class='form-control' name='data' id='data' placeholder='Data de matrícula' type='text' onkeypress="mascaraData(this)" maxlength="10" value='<?php echo formata_data_br($dado['data_alunos']); ?>'>

		<select class='form-control' name='situacao' id='situacao'>
			<?php echo $situacao; ?>
			<option value="">Situação</option>
			<option value="1">Ativo</option>
			<option value="2">Inativo</option>
		</select>

		<button type="button" onClick="edAlunos()" data-bs-dismiss="modal" aria-label="Close">Salvar</button>
	
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
                $("#imgAtual").hide();
                $("#imgResult").show();
            }
        }
    });
 
});

</script>




