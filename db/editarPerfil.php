<?php
  session_start();
  if(!isset($_SESSION['idTipoDePermissao'])){
    echo "<script>window.location.replace('../index.php');</script>";

  }else if(isset($_POST['txtEmail'])){
    $id = $_SESSION['id'];
    $nome = $_POST['txtNome'];
    $email = $_POST['txtEmail'];
    $password = $_POST['txtPasswordAtual'];
    $novaPassword = $_POST['txtNovaPassword'];
    $novaPassword2 = $_POST['txtNovaPassword2'];
    $mudarPassword = false;
    $editarNome = true;
    $editarEmail = true;
    $msg = "";

    if(empty($nome) || empty($email) || empty($password)){
      if (empty($password)){
        $msg .= "<li>Qualquer tipo de edição no seu perfil necessita da confirmação da sua password atual.</li>";
        echo json_encode(['code'=>404, 'msg'=>$msg]);
        exit;
      }else{
        $msg .= "<li>Por favor preencha todos os campos.</li>";
        echo json_encode(['code'=>404, 'msg'=>$msg]);
        exit;
      }

    }else if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
      $msg .= "<li>Introduza um email válido!</li>";
      echo json_encode(['code'=>404, 'msg'=>$msg]);
      exit;

    }else{
      if (empty($novaPassword) && empty($novaPassword2)){
        $mudarPassword = false;
      }else{
        $novaPassword = md5($novaPassword);
        $novaPassword2 = md5($novaPassword2);
        $mudarPassword = true;
      }
      $password = md5($password);

      //Se o utilizador quer trocar a password
      if ($mudarPassword == true){
        include_once("dataAccess.php");
        $da = new DataAccess();
        $res = $da->getUtilizador($_SESSION['id']);
        while($row=mysqli_fetch_assoc($res)){
          $nomeAtual = $row['nome'];
          $emailAtual = $row['email'];
          $permissaoAtual = $row['idTiposDePermissoes'];
          $frontOfficeAtual = $row['idFrontOffice'];
          $passwordAtual = $row['password'];
        }
        //Verifica se as novas passwords inseridas são diferentes
        if ($novaPassword != $novaPassword2){
          $msg .= "<li>As novas passwords não coincidem.</li>";
          echo json_encode(['code'=>404, 'msg'=>$msg]);
          exit;
        }

        //Verifica se a nova password é igual à atual
        if ($novaPassword == $passwordAtual){
          $msg .= "<li>A nova password não pode ser igual à password atual.</li>";
          echo json_encode(['code'=>404, 'msg'=>$msg]);
          exit;

        }

        if($email != $emailAtual){
          $existe = $da->verificarUtilizadorRegistado($email);
          if (mysqli_num_rows($existe) == 0){
            $editarEmail = true;

          }else{
            $editarEmail = false;
            $msg .= "<li>O email que inseriu já está associado a outro utilizador!</li>";
            echo json_encode(['code'=>404, 'msg'=>$msg]);
            exit;
          }

        }else{
          $editarEmail = false;
        }

        if ($nome != $nomeAtual){
          $editarNome = true;

        }else{
          $editarNome = false;
        }

        if($editarNome == false && $editarEmail == false){
          $msg .= "<li>Não modificou nenhum campo.</li>";
          echo json_encode(['code'=>404, 'msg'=>$msg]);
          exit;

        }

        $res = $da->editarPerfil($id, $nome, $email, $novaPassword, $mudarPassword, $editarNome, $editarEmail);
        $msgedit = "<li>Perfil editado com sucesso!</li>";
        echo json_encode(['code'=>200, 'msg'=>$msgedit, 'editarEmail'=>$editarEmail, 'editarNome'=>$editarNome, 'mudarPassword'=>$mudarPassword]);
        exit;

      //Se o utilizador não quer trocar a password
      }else{
        include_once("dataAccess.php");
        $da = new DataAccess();
        $res = $da->getUtilizador($_SESSION['id']);
        while($row=mysqli_fetch_assoc($res)){
          $nomeAtual = $row['nome'];
          $emailAtual = $row['email'];
          $permissaoAtual = $row['idTiposDePermissoes'];
          $frontOfficeAtual = $row['idFrontOffice'];
          $passwordAtual = $row['password'];
        }
        //Verifica se a password atual inserida corresponde com a que está guardada na BD
        if ($password != $passwordAtual){
          $msg .= "<li>A password atual que inseriu está incorreta.</li>";
          echo json_encode(['code'=>404, 'msg'=>$msg]);
          exit;

        }else{
          if($email != $emailAtual){
            $existe = $da->verificarUtilizadorRegistado($email);
            if (mysqli_num_rows($existe) == 0){
              $editarEmail = true;

            }else{
              $editarEmail = false;
              $msg .= "<li>O email que inseriu já está associado a outro utilizador!</li>";
              echo json_encode(['code'=>404, 'msg'=>$msg]);
              exit;
            }
          }else{
            $editarEmail = false;
          }

          if ($nome != $nomeAtual){
            $editarNome = true;

          }else{
            $editarNome = false;
          }

          if($editarNome == false && $editarEmail == false){
            $msg .= "<li>Não modificou nenhum campo.</li>";
            echo json_encode(['code'=>404, 'msg'=>$msg]);
            exit;

          }

          $res = $da->editarPerfil($id, $nome, $email, $novaPassword, $mudarPassword, $editarNome, $editarEmail);
          $msgedit = "<li>Perfil editado com sucesso!</li>";
          echo json_encode(['code'=>200, 'msg'=>$msgedit, 'editarEmail'=>$editarEmail, 'editarNome'=>$editarNome, 'mudarPassword'=>$mudarPassword]);
          exit;
        }

      }
    }

  }else{
    echo "<script>window.location.replace('../index.php');</script>";
  }
?>
