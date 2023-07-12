<?php
  session_start();
  // Se não existir ID de permissão na sessão manda para a pág. inicial
  if(!isset($_SESSION['idTipoDePermissao'])) {
    echo "<script>window.location.replace('../index.php');</script>";
      // Se  existir ID de permissão na sessão e esse ID for 1 (Admin) ou 2 (Front Office) continua
  } else if ($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2 ){
      // Se existir get ID executa:
      if(isset($_GET['id'])){
        // Esta parte serve para ir buscar os dados de uma certa notícia e mostrar no formulário de edit.
        $id = $_GET['id'];
        include_once("ofertaFormativa.php");
        $da = new OfertaFormativa();
        $res = $da->getEscolaById($id);
        $row = mysql_fetch_assoc($res);
        $nome= $row['nome'];
        $curso= $row['curso'];
        $linkyoutube = $row['linkyoutube'];
        $linkinscricao = $row['linkinscricao'];
        echo json_encode(['code'=>200, 'id'=>$id, 'nome'=>$nome, 'curso'=>$curso,'linkyoutube'=>$linkyoutube,'linkinscricao'=>$linkinscricao]);
        exit;
      // Se em vez de get ID existir POST ID executa:
      } else if(isset($_POST['id'])){
          $idEscola = $_POST['id'];
          $nome = $_POST['txtNomeEscolaEdit'];
          $curso = $_POST['txtCursoEdit'];
          $linkyoutube = $_POST['txtLinkyoutubeEdit'];
          $linkinscricao = $_POST['txtLinkinscricaoEdit'];
          $msg = "";
          
          // Verifica se os campos de título e texto estão vazios
          if(empty($nome) || empty($curso) || empty($linkyoutube) ||empty($linkinscricao)){
            $msg .= "<li>Certifique-se que todos os campos estão devidamente preenchidos.</li>";
            echo json_encode(['code'=>404, 'msg'=>$msg]);
            exit;
          // Se não estiverem vazios executa:
          }else{    
            include_once("ofertaFormativa.php");
            $da = new OfertaFormativa();
            
            $res = $da->updateEscola($idEscola, $nome, $curso, $linkyoutube, $linkinscricao);
            $msg .="<li>Escola editada com sucesso!</li>";
            echo json_encode(['code'=>200, 'msg'=>$msg]);              
            
        }
      }
  }else{
    echo "<script>window.location.replace('../index.php');</script>";
  }
?>
