<?php
class DataAccess{
    private $connection;
    function connect(){
      $bd= "empregab_rebm";
      $user = "root";
      $pwd = ""; // 
      $server = "localhost";

      $this->connection = mysqli_connect($server, $user, $pwd, $bd);
      //verificar se a conexão está bem aberta
      if(!$this->connection){
        //erro
        die("Ocorreu um erro ao tentar ligar-se à base de dados... ( ".mysqli_error()." )");
      }else{
          $this->execute("set names 'utf8'");
          $this->execute("set character_set_connection=utf8");
          $this->execute("set character_set_client=utf8");
          $this->execute("set character_set_results=utf8");
      }
    }

      function execute($command){
      $res = mysqli_query($this->connection, $command);
      if(!$res)
          die("invalid query: ".mysqli_error($this->connection));
      else
          return $res;
    }

    function disconnect(){
        mysqli_close($this->connection);
    }

    protected function bridge($query){
        $this->connect();
        $res = $this->execute($query);
        $this->disconnect();
        return $res;
    }

    // Utilizadores
    function login($email, $password){
        $query = "select * from tecnicos where email = '$email' and password = '$password' AND ativo = 1";
        $this->connect();
        $res = $this->execute($query);
        $this->disconnect();
        return $res;
    }

    function verificarUtilizadorRegistado($email){
        $query = "select * from tecnicos where email = '".$email."' AND ativo = 1";
        $this->connect();
        $res = $this->execute($query);
        $this->disconnect();
        return $res;
    }

    function inserirUtilizador($nome, $email, $password, $idTiposDePermissoes, $idFrontOffice){
        // echo("<script>console.log('Este é o nome: ' + $nome + 'Este é o email' + $email + 'Esta é a password' + $password + 'Este é o id tipo de permissao ' + $idTiposDePermissoes + 'Este é o id de front office ' + $idFrontOffice ' hey')</script>");
        $query = "insert into tecnicos(nome, email, password, idTiposDePermissoes, idFrontOffice) VALUES ('".$nome."', '".$email."', '".$password."', ".$idTiposDePermissoes.", ".$idFrontOffice.")";
        $res = $this->bridge($query);
        return $res;
    }

    // function getUtilizadores($pesquisa, $frontOffice, $permissao){
    //     $this->connect();
    //     if ($pesquisa != "" && $frontOffice != 0 && $permissao != 0){
    //       $query = "select * from tecnicos where nome like '%".$pesquisa."%' AND idFrontOffice = ".$frontOffice." AND idTiposDePermissoes = ".$permissao." AND ativo = 1 OR (email like '%".$pesquisa."%' AND idFrontOffice = ".$frontOffice." AND idTiposDePermissoes = ".$permissao." AND ativo = 1)";
    //
    //     }else if($pesquisa != "" && $frontOffice != 0 && $permissao == 0){
    //       $query = "select * from tecnicos where nome like '%".$pesquisa."%' AND idFrontOffice = ".$frontOffice." AND ativo = 1 OR (email like '%".$pesquisa."%' AND idFrontOffice = ".$frontOffice." AND ativo = 1)";
    //
    //     }else if($pesquisa != "" && $permissao != 0 && $frontOffice == 0){
    //       $query = "select * from tecnicos where nome like '%".$pesquisa."%' AND idTiposDePermissoes = '".$permissao."' AND ativo = 1 OR (email like '%".$pesquisa."%' AND idTiposDePermissoes = '".$permissao."' AND ativo = 1)";
    //
    //     }else if($frontOffice != 0 && $permissao != 0 && $pesquisa == ""){
    //       $query = "select * from tecnicos where idFrontOffice = '".$frontOffice."' AND idTiposDePermissoes = '".$permissao."' AND ativo = 1";
    //
    //     }else if($frontOffice != 0 && $permissao == 0 && $pesquisa == ""){
    //       $query = "select * from tecnicos where idFrontOffice = '".$frontOffice."' AND ativo = 1";
    //
    //     }else if($permissao != 0 && $frontOffice == 0 && $pesquisa == ""){
    //       $query = "select * from tecnicos where idTiposDePermissoes = '".$permissao."' AND ativo = 1";
    //
    //     }else{
    //       $query = "select * from tecnicos where nome like '%".$pesquisa."%' AND ativo = 1 OR (email like '%".$pesquisa."%' AND ativo = 1) order by idTiposDePermissoes, idFrontOffice";
    //     }
    //     $res = $this->execute($query);
    //     $this->disconnect();
    //     return $res;
    // }

