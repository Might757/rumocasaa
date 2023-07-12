<?php
session_start();
if(!isset($_SESSION['idTipoDePermissao'])){
  echo "<script>window.location.replace('../index.php');</script>";
} else if($_SESSION['idTipoDePermissao'] != 1){
  echo "<script>window.location.replace('../index.php');</script>";
} else {
  if(isset($_GET['id'])) {
    $id = $_GET['id'];
    include_once("dataAccess.php");
    $da = new DataAccess();
    $res = $da->getUtilizador($id);
    while($row=mysqli_fetch_assoc($res)){
      $nome = $row['nome'];
      $email = $row['email'];
      $idPermissao = $row['idTiposDePermissoes'];
      $idFrontOffice = $row['idFrontOffice'];
      echo json_encode(['code'=>200, 'id'=>$id, 'nome'=>$nome, 'email'=>$email, 'idPermissao'=>$idPermissao, 'idFrontOffice'=>$idFrontOffice]);
      exit;
    }
  } else if(isset($_POST['id'])) {
      $id = $_POST['id'];
      $nome = $_POST['txtNome'];
      $email = $_POST['txtEmail'];
      $password = $_POST['txtPassword'];
      $password2 = $_POST['txtPassword2'];
      $frontOffice = $_POST['frontOffice'];
      $permissao = $_POST['permissao'];
      $passwordEmpty = true;
      $passwordErrada = false;
      $msgedit = "";

      if(empty($nome) || empty($email) || empty($frontOffice) || empty($permissao)){
        $msgedit .= "<li>Preencha todos os campos.</li>";
        echo json_encode(['code'=>404, 'msg'=>$msgedit]);
        exit;
      } else {
        if (empty($password) && empty($password2)){
        } else {
            $passwordEmpty = false;
            $password = md5($password);
            $password2 = md5($password2);

            if ($password != $password2){
              $passwordErrada = true;
              $msgedit = "<li>As passwords não coincidem.</li>";
              echo json_encode(['code'=>404, 'msg'=>$msgedit]);
              exit;
            }
        }
        if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
          $msgedit = "<li>Introduza um email válido!</li>";
          echo json_encode(['code'=>404, 'msg'=>$msgedit]);
          exit;
        }

        include_once("dataAccess.php");
        $da = new DataAccess();
        $res = $da->getUtilizador($id);
        while($row=mysqli_fetch_assoc($res)){
          $nomeAtual = $row['nome'];
          $emailAtual = $row['email'];
          $permissaoAtual = $row['idTiposDePermissoes'];
          $frontOfficeAtual = $row['idFrontOffice'];
          $passwordAtual = $row['password'];
        }

        if ($passwordEmpty == false){
          if($nome == $nomeAtual && $email == $emailAtual && $frontOffice == $frontOfficeAtual && $permissao == $permissaoAtual && $password == $passwordAtual){
            $msgedit .= "<li>Não modificou nenhum campo.</li>";
            echo json_encode(['code'=>404, 'msg'=>$msgedit]);
            exit;
          } else {
            $existe = $da->verificarUtilizadorRegistado($email);
            if (mysqli_num_rows($existe) == 0){
              $da->editarUtilizador($id, $nome, $email, $password, $frontOffice, $permissao, $passwordEmpty);
              $msgedit = "<li>Utilizador editado com sucesso!</li>";
              echo json_encode(['code'=>200, 'msg'=>$msgedit]);
              exit;
            }else{
              if ($email == $emailAtual){
                $da->editarUtilizador($id, $nome, $email, $password, $frontOffice, $permissao, $passwordEmpty);
                $msgedit = "<li>Utilizador editado com sucesso!</li>";
                echo json_encode(['code'=>200, 'msg'=>$msgedit]);
                exit;
              }else{
                $msg = "<li>O email que inseriu já está associado a outro utilizador!<li>";
                echo json_encode(['code'=>404, 'msg'=>$msg]);
                exit;
              }
            }
          }
        } else if ($passwordEmpty == true){
          if($nome == $nomeAtual && $email == $emailAtual && $frontOffice == $frontOfficeAtual && $permissao == $permissaoAtual){
            $msgedit .= "<li>Não modificou nenhum campo.</li>";
            echo json_encode(['code'=>404, 'msg'=>$msgedit]);
            exit;
          } else {
            $existe = $da->verificarUtilizadorRegistado($email);
            if (mysqli_num_rows($existe) == 0){
              $da->editarUtilizador($id, $nome, $email, $password, $frontOffice, $permissao, $passwordEmpty);
              $msgedit = "<li>Utilizador editado com sucesso!</li>";
              echo json_encode(['code'=>200, 'msg'=>$msgedit]);
              exit;
            }else{
              if ($email == $emailAtual){
                $da->editarUtilizador($id, $nome, $email, $password, $frontOffice, $permissao, $passwordEmpty);
                $msgedit = "<li>Utilizador editado com sucesso!</li>";
                echo json_encode(['code'=>200, 'msg'=>$msgedit]);
                exit;
              }else{
                $msg = "<li>O email que inseriu já está associado a outro utilizador!<li>";
                echo json_encode(['code'=>404, 'msg'=>$msg]);
                exit;
              }
            }
          }
        } else {
          if($nome == $nomeAtual && $email == $emailAtual && $frontOffice == $frontOfficeAtual && $permissao == $permissaoAtual){
            $msgedit .= "<li>Não modificou nenhum campo.</li>";
            echo json_encode(['code'=>404, 'msg'=>$msgedit]);
            exit;
          } else {
            $existe = $da->verificarUtilizadorRegistado($email);
            if (mysqli_num_rows($existe) == 0){
              $da->editarUtilizador($id, $nome, $email, $password, $frontOffice, $permissao, $passwordEmpty);
              $msgedit = "<li>Utilizador editado com sucesso!</li>";
              echo json_encode(['code'=>200, 'msg'=>$msgedit]);
              exit;
            }else{
              if ($email == $emailAtual){
                $da->editarUtilizador($id, $nome, $email, $password, $frontOffice, $permissao, $passwordEmpty);
                $msgedit = "<li>Utilizador editado com sucesso!</li>";
                echo json_encode(['code'=>200, 'msg'=>$msgedit]);
                exit;
              }else{
                $msg = "<li>O email que inseriu já está associado a outro utilizador!<li>";
                echo json_encode(['code'=>404, 'msg'=>$msg]);
                exit;
              }
            }
          }
        }
      }
    }
  }
?>
