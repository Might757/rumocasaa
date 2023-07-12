<?php

  function searchCharsInString($str){
    return strpos($str, "'") == true ||  strpos($str, '"') == true || strpos($str, '=') == true ;
  }
  
    if(isset($_POST['txtEmail'])){
        $email = $_POST['txtEmail'];        
        $password = md5($_POST['txtPassword']);

        $errorAccount = false;
        $msg = "";

        if (empty($email) || empty($password)){
          //Campos em branco
          $msg .= "Por favor preencha ambos os campos.";
          echo json_encode(['code'=>404, 'msg'=>$msg, 'errorAccount'=>$errorAccount]);
          exit;
        } else if ( searchCharsInString($email) || searchCharsInString($password) ){
          $msg .= "Credenciais inválidas! Por favor tente novamente.";
          echo json_encode(['code'=>404, 'msg'=>$msg, 'errorAccount'=>$errorAccount]);
          exit;
        } else {
          include('dataAccess.php');
          $da = new dataAccess();
          $res = $da->login($email, $password);
          if (mysqli_num_rows($res) == 0){
            //Credenciais inválidas
            $msg .= "Credenciais inválidas! Por favor tente novamente.";
            $errorAccount = true;
            echo json_encode(['code'=>404, 'msg'=>$msg, 'errorAccount'=>$errorAccount]);
            exit;
          }else{
            session_start();
            while ($row = mysqli_fetch_assoc($res)) {
              $_SESSION['id'] = $row['id'];
              $_SESSION['nome'] = $row['nome'];
              $_SESSION['email'] = $email;
              $_SESSION['idTipoDePermissao'] = $row['idTiposDePermissoes'];
              $_SESSION['idFrontOffice'] = $row['idFrontOffice'];
            }
            //Login efetuado com sucesso
            $msg .= "Login efetuado com sucesso.";
            echo json_encode(['code'=>200, 'msg'=>$msg, 'errorAccount'=>$errorAccount]);
            exit;
        }
      }
    }else{
      echo "<script>window.location.replace('../index.php');</script>";
    }
?>