    function getUtilizadoresPesquisa($pesquisa, $frontOffice, $permissao){
        $this->connect();
        if ($pesquisa != "" && $frontOffice != 0 && $permissao != 0){
          $query = "select * from tecnicos where nome like '%".$pesquisa."%' AND idFrontOffice = ".$frontOffice." AND idTiposDePermissoes = ".$permissao." OR (email like '%".$pesquisa."%' AND idFrontOffice = ".$frontOffice." AND idTiposDePermissoes = ".$permissao.")";

        }else if($pesquisa != "" && $frontOffice != 0 && $permissao == 0){
          $query = "select * from tecnicos where nome like '%".$pesquisa."%' AND idFrontOffice = ".$frontOffice." OR (email like '%".$pesquisa."%' AND idFrontOffice = ".$frontOffice.")";

        }else if($pesquisa != "" && $permissao != 0 && $frontOffice == 0){
          $query = "select * from tecnicos where nome like '%".$pesquisa."%' AND idTiposDePermissoes = '".$permissao."' OR (email like '%".$pesquisa."%' AND idTiposDePermissoes = '".$permissao."')";

        }else if($frontOffice != 0 && $permissao != 0 && $pesquisa == ""){
          $query = "select * from tecnicos where idFrontOffice = '".$frontOffice."' AND idTiposDePermissoes = '".$permissao."'";

        }else if($frontOffice != 0 && $permissao == 0 && $pesquisa == ""){
          $query = "select * from tecnicos where idFrontOffice = '".$frontOffice."'";

        }else if($permissao != 0 && $frontOffice == 0 && $pesquisa == ""){
          $query = "select * from tecnicos where idTiposDePermissoes = '".$permissao."'";

        }else{
          $query = "select * from tecnicos where nome like '%".$pesquisa."%' OR (email like '%".$pesquisa."%') order by idTiposDePermissoes, idFrontOffice";
        }
        $res = $this->execute($query);
        $this->disconnect();
        return $res;
    }


    function getUtilizador($id){
        $this->connect();
        $query = "select * from tecnicos where id = ".$id." AND ativo = 1";
        $res = $this->execute($query);
        $this->disconnect();
        return $res;
    }


    function ativarUtilizador($id){
        $query = "UPDATE tecnicos SET ativo = 1 WHERE id = ".$id."";
        $this->connect();
        $res = $this->execute($query);
        $this->disconnect();
        return $res;
    }

    function desativarUtilizador($id){
        $query = "UPDATE tecnicos SET ativo = 0 WHERE id = ".$id."";
        $this->connect();
        $res = $this->execute($query);
        $this->disconnect();
        return $res;
    }

