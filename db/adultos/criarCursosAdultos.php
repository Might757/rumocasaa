<?php
session_start();
if(!isset($_SESSION['idTipoDePermissao'])){
  echo "<script>window.location.replace('../index.php');</script>";

}else if ($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2 ){
  $msg = "";

    $nomeCurso = $_POST['txtNomeCurso'];
    $objetivos = $_POST['txtObjetivos'];
    $saidasProfissionais = $_POST['txtSaidasProfissionais'];
    $descricao = $_POST['txtDescricao'];
    $idTipoCurso = $_POST['txtTipoCurso'];
    $objetivosNum = $_GET['objetivosNum'];
    $saidasNum = $_GET['saidasNum'];

    if (empty($nomeCurso) || empty($objetivos) || empty($saidasProfissionais) || empty($descricao) || empty($idTipoCurso)){
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

    $saidasText = "• ".$saidasProfissionais;
    if($saidasNum != -1){
      for($i = 0; $i < $saidasNum; $i++){
        $saidasInput = "saidas_".$i;
        $saidasText .= "<br>• ".$_POST[$saidasInput];
      }
    }
    
    include_once("ofertaFormativa.php");
    $da = new OfertaFormativa();
    $res = $da->insertCurso($nomeCurso, $objetivosText, $saidasText, $descricao, $idTipoCurso);
    $msg = '<li>Curso inserido com sucesso!</li>';
    echo json_encode(['code'=>200, 'msg'=>$msg]);
    exit;   

}else{
  echo "<script>window.location.replace('../index.php');</script>";
}

?>
