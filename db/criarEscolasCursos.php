<?php
session_start();
if(!isset($_SESSION['idTipoDePermissao'])){
  echo "<script>window.location.replace('../index.php');</script>";

}else if ($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2 ){
  $msg = "";

    $idEscola = $_POST['txtNomeEscola'];
    $idCurso = $_POST['txtNomeCurso'];
    $linkInscricao = $_POST['linkInscrição'];

    if (empty($idEscola) || empty($idCurso)){
    //Campos em branco
        $msg .= "Por favor preencha todos os campos corretamente!";
        echo "<script>window.location='../gerirEscolasCursos.php?msg=$msg'</script>";
        //echo json_encode(['code'=>404, 'msg'=>$msg]);
        exit;
    }

    $txtLinkVideo = $_POST['youtubeVideo'];

    if (!empty($txtLinkVideo)) {
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
        $msg .= "Link de youtube inválido";
        //echo json_encode(['code'=>404, 'msg'=>$msg]);
        
        echo "<script>window.location='../gerirEscolasCursos.php?msg=$msg'</script>";
        exit;
      }
    } else {
      $embedVideo = "";
    }

    $allowed = array('pdf');
    $fileName = $_FILES['pdfEscola']['name'];
    $fileTmpName = $_FILES['pdfEscola']['tmp_name'];
    $fileSize = $_FILES['pdfEscola']['size'];
    $fileType = $_FILES['pdfEscola']['type'];
    $fileExt = explode('.', $fileName);
    $fileActualExt = strtolower(end($fileExt));

    include_once("ofertaFormativa.php");
    $da = new OfertaFormativa();
    $res = $da->checkEscolasCursos($idEscola, $idCurso);
    
    if($res == 1){
        
      if($fileSize != 0){
        if (in_array($fileActualExt, $allowed)) {
          if ( $_FILES['pdfEscola']['error'] > 0 ){
            $msg = '<li>' . $_FILES['pdfEscola']['error'] . '</li>';
            echo json_encode(['code'=>404, 'msg'=>$msg]);
            exit;
  
          } else {
            $randomName = time()."-".rand(100000, 999999);
            $fileNewName = ($randomName.'.'.$fileActualExt);
            if(move_uploaded_file($fileTmpName, '../cursos pdfs/' . $fileNewName)){          
  
            } else {
              $msg .= "<li>Ocorreu um erro ao inserir o pdf selecionado.</li>";
              echo json_encode(['code'=>404, 'msg'=>$msg]);
              exit;
            }
          }
  
        } else {
          $msg .= "<li>O tipo de ficheiro que inseriu não é válido.</li>";
          echo json_encode(['code'=>404, 'msg'=>$msg]);
          exit;
        }
      }else{
        $fileNewName = "";
      }
      
        include_once("ofertaFormativa.php");
        $da = new OfertaFormativa();
        $res = $da->insertEscolaCurso($idEscola, $idCurso, $fileNewName, $embedVideo, $linkInscricao);

        

        $msg = 'Ligação criada com sucesso!';
        //echo json_encode(['code'=>200, 'msg'=>$msg]);
        exit;   
    }else if($res == 0){
        $msg = 'Ligação já existe!';
        //echo json_encode(['code'=>404, 'msg'=>$msg]);
        exit;
    }else{
        $msg = 'Ocorreu um erro!';
        //echo json_encode(['code'=>404, 'msg'=>$msg]);
        exit;
    }

    echo "<script>window.location='../gerirEscolasCursos.php?msg=$msg'</script>";

}else{
  echo "<script>window.location.replace('../index.php');</script>";
}

?>
