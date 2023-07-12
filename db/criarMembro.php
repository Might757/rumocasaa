<?php
session_start();
if(!isset($_SESSION['idTipoDePermissao'])){
  echo "<script>window.location.replace('../index.php');</script>";

}else if ($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2 ){
  $msg = "";
  if(!file_exists($_FILES['imgMembro']['tmp_name'])){
    $msg = "<li>Por favor insira uma imagem para o membro em questão.</li>";
    echo json_encode(['code'=>404, 'msg'=>$msg]);
    exit;

  }else if ($_FILES["imgMembro"]["size"] > 500000){
    $msg = "<li>Por favor insira uma imagem com menos de 500KB.</li>";
    echo json_encode(['code'=>404, 'msg'=>$msg]);
    exit;

  }else if (!is_uploaded_file($_FILES['imgMembro']['tmp_name'])){
    $msg = "<li>Ocorreu um erro ao fazer upload da imagem.</li>";
    echo json_encode(['code'=>404, 'msg'=>$msg]);
    exit;

  }else{
    $file = $_FILES['imgMembro'];
    $txtNome = $_POST['txtNome'];
    $txtLink = $_POST['txtLink'];
    if (!empty($txtLink)){
      $parsed = parse_url($txtLink);
      if (empty($parsed['scheme'])){
          $txtLink = 'http://' . ltrim($txtLink, '/');
      }
    }

    if (empty($txtNome)){
      //Campo em branco
      $msg .= "<li>Por favor preencha todos os campos corretamente!</li>";
      echo json_encode(['code'=>404, 'msg'=>$msg]);
      exit;

    }else{
      $allowed = array('jpg', 'jpeg', 'png');
      $fileName = $_FILES['imgMembro']['name'];
      $fileTmpName = $_FILES['imgMembro']['tmp_name'];
      $fileSize = $_FILES['imgMembro']['size'];
      $fileType = $_FILES['imgMembro']['type'];
      $fileExt = explode('.', $fileName);
      $fileActualExt = strtolower(end($fileExt));

      if (in_array($fileActualExt, $allowed)) {
        if ( $_FILES['imgMembro']['error'] > 0 ){
          $msg = '<li>' . $_FILES['imgMembro']['error'] . '</li>';
          echo json_encode(['code'=>404, 'msg'=>$msg]);
          exit;

        }else{
          $randomName = time()."-".rand(100000, 999999);
          $fileNewName = ($randomName.'.'.$fileActualExt);
          if(move_uploaded_file($fileTmpName, '../images/membros/' . $fileNewName)){
            include_once("dataAccess.php");
            $da = new dataAccess();
            $res = $da->inserirMembro($txtNome, $fileNewName, $txtLink);
            $msg = '<li>Membro inserido com sucesso!</li>';
            echo json_encode(['code'=>200, 'msg'=>$msg]);
            exit;

          }else{
            $msg .= "<li>Ocorreu um erro ao inserir a imagem selecionada.</li>";
            echo json_encode(['code'=>404, 'msg'=>$msg]);
            exit;
          }
        }

      }else{
        $msg .= "<li>O tipo de imagem que inseriu não é válido.</li>";
        echo json_encode(['code'=>404, 'msg'=>$msg]);
        exit;
      }
    }
  }

}else{
  echo "<script>window.location.replace('../index.php');</script>";
}
?>
