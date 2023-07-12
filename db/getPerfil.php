<?php
 session_start();
 if(!isset($_SESSION['idTipoDePermissao'])){
   echo "<script>window.location.replace('../index.php');</script>";
 }else{
   $msg = "";
   $id = $_SESSION['id'];
   include_once("dataAccess.php");
   $da = new dataAccess();
   $res = $da->getUtilizador($id);
   if (mysqli_num_rows($res) != 0){
     $row = mysqli_fetch_assoc($res);
     $nome = $row['nome'];
     $email = $row['email'];
     $idPermissao = $_SESSION['idTipoDePermissao'];
     $idFrontOffice = $_SESSION['idFrontOffice'];
     $permissao = $da->getNomePermissao($idPermissao);
     $projeto = $da->getNomeFrontOffice($idFrontOffice);
     echo json_encode(['code'=>200, 'nome'=>$nome, 'email'=>$email, 'permissao'=>$permissao, 'projeto'=>$projeto]);
     exit;
   }else{
     $msg = "Não foi possível encontrar informações do perfil em questão.";
     echo json_encode(['code'=>404, 'msg'=>$msg]);
     exit;
   }
 }
?>
