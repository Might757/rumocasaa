<?php
session_start();
if(!isset($_SESSION['idTipoDePermissao'])){
  echo "<script>window.location.replace('../index.php');</script>";
}else if($_SESSION['idTipoDePermissao'] != 1){
  echo "<script>window.location.replace('../index.php');</script>";
}else{
  if(isset($_GET['id'])) {
    include_once("dataAccess.php");
    $id = $_GET['id'];
    $da = new DataAccess();
    $res = $da->desativarUtilizador($id);
    echo json_encode(['code'=>200]);
  }else{
    echo json_encode(['code'=>404]);
  }

}
?>
