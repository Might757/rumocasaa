<?php
session_start();
if(!isset($_SESSION['idTipoDePermissao'])){
  echo "<script>window.location.replace('../index.php');</script>";

}else if ($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2 ){
    $msg = "";

    $nome = $_POST['txtNomeEntidade'];
    $morada = $_POST['txtMorada'];
    $telefone = $_POST['txtTelefone'];
    $email = $_POST['txtEmail'];
    $link = $_POST['txtLink'];
    $latitude = $_POST['txtLatitude'];
    $longitude = $_POST['txtLongitude'];

    if (empty($nome) || empty($morada) || empty($telefone) || empty($email) || empty($link) ){
        //Campos em branco
        $msg .= "<li>Por favor preencha todos os campos corretamente!</li>";
        echo json_encode(['code'=>404, 'msg'=>$msg]);
        exit;
    }  
    
    include_once("ofertaFormativa.php");
    $da = new OfertaFormativa();
    $res = $da->insertEntidade($nome, $morada, $telefone, $email, $link, $latitude, $longitude);
    $msg = '<li>Entidade inserida com sucesso!</li>';
    echo json_encode(['code'=>200, 'msg'=>$msg]);
    exit;   

}else{
  echo "<script>window.location.replace('../index.php');</script>";
}

?>
