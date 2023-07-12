<?php
session_start();
if(!isset($_SESSION['idTipoDePermissao'])){
  echo "<script>window.location.replace('../index.php');</script>";

}else if ($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2 ){
    $msg = "";

    $idEntidade = $_POST['txtNomeEscola'];
    $idCurso = $_POST['txtNomeCurso'];
    $txtInfo = $_POST['txtInfo'];
    $linkInscricao = $_POST['linkInscricao'];

    echo $idEntidade." ".$idCurso." ".$txtInfo." ".$linkInscricao;
    echo "<br/>empty idEntidade: ". empty($idEntidade);
    echo "<br/>empty idCurso: ". empty($idCurso);
    
    if (empty($idEntidade) || empty($idCurso)){
      //Campos em branco
        echo "empty";
        $msg .= "<li>Por favor preencha todos os campos corretamente!</li>";
        //echo json_encode(['code'=>404, 'msg'=>$msg]);
        //exit;
    }

    $allowed = array('pdf');
    $fileName = $_FILES['pdfEscola']['name'];
    $fileTmpName = $_FILES['pdfEscola']['tmp_name'];
    $fileSize = $_FILES['pdfEscola']['size'];
    $fileType = $_FILES['pdfEscola']['type'];
    $fileExt = explode('.', $fileName);
    $fileActualExt = strtolower(end($fileExt));

    if($fileSize != 0){
      if (in_array($fileActualExt, $allowed)) {
        if ( $_FILES['pdfEscola']['error'] > 0 ){
          $msg = '<li>' . $_FILES['pdfEscola']['error'] . '</li>';
         // echo json_encode(['code'=>404, 'msg'=>$msg]);
         // exit;
        } else {
          $randomName = time()."-".rand(100000, 999999);
          $fileNewName = ($randomName.'.'.$fileActualExt);
          if(move_uploaded_file($fileTmpName, '../formacoesAdultosPDFs/' . $fileNewName)){          

          } else {
            $msg .= "<li>Ocorreu um erro ao inserir o pdf selecionado.</li>";
            //echo json_encode(['code'=>404, 'msg'=>$msg]);
            //exit;
          }
        }

      } else {
        $msg .= "<li>O tipo de ficheiro que inseriu não é válido.</li>";
       // echo json_encode(['code'=>404, 'msg'=>$msg]);
       // exit;
      }
    }else{
      $fileNewName = "";
    }

    include_once("ofertaFormativa.php");
    $da = new OfertaFormativa();
    $res = $da->insertEntidadeCurso($idEntidade, $idCurso, $txtInfo, $linkInscricao, $fileNewName);
    
    if($res == 1){
        $msg = '<li>Ligação criada com sucesso!</li>';
        //echo json_encode(['code'=>200, 'msg'=>$msg]);
       // exit;   
    }else if($res == -1){
        $msg = '<li>Ligação já existe!</li>';
       // echo json_encode(['code'=>404, 'msg'=>$msg]);
        //exit;
    }else{
        $msg = '<li>Ocorreu um erro!</li>';
       // echo json_encode(['code'=>404, 'msg'=>$msg]);
        
        //exit;
    }
    echo "<script>window.location.replace('../gerirEntidadesCursosAdultos.php?msg=$msg');</script>";

}else{
  echo "<script>window.location.replace('../index.php');</script>";
}

?>
