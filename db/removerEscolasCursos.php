<?php
  session_start();
  if(!isset($_SESSION['idTipoDePermissao'])){
    echo "<script>window.location.replace('../index.php');</script>";

  }else if ($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2 ){
    if(isset($_GET['escola_id'])){
        include_once("ofertaFormativa.php");
        $escola_id = $_GET['escola_id'];
        $curso_id = $_GET['curso_id'];
        
        $da = new OfertaFormativa();
        $res = $da->deleteEscolaCurso($escola_id, $curso_id);
        echo json_encode(['code'=>200]);
        exit;
    }else{
        echo json_encode(['code'=>404]);
        exit;
    }

  }else{
    echo "<script>window.location.replace('../index.php');</script>";
  }
?>
