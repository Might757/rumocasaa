<?php
  session_start();
  // Se não existir ID de permissão na sessão manda para a pág. inicial
  if(!isset($_SESSION['idTipoDePermissao'])){
    echo "<script>window.location.replace('../index.php');</script>";

  // Se  existir ID de permissão na sessão e esse ID for 1 (Admin) ou 2 (Front Office) continua
  }else if($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2 ){
    if(isset($_GET['id'])){
      $id = $_GET['id'];
      $msg = "";
      // Vai buscar todos os dados do membro cujo ID é equivalente ao recebido.
      include_once("dataAccess.php");
      $da = new dataAccess();
      $res = $da->getMembro($id);
      if (mysqli_num_rows($res) != 0){
        $row = mysqli_fetch_assoc($res);
        $id = $row['id'];
        $nome = $row['nome'];
        $logotipo = $row['logotipo'];
        $displayLogotipo = '<img src="images/membros/'.$logotipo.'" class="img-logo-membro" alt="Logotipo do membro">';
        $link = $row['link'];
        echo json_encode(['code'=>200, 'id'=>$id, 'nome'=>$nome, 'logotipo'=>$displayLogotipo, 'link'=>$link]);
      }else{
        $msg = "Não foi possível encontrar o membro que deseja editar.";
        echo json_encode(['code'=>404, 'msg'=>$msg]);
      }

    }else if(isset($_POST['id'])){
      $id = $_POST['id'];
      $txtNomeEdit = $_POST['txtNomeEdit'];
      $txtLinkEdit = $_POST['txtLinkEdit'];
      $fileNewName = "";
      $nomeIgual = false;
      $linkIgual = false;
      $imgExiste = false;
      $msg = "";

      // Verifica se existe ou não uma imagem inserida no formulário
      if(!file_exists($_FILES['imgMembroEdit']['tmp_name'])){
        $imgExiste = false;

      }else if ($_FILES["imgMembroEdit"]["size"] > 500000){
        $imgExiste = true;
        $msg = "<li>Por favor insira uma imagem com menos de 500KB.</li>";
        echo json_encode(['code'=>404, 'msg'=>$msg]);
        exit;

      }else if (!is_uploaded_file($_FILES['imgMembroEdit']['tmp_name'])){
        $imgExiste = false;

      }else{
        $imgExiste = true;
      }

      // Verifica se o campo de nome está vazio
      if(empty($txtNomeEdit)){
        $msg .= "<li>Certifique-se que todos os campos estão devidamente preenchidos.</li>";
        echo json_encode(['code'=>404, 'msg'=>$msg]);
        exit;
      // Se não estiverem vazios executa:
      }else{
        // Caso não exista uma imagem no formulário
        if ($imgExiste == false){
          include_once("dataAccess.php");
          $da = new DataAccess();
          //Vai buscar as informações do membro em questão, que estão guardadas na BD
          $res = $da->getMembro($id);
          $row = mysqli_fetch_assoc($res);
          $txtNome = $row['nome'];
          $txtLink = $row['link'];
          // Verifica se o nome que está na BD é igual ao que está no formulário
          if ($txtNomeEdit == $txtNome){
            $nomeIgual = true;
          }

          // Verifica se o link que está na BD é igual ao que está no formulário
          if ($txtLinkEdit == $txtLink){
            $linkIgual = true;
          }

          if (!empty($txtLinkEdit)){
            $parsed = parse_url($txtLinkEdit);
            if (empty($parsed['scheme'])) {
                $txtLinkEdit = 'http://' . ltrim($txtLinkEdit, '/');
            }
          }

          // Caso todas as informações do formulário estejam igual às da BD executa:
          if ($nomeIgual == true && $linkIgual == true){
            $msg .= "<li>Por favor modifique algum campo se deseja editar este membro.</li>";
            echo json_encode(['code'=>404, 'msg'=>$msg]);
            exit;
          // Caso contrário executa:
          }else{
            include_once("dataAccess.php");
            $da = new DataAccess();
            $res = $da->editarMembro($id, $txtNomeEdit, $txtLinkEdit, $fileNewName, $nomeIgual, $linkIgual);
            $msg .="<li>Membro editado com sucesso!</li>";
            echo json_encode(['code'=>200, 'msg'=>$msg]);
            exit;
          }

          // Caso exista uma imagem inserida no formulário executa:
        }else{
          // Vai buscar todos os dados necessários da imagem que foi inserida pelo utilizador e declara algumas variáveis
          $file = $_FILES['imgMembroEdit'];
          $allowed = array('jpg', 'jpeg', 'png');
          $fileName = $_FILES['imgMembroEdit']['name'];
          $fileTmpName = $_FILES['imgMembroEdit']['tmp_name'];
          $fileSize = $_FILES['imgMembroEdit']['size'];
          $fileType = $_FILES['imgMembroEdit']['type'];
          $fileExt = explode('.', $fileName);
          $fileActualExt = strtolower(end($fileExt));
          // Caso o tipo de imagem for válido (se estiver dentro do array "allowed")
          if (in_array($fileActualExt, $allowed)){
            // Caso exista algum erro executa:
            if ( $_FILES['imgMembroEdit']['error'] > 0 ){
              $msg = "<li>" . $_FILES['imgMembroEdit']['error'] . "</li>";
              echo json_encode(['code'=>404, 'msg'=>$msg]);
              exit;

            // Se não existirem erros na imagem executa:
            }else{
              // Vai buscar as informações da notícia em questão, que estão guardadas na BD e declara algumas variáveis necessárias
              include_once("dataAccess.php");
              $da = new DataAccess();
              $res = $da->getMembro($id);
              $row = _fetch_assoc($res);
              $txtNome = $row['nome'];
              $txtLink = $row['link'];
              $nomeImg = $row['logotipo'];
              $eliminarIMG = false;
              // Vai buscar o nome e extensão da imagem da BD
              $fileExtBD = explode('.', $nomeImg);
              $nomeAntigo = strtolower($fileExtBD[0]);
              $extAntiga = strtolower(end($fileExtBD));

              // Caso as extensões sejam iguais executa:
              if ($extAntiga == $fileActualExt){
                $fileNewName = $nomeAntigo . "." . $fileActualExt;

              // Caso as extensões sejam diferentes executa:
              } else {
                $fileNewName = $nomeAntigo . "." . $fileActualExt;
                $eliminarIMG = true;
              }

              // Verifica se o nome que está na BD é igual ao que está no formulário
              if ($txtNomeEdit == $txtNome){
                $nomeIgual = true;
              }

              // Verifica se o link que está na BD é igual ao que está no formulário
              if ($txtLinkEdit == $txtLink){
                $linkIgual = true;
              }

              if (!empty($txtLinkEdit)){
                $parsed = parse_url($txtLinkEdit);
                if (empty($parsed['scheme'])) {
                    $txtLinkEdit = 'http://' . ltrim($txtLinkEdit, '/');
                }
              }

              // Caso todas as informações forem iguais às guardadas na BD executa:
              if ($nomeIgual == true && $linkIgual == true){
                // Se conseguir guardar a imagem inserida pelo utilizador na pasta das imagens de notícias
                if(move_uploaded_file($fileTmpName, '../images/membros/' . $fileNewName)){
                  // Se eliminarIMG for true, ou seja se a extensão da img inserida for diferente da que está guardada atualmente
                  if ($eliminarIMG == true){
                    // Elimina a imagem atual da pasta
                    unlink("../images/membros/".$nomeImg);
                  }
                  $res = $da->editarMembro($id, $txtNomeEdit, $txtLinkEdit, $fileNewName, $nomeIgual, $linkIgual);
                  $msg .= "<li>Membro editado com sucesso.</li>";
                  echo json_encode(['code'=>200, 'msg'=>$msg]);
                  exit;
                // Caso falhe ao guardar a imagem
                }else{
                  $msg .= "<li>Não foi possível editar o logotipo deste membro.</li>";
                  echo json_encode(['code'=>404, 'msg'=>$msg]);
                  exit;
                }

              // Caso exista alguma informação que foi modificada executa:
              }else{
                // Se conseguir guardar a imagem inserida pelo utilizador na pasta das imagens de notícias
                if(move_uploaded_file($fileTmpName, '../images/membros/' . $fileNewName)){
                  // Caso eliminarIMG for true, ou seja se a extensão da img inserida for diferente da que está guardada atualmente executa:
                  if ($eliminarIMG == true){
                    // Elimina a imagem que está na pasta
                    unlink("../images/membros/".$nomeImg);
                  }
                  $res = $da->editarMembro($id, $txtNomeEdit, $txtLinkEdit, $fileNewName, $nomeIgual, $linkIgual);
                  $msg .= "<li>Membro editado com sucesso!</li>";
                  echo json_encode(['code'=>200, 'msg'=>$msg]);
                  exit;

                }else{
                  $msg .= "<li>Não foi possível editar o logotipo deste membro.</li>";
                  echo json_encode(['code'=>404, 'msg'=>$msg]);
                  exit;
                }
              }
            }
          }
        }
      }
    }
  }else{
    echo "<script>window.location.replace('../index.php');</script>";
  }
?>
