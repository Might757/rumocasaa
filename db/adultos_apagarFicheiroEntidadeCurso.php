<?php
    
 session_start();
 if(!isset($_SESSION['idTipoDePermissao'])){
   echo "<script>window.location.replace('../index.php');</script>";
 }else if($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2){
    $idEntidade = $_GET['idEntidade'];
    $idCurso = $_GET['idCurso'];
    include_once("ofertaFormativa.php");
    $da = new OfertaFormativa();
    $filename= $da->apagarFicheiroEntidadeCurso($idEntidade, $idCurso);
    if ($filename != -1){
        //apagar ficheiro
        if ( unlink("../formacoesAdultosPDFs/".$filename) ) 
            echo "1";
        else
            echo "-1";
    }else 
        echo "-1";
 }
 
 ?>