<?php
session_start();

if(!isset($_SESSION['idTipoDePermissao'])){
  echo "<script>window.location.replace('../index.php');</script>";
}else if($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2){
    $idCurso = $_POST['guardarEditIdCurso'];
    $idEntidade = $_POST['guardarEditIdEntidade'];
    $info = $_POST['txtEditInfo'];
    $link = $_POST['linkEditInscricao'];
    include_once("ofertaFormativa.php");
    $da = new OfertaFormativa();
    echo $da->editarAdultosEntidadesCursos($idEntidade, $idCurso, $info, $link);
}

?>