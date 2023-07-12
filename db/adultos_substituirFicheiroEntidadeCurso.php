<?php 

session_start();

if(!isset($_SESSION['idTipoDePermissao'])){
  echo "<script>window.location.replace('../index.php');</script>";
}else if($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2){
    
    $idEntidade = $_POST['File_IdEntidade'];
    $idCurso = $_POST['File_IdCurso'];

    $allowed = array('pdf');
    $fileName = $_FILES['pdfEditEscola']['name'];
    $fileTmpName = $_FILES['pdfEditEscola']['tmp_name'];
    $fileSize = $_FILES['pdfEditEscola']['size'];
    $fileType = $_FILES['pdfEditEscola']['type'];
    $fileExt = explode('.', $fileName);
    $fileActualExt = strtolower(end($fileExt));
    if($fileSize != 0){
        if (in_array($fileActualExt, $allowed)) {
            if ( $_FILES['pdfEditEscola']['error'] > 0 ){
            echo $_FILES['pdfEditEscola']['error'];
            // echo json_encode(['code'=>404, 'msg'=>$msg]);
            // exit;
            } else {
            $randomName = time()."-".rand(100000, 999999);
            $fileNewName = ($randomName.'.'.$fileActualExt);
            if(move_uploaded_file($fileTmpName, '../formacoesAdultosPDFs/' . $fileNewName)){          
                include_once("ofertaFormativa.php");
                $da = new OfertaFormativa();
                $res = $da->substituirFicheiroEntidadeCurso($idEntidade, $idCurso, $fileNewName);
                if ($res == 1){
                    echo $res;
                }else{
                    echo "Erro: tente novamente ou contacte o administrador da plataforma";
                }
            } else {
                echo "Ocorreu um erro ao inserir o pdf selecionado";
                //echo json_encode(['code'=>404, 'msg'=>$msg]);
                //exit;
            }
            }

        } else {
            echo "Erro: O tipo de ficheiro que inseriu não é válido";
        // echo json_encode(['code'=>404, 'msg'=>$msg]);
        // exit;
        }
    }else{
        echo "Erro: Ficheiro em falta";
    }   

}

?>