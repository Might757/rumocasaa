<?php
 session_start();
 if(!isset($_SESSION['idTipoDePermissao'])){
   echo "<script>window.location.replace('../index.php');</script>";
 }else if($_SESSION['idTipoDePermissao'] != 1){
   echo "<script>window.location.replace('../index.php');</script>";
 }else{
    if(isset($_SESSION['idTipoDePermissao'])){
      if($_SESSION['idTipoDePermissao'] == 1){
         $nome = $_POST['txtNomeAdd'];
         $email = $_POST['txtEmailAdd'];
         $password = $_POST['txtPasswordAdd'];
         $password2 = $_POST['txtPassword2Add'];
         $frontOffice = $_POST['frontOfficeAdd'];
         $permissao = $_POST['permissaoAdd'];
         $errorPwd = false;
         $errorEmpty = false;
         $errorEmail = false;
         $msg = "";
         if (empty($nome) || empty($email) || empty($password) || empty($password2) || empty($frontOffice) || empty($permissao)){
           //Campos em branco
           $errorEmpty = true;
           $msg .= "<li>Por favor preencha todos os campos!</li>";
         }
         if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
           $errorEmail = true;
            $msg .= "<li>Introduza um email válido!</li>";
         }
         $password = md5($password);
         $password2 = md5($password2);
         if($password != $password2){
           //Passwords não estão iguais
           $errorPwd = true;
           $msg .= "<li>Passwords não coincidem!</li>";
         }
         if ($errorPwd == false && $errorEmpty == false && $errorEmail == false){
           include_once("dataAccess.php");
           $da = new dataAccess();
           $res = $da->verificarUtilizadorRegistado($email);
           if (mysqli_num_rows($res) == 0){
             $da->inserirUtilizador($nome, $email, $password, $permissao, $frontOffice);
             $msg = "<li>Utilizador criado com sucesso!<li>";
             echo json_encode(['code'=>200, 'msg'=>$msg]);
             exit;
           }else{
             $msg = "<li>O email que inseriu já está associado a outro utilizador!<li>";
             echo json_encode(['code'=>404, 'msg'=>$msg]);
             exit;
           }
         }else{
           echo json_encode(['code'=>404, 'msg'=>$msg]);
           exit;
         }
       }
     }
   }
?>
