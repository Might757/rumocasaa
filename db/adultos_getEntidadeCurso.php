<?php
 session_start();
 if(!isset($_SESSION['idTipoDePermissao'])){
   echo "<script>window.location.replace('../index.php');</script>";
 }else if($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2){
   $idEntidade = $_POST['idEntidade'];
   $idCurso = $_POST['idCurso'];

   include_once("ofertaFormativa.php");
   $da = new OfertaFormativa();
   echo $da->getAdultosEntidadesCursos($idEntidade, $idCurso);
 }
?>