    function editarUtilizador($id, $nome, $email, $password, $frontOffice, $permissao, $passwordEmpty){
      $this->connect();
      if ($passwordEmpty == true){
        $query = "UPDATE tecnicos SET nome = '".$nome."', email = '".$email."', idFrontOffice = ".$frontOffice.", idTiposDePermissoes = ".$permissao." where id = ".$id." AND ativo = 1";
      } else {
        $query = "UPDATE tecnicos SET nome = '".$nome."', email = '".$email."', password = '".$password."', idFrontOffice = ".$frontOffice.", idTiposDePermissoes = ".$permissao." where id = ".$id." AND ativo = 1";
      }
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    //Perfil
    function editarPerfil($id, $nome, $email, $novaPassword, $mudarPassword, $editarNome, $editarEmail){
      if ($mudarPassword == true){
        if ($editarNome == true && $editarEmail == true){
          $query = "UPDATE tecnicos SET nome = '".$nome."', email = '".$email."', password = '".$novaPassword."' where id = ".$id."";

        }else if ($editarNome == true && $editarEmail == false){
          $query = "UPDATE tecnicos SET nome = '".$nome."', password = '".$novaPassword."' where id = ".$id."";

        }else if ($editarNome == false && $editarEmail == true){
          $query = "UPDATE tecnicos SET email = '".$email."', password = '".$novaPassword."' where id = ".$id."";

        }else{
          $query = "UPDATE tecnicos SET password = '".$novaPassword."' where id = ".$id."";
        }

      }else{
        if ($editarNome == true && $editarEmail == false){
          $query = "UPDATE tecnicos SET nome = '".$nome."' where id = ".$id."";

        }else if ($editarNome == false && $editarEmail == true){
          $query = "UPDATE tecnicos SET email = '".$email."' where id = ".$id."";

        }else{
          $query = "UPDATE tecnicos SET nome = '".$nome."', email = '".$email."' where id = ".$id."";
        }
      }

      $this->connect();
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    //Autores
    function getAutores(){
        $this->connect();
        $query = "select id, nome from tecnicos where ativo = 1";
        $res = $this->execute($query);
        $this->disconnect();
        return $res;
    }

    function getAutor($id){
      $this->connect();
      $query = "select nome from tecnicos where id = ".$id." AND ativo = 1";
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    //Tipos de Permissões
    function getTipoPermissoes(){
      $query = "select * from tiposdepermissoes order by id asc";
      $this->connect();
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    function getNomePermissao($id){
      $query = "select tipoDePermissao from tiposdepermissoes where id = $id";
      $this->connect();
      $res = $this->execute($query);
      $row = mysqli_fetch_object($res);
      $this->disconnect();
      return $row->tipoDePermissao;
    }


    //Front Offices
    function getFrontOffices(){
      $query = "select * from frontoffice order by nome asc";
      $this->connect();
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    function getNomeFrontOffice($id){
      $query = "select nome from frontoffice where id = $id";
      $this->connect();
      $res = $this->execute($query);
      $row = mysqli_fetch_object($res);
      $this->disconnect();
      return $row->nome;
    }

    //Noticias
    function getNoticia($id){
      $query = "select * from noticias where id = ".$id."";
      $this->connect();
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    function getUltimas6Noticias(){
      $query = "select * from noticias order by dataNoticia DESC, id DESC limit 6";
      $this->connect();
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    function getUltimas15Noticias($id, $inicio, $limite){
      $query = "select * from noticias where id != ".$id." order by dataNoticia DESC, id DESC limit ".$inicio.",".$limite."";
      $this->connect();
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    function getNoticiasPorPag($inicio, $limite, $pesquisa, $pesquisarNome){
      if ($pesquisarNome == true){
        $query = "select * from noticias where titulo like '%".$pesquisa."%' OR texto like '%".$pesquisa."%' order by dataNoticia DESC, id DESC limit ".$inicio.",".$limite."";
      } else {
        $query = "select * from noticias order by dataNoticia DESC, id DESC limit ".$inicio.",".$limite."";
      }
      $this->connect();
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    function getQntNoticias(){
      $query = "select count(id) FROM noticias";
      $this->connect();
      $res = mysqli_fetch_row($this->execute($query));
      $this->disconnect();
      return $res;
    }

    function getQntNoticiasPesquisa($pesquisa){
      $query = "select count(id) FROM noticias where titulo like '%".$pesquisa."%' OR texto like '%".$pesquisa."%'";
      $this->connect();
      $res = mysqli_fetch_row($this->execute($query));
      $this->disconnect();
      return $res;
    }

    function getNoticiasPorPesquisa($pesquisa){
      if (!empty($pesquisa)){
        $query = "select * from noticias where titulo like '%".$pesquisa."%' OR texto like '%".$pesquisa."%' order by dataNoticia DESC, id DESC";
      } else {
        $query = "select * from noticias order by dataNoticia DESC, id DESC";
      }
      $this->connect();
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    function inserirNoticia($titulo, $texto, $textoApresenta, $dataNoticia, $autor, $img, $embedVideo, $video) {
      if ($video == true) {
        $query = "insert into noticias (titulo, texto, textoApresentacao, dataNoticia, autor, imagemNoticia, linkVideo) VALUES ('".$titulo."', '".$texto."', '".$textoApresenta."', '".$dataNoticia."', '".$autor."', '".$img."', '".$embedVideo."')";
      } else {
        $query = "insert into noticias (titulo, texto, textoApresentacao, dataNoticia, autor, imagemNoticia) VALUES ('".$titulo."', '".$texto."', '".$textoApresenta."', '".$dataNoticia."', '".$autor."', '".$img."')";
      }
      $this->connect();
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    function editarNoticia($id, $titulo, $texto, $txtApresenta, $linkVideo, $imagemNoticia, $tituloIgual, $textoIgual, $videoIgual){
      $this->connect();
      if ($imagemNoticia != ""){
        if ($tituloIgual == true && $textoIgual == true && $videoIgual == false){
          $query = "UPDATE noticias SET linkVideo = '".$linkVideo."', imagemNoticia = '".$imagemNoticia."' where id = ".$id."";

        } else if ($tituloIgual == true && $textoIgual == false && $videoIgual == false){
          $query = "UPDATE noticias SET texto = '".$texto."', textoApresentacao = '".$txtApresenta."', linkVideo = '".$linkVideo."', imagemNoticia = '".$imagemNoticia."' where id = ".$id."";

        } else if ($tituloIgual == false && $textoIgual == false && $videoIgual == true){
          $query = "UPDATE noticias SET titulo = '".$titulo."', texto = '".$texto."', textoApresentacao = '".$txtApresenta."', imagemNoticia = '".$imagemNoticia."' where id = ".$id."";

        } else if ($tituloIgual == false && $textoIgual == true && $videoIgual == true){
          $query = "UPDATE noticias SET titulo = '".$titulo."', imagemNoticia = '".$imagemNoticia."' where id = ".$id."";

        } else if ($tituloIgual == false && $textoIgual == true && $videoIgual == false){
          $query = "UPDATE noticias SET titulo = '".$titulo."', linkVideo = '".$linkVideo."', imagemNoticia = '".$imagemNoticia."' where id = ".$id."";

        } else if ($tituloIgual == true && $textoIgual == false && $videoIgual == true){
          $query = "UPDATE noticias SET texto = '".$texto."', textoApresentacao = '".$txtApresenta."', imagemNoticia = '".$imagemNoticia."' where id = ".$id."";

        } else if ($tituloIgual == true && $textoIgual == true && $videoIgual == true){
          $query = "UPDATE noticias SET imagemNoticia = '".$imagemNoticia."' where id = ".$id."";

        } else {
          $query = "UPDATE noticias SET titulo = '".$titulo."', texto = '".$texto."', textoApresentacao = '".$txtApresenta."', linkVideo = '".$linkVideo."', imagemNoticia = '".$imagemNoticia."' where id = ".$id."";
        }
      } else {
        if ($tituloIgual == true && $textoIgual == true && $videoIgual == false){
          $query = "UPDATE noticias SET linkVideo = '".$linkVideo."' where id = ".$id."";

        } else if ($tituloIgual == true && $textoIgual == false && $videoIgual == false){
          $query = "UPDATE noticias SET texto = '".$texto."', textoApresentacao = '".$txtApresenta."', linkVideo = '".$linkVideo."' where id = ".$id."";

        } else if ($tituloIgual == false && $textoIgual == false && $videoIgual == true){
          $query = "UPDATE noticias SET titulo = '".$titulo."', texto = '".$texto."', textoApresentacao = '".$txtApresenta."' where id = ".$id."";

        } else if ($tituloIgual == false && $textoIgual == true && $videoIgual == true){
          $query = "UPDATE noticias SET titulo = '".$titulo."' where id = ".$id."";

        } else if ($tituloIgual == false && $textoIgual == true && $videoIgual == false){
          $query = "UPDATE noticias SET titulo = '".$titulo."', linkVideo = '".$linkVideo."' where id = ".$id."";

        } else if ($tituloIgual == true && $textoIgual == false && $videoIgual == true){
          $query = "UPDATE noticias SET texto = '".$texto."', textoApresentacao = '".$txtApresenta."' where id = ".$id."";

        } else if ($tituloIgual == true && $textoIgual == true && $videoIgual == true){
          $query = "UPDATE noticias SET imagemNoticia = '".$imagemNoticia."' where id = ".$id."";
        } else {
          $query = "UPDATE noticias SET titulo = '".$titulo."', texto = '".$texto."', textoApresentacao = '".$txtApresenta."', linkVideo = '".$linkVideo."' where id = ".$id."";
        }
      }
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    function removerNoticia($id) {
      $query = "delete from noticias WHERE id = ".$id."";
      $this->connect();
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    //MEMBROS
    function getMembros(){
      $query = "select * from membros where ativo = 1";
      $this->connect();
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    function getMembro($id){
      $query = "select * from membros where id = ".$id." and ativo = 1";
      $this->connect();
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    function inserirMembro($nome, $img, $link){
      if(!empty($link)){
        $query = "insert into membros (nome, logotipo, link) VALUES ('".$nome."', '".$img."', '".$link."')";
      }else{
        $query = "insert into membros (nome, logotipo) VALUES ('".$nome."', '".$img."')";
      }
      $this->connect();
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    function editarMembro($id, $nome, $link, $imagem, $nomeIgual, $linkIgual){
      if ($imagem != ""){
        if($nomeIgual == true && $linkIgual == true){
          $query = "UPDATE membros SET logotipo = '".$imagem."' where id = ".$id."";

        }else if($nomeIgual == true && $linkIgual == false){
          $query = "UPDATE membros SET link = '".$link."', logotipo = '".$imagem."' where id = ".$id."";

        }else if($nomeIgual == false && $linkIgual == true){
          $query = "UPDATE membros SET nome = '".$nome."', logotipo = '".$imagem."' where id = ".$id."";

        }else if($nomeIgual == false && $linkIgual == false){
          $query = "UPDATE membros SET nome = '".$nome."', link = '".$link."', logotipo = '".$imagem."' where id = ".$id."";
        }

      }else{
        if($nomeIgual == true && $linkIgual == false){
          $query = "UPDATE membros SET link = '".$link."' where id = ".$id."";

        }else if($nomeIgual == false && $linkIgual == true){
          $query = "UPDATE membros SET nome = '".$nome."' where id = ".$id."";

        }else if($nomeIgual == false && $linkIgual == false){
          $query = "UPDATE membros SET nome = '".$nome."', link = '".$link."' where id = ".$id."";
        }
      }
      $this->connect();
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

    function removerMembro($id) {
      $query = "delete from membros WHERE id = ".$id."";
      $this->connect();
      $res = $this->execute($query);
      $this->disconnect();
      return $res;
    }

  }
?>
