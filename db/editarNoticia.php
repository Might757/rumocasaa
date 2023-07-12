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
        include_once("dataAccess.php");
        $da = new DataAccess();
        $res = $da->getNoticia($id);
        $row = mysqli_fetch_assoc($res);
        $titulo = $row['titulo'];
        $textoNoticia = $row['texto'];
        $autor = $row['autor'];
        $imgNoticia = $row['imagemNoticia'];
        $displayImgNoticia = '<img src="images/noticias/'.$imgNoticia.'" class="img-read-news" alt="Imagem da Noticia">';
        $linkVideo = $row['linkVideo'];
        echo json_encode(['code'=>200, 'id'=>$id, 'titulo'=>$titulo, 'textoNoticia'=>$textoNoticia, 'autor'=>$autor, 'linkVideo'=>$linkVideo, 'imagemNoticia'=>$displayImgNoticia]);
        exit;
      // Se em vez de get ID existir POST ID executa:
      } else if(isset($_POST['id'])){
          // Esta é a parte que trata de alterar os diversos campos das notícias
          // Guarda as informações da notícia que está a ser editada
          $id = $_POST['id'];
          $txtTituloEdit = $_POST['txtTituloEdit'];
          $txtNoticiaEdit = $_POST['txtNoticiaEdit'];
          $txtLinkVideoEdit = $_POST['txtLinkVideoEdit'];
          $fileNewName = "";
          $tituloIgual = false;
          $noticiaIgual = false;
          $videoIgual = false;
          $imgExiste = false;
          $msg = "";
          // Verifica se existe ou não uma imagem inserida no formulário
          if(!file_exists($_FILES['imgNoticiaEdit']['tmp_name'])){
            $imgExiste = false;

          }else if ($_FILES["imgNoticiaEdit"]["size"] > 500000){
            $imgExiste = true;
            $msg = "<li>Por favor insira uma imagem com menos de 500KB.</li>";
            echo json_encode(['code'=>404, 'msg'=>$msg]);
            exit;

          }else if (!is_uploaded_file($_FILES['imgNoticiaEdit']['tmp_name'])){
            $imgExiste = false;

          }else{
            $imgExiste = true;
          }
          // Verifica se os campos de título e texto estão vazios
          if(empty($txtTituloEdit) || empty($txtNoticiaEdit)){
            $msg .= "<li>Certifique-se que todos os campos estão devidamente preenchidos.</li>";
            echo json_encode(['code'=>404, 'msg'=>$msg]);
            exit;
          // Se não estiverem vazios executa:
          }else{
            // Caso não exista uma imagem no formulário
            if ($imgExiste == false){
              include_once("dataAccess.php");
              $da = new DataAccess();
              //Vai buscar as informações da notícia em questão, que estão guardadas na BD
              $res = $da->getNoticia($id);
              $row = mysqli_fetch_assoc($res);
              $txtTitulo = $row['titulo'];
              $txtNoticia = $row['texto'];
              $txtLinkVideo = $row['linkVideo'];
              // Verifica se o título que está na BD é igual ao que está no formulário
              if ($txtTituloEdit == $txtTitulo){
                $tituloIgual = true;
              }
              // Verifica se o texto da notícia que está na BD é igual ao que está no formulário
              if ($txtNoticiaEdit == $txtNoticia){
                $noticiaIgual = true;
              }
              // Verifica se o vídeo que está na BD é igual ao que está no formulário
              if ($txtLinkVideoEdit == $txtLinkVideo){
                $videoIgual = true;
              }
              // Caso o link do vídeo não esteja em branco executa:
              if ($txtLinkVideoEdit != ""){
                // Todo o procedimento que serve para receber formatos diferentes de links do youtube e transformá-los no formato que é necessário para este caso
                if(strpos($txtLinkVideoEdit, 'youtube.com/watch?v') !== false){
                  $videoId = explode("v=",$txtLinkVideoEdit)[1];
                  if(strpos($videoId, '&') !== false){
                    $videoId = explode("&",$videoId)[0];
                  }
                  $embedVideo='https://www.youtube.com/embed/'.$videoId;

                }else if(strpos($txtLinkVideo, 'youtu.be/') !== false){
                    $videoId = explode("youtu.be/",$txtLinkVideoEdit)[1];
                    if(strpos($videoId, '&') !== false){
                        $videoId = explode("&",$videoId)[0];
                    }
                    $embedVideo='https://www.youtube.com/embed/'.$videoId;

                }else if(strpos($txtLinkVideoEdit, 'youtube.com/embed/') !== false){
                  $videoId = explode("embed/",$txtLinkVideoEdit)[1];
                  if(strpos($videoId, '&') !== false) {
                    $videoId = explode("&",$videoId)[0];
                  }
                  $embedVideo='https://www.youtube.com/embed/'.$videoId;
                // Caso o link inserido não seja válido executa:
                }else{
                  $msg .= "<li>Link inválido, por favor verifique o link do vídeo que inseriu.</li>";
                  echo json_encode(['code'=>404, 'msg'=>$msg]);
                  exit;
                }
              // Caso o link do vídeo esteja em branco, mantém
              }else{
                $embedVideo = "";
              }
              // Caso todas as informações do formulário estejam igual às da BD executa:
              if ($tituloIgual == true && $noticiaIgual == true && $videoIgual == true){
                $msg .= "<li>Por favor modifique algum campo da notícia se deseja editar a mesma.</li>";
                echo json_encode(['code'=>404, 'msg'=>$msg]);
              // Caso contrário executa:
              }else{
                include_once("dataAccess.php");
                $da = new DataAccess();
                // Encurta o texto da notícia para servir de texto de apresentação, acrescentando "..."
                if (strlen($txtNoticiaEdit) > 200){
                  $txtApresenta =  substr($txtNoticiaEdit, 0, 200) . '...';

                }else{
                    $txtApresenta = ($txtNoticiaEdit . "...");
                }
                $res = $da->editarNoticia($id, $txtTituloEdit, $txtNoticiaEdit, $txtApresenta, $embedVideo, $fileNewName, $tituloIgual, $noticiaIgual, $videoIgual);
                $msg .="<li>Notícia editada com sucesso!</li>";
                echo json_encode(['code'=>200, 'msg'=>$msg]);
              }
            // Caso exista uma imagem inserida no formulário executa:
            }else{
              // Vai buscar todos os dados necessários da imagem que foi inserida pelo utilizador e declara algumas variáveis
              $file = $_FILES['imgNoticiaEdit'];
              $allowed = array('jpg', 'jpeg', 'png');
              $fileName = $_FILES['imgNoticiaEdit']['name'];
              $fileTmpName = $_FILES['imgNoticiaEdit']['tmp_name'];
              $fileSize = $_FILES['imgNoticiaEdit']['size'];
              $fileType = $_FILES['imgNoticiaEdit']['type'];
              $fileExt = explode('.', $fileName);
              $fileActualExt = strtolower(end($fileExt));
              // Caso o tipo de imagem for válido (se estiver dentro do array "allowed")
              if (in_array($fileActualExt, $allowed)){
                // Caso exista algum erro executa:
                if ( $_FILES['imgNoticiaEdit']['error'] > 0 ){
                  $msg = "<li>" . $_FILES['imgNoticiaEdit']['error'] . "</li>";
                  echo json_encode(['code'=>404, 'msg'=>$msg]);
                  exit;
                // Se não existirem erros na imagem executa:
                }else{
                  // Vai buscar as informações da notícia em questão, que estão guardadas na BD e declara algumas variáveis necessárias
                  include_once("dataAccess.php");
                  $da = new DataAccess();
                  $res = $da->getNoticia($id);
                  $row = mysqli_fetch_assoc($res);
                  $txtTitulo = $row['titulo'];
                  $txtNoticia = $row['texto'];
                  $txtLinkVideo = $row['linkVideo'];
                  $nomeImg = $row['imagemNoticia'];
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

                  // Verifica se o título que está na BD é igual ao que está no formulário
                  if ($txtTituloEdit == $txtTitulo){
                    $tituloIgual = true;
                  }
                  // Verifica se o texto que está na BD é igual ao que está no formulário
                  if ($txtNoticiaEdit == $txtNoticia){
                    $noticiaIgual = true;
                  }
                  // Verifica se o vídeo que está na BD é igual ao que está no formulário
                  if ($txtLinkVideoEdit == $txtLinkVideo){
                    $videoIgual = true;
                  }
                  // Caso o link não esteja em branco executa:
                  if ($txtLinkVideoEdit != ""){
                    // Todo o procedimento que serve para receber formatos diferentes de links do youtube e transformá-los no formato que é necessário para este caso
                    if(strpos($txtLinkVideoEdit, 'youtube.com/watch?v') !== false){
                      $videoId = explode("v=",$txtLinkVideoEdit)[1];
                      if(strpos($videoId, '&') !== false) {
                        $videoId = explode("&",$videoId)[0];
                      }
                      $embedVideo='https://www.youtube.com/embed/'.$videoId;

                    }else if(strpos($txtLinkVideo, 'youtu.be/') !== false){
                        $videoId = explode("youtu.be/",$txtLinkVideoEdit)[1];
                        if(strpos($videoId, '&') !== false){
                            $videoId = explode("&",$videoId)[0];
                        }
                        $embedVideo='https://www.youtube.com/embed/'.$videoId;

                    }else if (strpos($txtLinkVideoEdit, 'youtube.com/embed/') !== false){
                      $videoId = explode("embed/",$txtLinkVideoEdit)[1];
                      if(strpos($videoId, '&') !== false) {
                        $videoId = explode("&",$videoId)[0];
                      }
                      $embedVideo='https://www.youtube.com/embed/'.$videoId;
                    // Caso o link do vídeo seja inválido executa:
                    }else{
                      $msg .= "<li>Link inválido, por favor verifique o link do vídeo que inseriu.</li>";
                      echo json_encode(['code'=>404, 'msg'=>$msg]);
                      exit;
                    }
                  // Caso o link do vídeo esteja em branco, mantém
                  }else{
                    $embedVideo = "";
                  }
                  // Caso todas as informações forem iguais às guardadas na BD executa:
                  if ($tituloIgual == true && $noticiaIgual == true && $videoIgual == true){
                    // Se conseguir guardar a imagem inserida pelo utilizador na pasta das imagens de notícias
                    if(move_uploaded_file($fileTmpName, '../images/noticias/' . $fileNewName)){
                      // Se eliminarIMG for true, ou seja se a extensão da img inserida for diferente da que está guardada atualmente
                      if ($eliminarIMG == true){
                        // Elimina a imagem atual da pasta
                        unlink("../images/noticias/".$nomeImg);
                      }
                      // Coloca o txtApresenta em branco
                      $txtApresenta = "";
                      $res = $da->editarNoticia($id, $txtTituloEdit, $txtNoticiaEdit, $txtApresenta, $embedVideo, $fileNewName, $tituloIgual, $noticiaIgual, $videoIgual);
                      $msg .= "<li>Notícia editada com sucesso.</li>";
                      echo json_encode(['code'=>200, 'msg'=>$msg]);
                      exit;
                    // Caso falhe ao guardar a imagem
                    }else{
                      $msg .= "<li>Não foi possível editar a imagem desta notícia.</li>";
                      echo json_encode(['code'=>404, 'msg'=>$msg]);
                      exit;
                    }
                  // Caso exista alguma informação que foi modificada executa:
                  }else{
                    // Encutra o texto da notícia para funcionar como texto de apresentação, adicionando "..."
                    if (strlen($txtNoticiaEdit) > 200){
                      $txtApresenta =  substr($txtNoticiaEdit, 0, 200) . '...';
                    }else{
                        $txtApresenta = ($txtNoticiaEdit . "...");
                    }
                    // Se conseguir guardar a imagem inserida pelo utilizador na pasta das imagens de notícias
                    if(move_uploaded_file($fileTmpName, '../images/noticias/' . $fileNewName)){
                      // Caso eliminarIMG for true, ou seja se a extensão da img inserida for diferente da que está guardada atualmente executa:
                      if ($eliminarIMG == true){
                        // Elimina a imagem que está na pasta
                        unlink("../images/noticias/".$nomeImg);
                      }
                      $res = $da->editarNoticia($id, $txtTituloEdit, $txtNoticiaEdit, $txtApresenta, $embedVideo, $fileNewName, $tituloIgual, $noticiaIgual, $videoIgual);
                      $msg .= "<li>Notícia editada com sucesso!</li>";
                      echo json_encode(['code'=>200, 'msg'=>$msg]);
                      exit;
                    }else{
                      $msg .= "<li>Não foi possível editar a imagem desta notícia.</li>";
                      echo json_encode(['code'=>404, 'msg'=>$msg]);
                      exit;
                    }
                  }
                }
              }else{
                $msg .="<li>O formato da imagem que inseriu não é suportado!</li>";
                echo json_encode(['code'=>404, 'msg'=>$msg]);
                exit;
              }
          }
        }
      }
  }else{
    echo "<script>window.location.replace('../index.php');</script>";
  }
?>
