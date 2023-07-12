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
        $res = $da->getCursoAdultosById($id);
        $row = mysqli_fetch_assoc($res);
        //nome, objetivos, descricao, modalidade, nivel, tipoCertificacao, entidade
        $nome = $row['nome'];
        $objetivos = $row['objetivos'];        
        $descricao = $row['descricao'];
        $modalidade = $row['modalidade'];
        $nivel = $row['nivel'];
        $tipoCertificacao = $row['tipoCertificacao'];
        //$entidade = $row['entidade'];        

        echo json_encode(['code'=>200, 'id'=>$id, 'nome'=>$nome, 'objetivos'=>$objetivos, 'descricao'=>$descricao, 
                            'modalidade'=>$modalidade, 'nivel'=>$nivel, 'tipoCertificacao'=>$tipoCertificacao]);
        exit;
      // Se em vez de get ID existir POST ID executa:
      } else if(isset($_POST['id'])){
          $idCurso = $_POST['id'];
          $nomeCurso = $_POST['txtNomeCursoEdit'];
          $descricao = $_POST['txtDescricaoEdit'];
          $objetivos = $_POST['txtObjetivosEdit'];
          $modalidade = $_POST['modalidadeEdit'];
          $nivel = $_POST['nivelEdit'];
        //  $entidade = $_POST['entidadeEdit'];
          $tipoCertificacao = $_POST['tipoCertificacaoEdit'];
          
          $msg = "";
          
          // Verifica se os campos de título e texto estão vazios
          if(empty($nomeCurso) || empty($descricao)){
            $msg .= "<li>Certifique-se que todos os campos estão devidamente preenchidos.</li>";
            echo json_encode(['code'=>404, 'msg'=>$msg]);
            exit;
          // Se não estiverem vazios executa:
          }else{    
            include_once("ofertaFormativa.php");
            $da = new OfertaFormativa();
            
            $res = $da->updateCursoAdultos($idCurso, $nomeCurso, $descricao, $objetivos, $modalidade, $nivel, $tipoCertificacao );
            $msg .="<li>Curso editado com sucesso!</li>";
            echo json_encode(['code'=>200, 'msg'=>$msg]);
              
            
        }
      }
  }else{
    echo "<script>window.location.replace('../index.php');</script>";
  }
?>
