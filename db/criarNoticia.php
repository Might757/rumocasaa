<?php
session_start();
if(!isset($_SESSION['idTipoDePermissao'])){
  echo "<script>window.location.replace('../index.php');</script>";

}else if ($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2 ){
  $msg = "";
  $video = true;

  if(!file_exists($_FILES['imgNoticia']['tmp_name'])){
    $msg = "<li>Por favor insira uma imagem para a notícia em questão.</li>";
    echo json_encode(['code'=>404, 'msg'=>$msg]);
    exit;

  }else if ($_FILES["imgNoticia"]["size"] > 500000){
    $msg = "<li>Por favor insira uma imagem com menos de 500KB.</li>";
    echo json_encode(['code'=>404, 'msg'=>$msg]);
    exit;

  }else if (!is_uploaded_file($_FILES['imgNoticia']['tmp_name'])){
    $msg = "<li>Ocorreu um erro ao fazer upload da imagem.</li>";
    echo json_encode(['code'=>404, 'msg'=>$msg]);
    exit;

  }else{
    $file = $_FILES['imgNoticia'];
    $txtTitulo = $_POST['txtTitulo'];
    $txtNoticia = $_POST['txtNoticia'];
    if (empty($txtTitulo) || empty($txtNoticia)){
      //Campos em branco
      $msg .= "<li>Por favor preencha todos os campos corretamente!</li>";
      echo json_encode(['code'=>404, 'msg'=>$msg]);
      exit;

    } else {
      if ( strlen($txtNoticia) > 200)
      {
          $txtApresenta =  substr($txtNoticia, 0, 200) . '...';

      } else {
          $txtApresenta = $txtNoticia;
      }

      $txtLinkVideo = $_POST['txtLinkVideo'];
      $data = date("Y-m-d");
      include_once("dataAccess.php");
      $da = new dataAccess();
      $res = $da->getNomeFrontOffice($_SESSION['idFrontOffice']);
      $autor = $_SESSION['nome'] . " - " . $res;
      if ($txtLinkVideo != "") {
        if(strpos($txtLinkVideo, 'youtube.com/') !== false) {
          $videoId = explode("v=",$txtLinkVideo)[1];
          if(strpos($videoId, '&') !== false) {
            $videoId = explode("&",$videoId)[0];
          }
          $embedVideo='https://www.youtube.com/embed/'.$videoId;

        } else if(strpos($txtLinkVideo, 'youtu.be/') !== false) {
            $videoId = explode("youtu.be/",$txtLinkVideo)[1];
            if(strpos($videoId, '&') !== false){
                $videoId = explode("&",$videoId)[0];
            }
            $embedVideo='https://www.youtube.com/embed/'.$videoId;

        } else if (strpos($txtLinkVideo, 'youtube.com/embed/') !== false) {
          $videoId = explode("embed/",$txtLinkVideo)[1];
          if(strpos($videoId, '&') !== false) {
            $videoId = explode("&",$videoId)[0];
          }
          $embedVideo='https://www.youtube.com/embed/'.$videoId;

        } else {
          $msg .= "<li>Link inválido, por favor verifique o link do vídeo que inseriu.</li>";
          echo json_encode(['code'=>404, 'msg'=>$msg]);
          exit;
        }
      } else {
        $video = false;
        $embedVideo = "";
      }
    }

    $allowed = array('jpg', 'jpeg', 'png');
    $fileName = $_FILES['imgNoticia']['name'];
    $fileTmpName = $_FILES['imgNoticia']['tmp_name'];
    $fileSize = $_FILES['imgNoticia']['size'];
    $fileType = $_FILES['imgNoticia']['type'];
    $fileExt = explode('.', $fileName);
    $fileActualExt = strtolower(end($fileExt));

    if (in_array($fileActualExt, $allowed)) {
      if ( $_FILES['imgNoticia']['error'] > 0 ){
        $msg = '<li>' . $_FILES['imgNoticia']['error'] . '</li>';
        echo json_encode(['code'=>404, 'msg'=>$msg]);
        exit;

      } else {
        $randomName = time()."-".rand(100000, 999999);
        $fileNewName = ($randomName.'.'.$fileActualExt);
        if(move_uploaded_file($fileTmpName, '../images/noticias/' . $fileNewName)){
          include_once("dataAccess.php");
          $da = new dataAccess();
          $res = $da->inserirNoticia($txtTitulo, $txtNoticia, $txtApresenta, $data, $autor, $fileNewName, $embedVideo, $video);
          $msg = '<li>Notícia inserida com sucesso!</li>';
          echo json_encode(['code'=>200, 'msg'=>$msg]);
          exit;

        } else {
          $msg .= "<li>Ocorreu um erro ao inserir a imagem selecionada.</li>";
          echo json_encode(['code'=>404, 'msg'=>$msg]);
          exit;
        }
      }

    } else {
      $msg .= "<li>O tipo de imagem que inseriu não é válido.</li>";
      echo json_encode(['code'=>404, 'msg'=>$msg]);
      exit;
    }
  }

}else{
  echo "<script>window.location.replace('../index.php');</script>";
}

?>
