<?php
  session_start();
  if(!isset($_SESSION['idTipoDePermissao'])){
    echo "<script>window.location.replace('../index.php');</script>";

  }else if ($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2 ){
    if(isset($_GET['id'])){
      include_once("dataAccess.php");
      $id = $_GET['id'];
      $da = new DataAccess();
      $res = $da->getMembro($id);
      $row = mysqli_fetch_assoc($res);
      $nomeImg = $row['logotipo'];
      if(unlink("../images/membros/".$nomeImg)){
        $res = $da->removerMembro($id);
        echo json_encode(['code'=>200]);
        exit;
      }else{
        echo json_encode(['code'=>404]);
        exit;
      }
    }else{
      echo json_encode(['code'=>404]);
      exit;
    }

  }else{
    echo "<script>window.location.replace('../index.php');</script>";
  }
?>
