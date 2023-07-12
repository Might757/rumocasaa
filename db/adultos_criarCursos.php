<?php
session_start();
if(!isset($_SESSION['idTipoDePermissao'])){
  echo "<script>window.location.replace('../index.php');</script>";

}else if ($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2 ){
  $msg = "";
  
    //insertCursoAdulto($nomeCurso, $objetivos, $descricao, $modalidade, $nivel, $tipoCertificacao, $entidade)
    $nomeCurso = $_POST['txtNomeCurso'];
    $objetivos = $_POST['txtObjetivos'];
    $descricao = $_POST['txtDescricao'];
    $modalidade = $_POST['modalidade'];
    $nivel = $_POST['nivel'];
    $tipoCertificacao = $_POST['tipoCertificacao'];
    //$entidade = $_POST['entidade'];    

    if (empty($nomeCurso) || empty($objetivos) || empty($modalidade) || empty($descricao) || empty($nivel) || empty($tipoCertificacao)){
    //Campos em branco
        $msg .= "<li>Por favor preencha todos os campos corretamente!</li>";
        echo json_encode(['code'=>404, 'msg'=>$msg]);
        exit;
    }  

    $objetivosText = "• ".$objetivos;
    if($objetivosNum != -1){
      for($i = 0; $i < $objetivosNum; $i++){
        $objetivosInput = "objetivo_".$i;
        $objetivosText .= "<br>• ".$_POST[$objetivosInput];
      }
    }

    include_once("ofertaFormativa.php");
    $da = new OfertaFormativa();
    $res = $da->insertCursoAdulto($nomeCurso, $objetivos, $descricao, $modalidade, $nivel, $tipoCertificacao);
    $msg = '<li>Curso inserido com sucesso!</li>';
    echo json_encode(['code'=>200, 'msg'=>$msg]);
    exit;   

}else{
  echo "<script>window.location.replace('../index.php');</script>";
}

?>
