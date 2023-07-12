<?php
  session_start();
  // Se não existir ID de permissão na sessão manda para a pág. inicial
  if(!isset($_SESSION['idTipoDePermissao'])) {
    echo "<script>window.location.replace('../index.php');</script>";
      // Se  existir ID de permissão na sessão e esse ID for 1 (Admin) ou 2 (Front Office) continua
  } else if ($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2 ){
      // Se existir get ID executa:
      if(isset($_GET['id'])){
        // Esta parte serve para ir buscar os dados de uma certa entidade e mostrar no formulário de edit.
        $id = $_GET['id'];
        include_once("ofertaFormativa.php");
        $da = new OfertaFormativa();
        $res = $da->getEntidadeById($id);
        $row = mysqli_fetch_assoc($res);
        $nome = $row['entidade'];
        $morada = $row['morada'];
        $telefone = $row['telefone'];
        $email = $row['email'];
        $link = $row['link'];
        $latitude = $row['latitude'];
        $longitude = $row['longitude'];
        echo json_encode(['code'=>200, 'id'=>$id, 'nome'=>$nome, 'morada'=>$morada, 'telefone'=>$telefone, 'email'=>$email, 'link'=>$link, 'latitude'=>$latitude, 'longitude'=>$longitude]);
        exit;
      // Se em vez de get ID existir POST ID executa:
      } else if(isset($_POST['id'])){
          $id = $_POST['id'];
          $nome = $_POST['txtNomeEntidadeEdit'];
          $morada = $_POST['txtMoradaEdit'];
          $telefone = $_POST['txtTelefoneEdit'];
          $email = $_POST['txtEmailEdit'];
          $link = $_POST['txtLinkEdit'];
          $latitude = $_POST['txtLatitudeEdit'];
          $longitude = $_POST['txtLongitudeEdit'];
          $msg = "";
          
          // Verifica se os campos de título e texto estão vazios
          if(empty($nome) || empty($morada) || empty($telefone) || empty($email) || empty($link) /* || empty($latitude) || empty($longitude)*/){
            $msg .= "<li>Certifique-se que todos os campos estão devidamente preenchidos.</li>";
            echo json_encode(['code'=>404, 'msg'=>$msg]);
            exit;
          // Se não estiverem vazios executa:
          }else{    
            include_once("ofertaFormativa.php");
            $da = new OfertaFormativa();
            
            $res = $da->updateEntidade($id, $nome, $morada, $telefone, $email, $link, $latitude, $longitude);
            $msg .="<li>Entidade editada com sucesso!</li>";
            echo json_encode(['code'=>200, 'msg'=>$msg]);              
            exit;
        }
      }
  }else{
    echo "<script>window.location.replace('../index.php');</script>";
  }
?>
