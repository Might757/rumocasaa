<?php

  session_start();
  if(!isset($_SESSION['idTipoDePermissao'])){
    echo "<script>window.location.replace('index.php');</script>";
  }else if($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2){
    if ( isset($_GET['msg'])){
      echo "<script>alert('".$_GET['msg']."');</script>";
    }
  }else{
    echo "<script>window.location.replace('index.php');</script>";
   }
?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Includes -->
    <?php include_once("css_includes.php");?>
    <title>REBM</title>
  </head>

  <body>
    <?php include_once("navbar.php");?>

    <div class="container">
      <div class="row">
        <div class="col-12 text-center main-title pb-2">
          <!-- Título da página e icon -->
          <div class="membros-icon"><i class="fas fa-book-open"></i></div>
          <h1 class="my-title">GERIR <span class="green-text">ESCOLAS & CURSOS</span></h1>
        </div>
      </div>

      <div class="row">
        <div class="col-8" style="margin: auto;">
          <div class="col-12" style="margin: auto;">
            <label class="form-noticias alert alert-danger display-error"></label>
            <form id="form-pesquisa" action="db/getEscolasCursos.php" method="POST">
              <div class="form-row">
                <div class="form-group col-6">
                <input type="text" class="form-control" id="txtPesquisar" name="txtPesquisar" placeholder="Palavra-chave (nome da escola)">
                </div>
                <div class="form-group col-6">
                  <select id='selAnoLetivo' name='selAnoLetivo' class="form-control">
                    <option value='1'>20/21</option>
                    <option value='2'>21/22</option>
                  </select>
                </div>
                <div class="form-group col-12">        
                  <button type="submit" class="btn-pesquisar my-title" id="btn-pesquisar">Pesquisar</button>
                  <img src="images/search.gif" id="loading-image" alt="A carregar...">
                </div>
              </div>
            </form>
          </div>

            <form id="form-criar-noticia" action="db/criarEscolasCursos.php" method="POST" enctype="multipart/form-data">
              <div class="form-group">
                <select class="form-noticias form-control" name="txtNomeEscola" id="txtNomeEscola">
                </select>
              </div>
              <div class="form-group">
                <select class="form-noticias form-control" name="txtNomeCurso" id="txtNomeCurso">
                </select>
              </div>
              <div class="form-group">
                <input type="text" class="form-noticias form-control" name="youtubeVideo" id="youtubeVideo" placeholder="Link do vídeo do youtube">
              </div>
              <div class="form-group">
                <input type="text" class="form-noticias form-control" name="linkInscrição" id="linkInscrição" placeholder="Link para Inscrição">
              </div>
              <div class="form-group">
                <input type="file" name="pdfEscola" id="pdfEscola">
              </div>
              <div class="form-group" id="displayImgNoticia"></div>
              <button type="submit" id="btn-criar" name="submit" class="my-title">Adicionar</button>
              <img src="images/search.gif" id="loading-imageAdd" alt="A carregar...">
            </form>
       
           <form id="form-editar-noticia" action="db/editarEscolasCursos.php" method="POST" enctype="multipart/form-data">
              <div class="form-group">
                <input id="guardarID" name="id" style="display: none;">
                <select type="text" class="form-noticias form-control" id="txtNomeEscolaEdit" name="txtNomeEscolaEdit">
                </select>
              </div>
              <div class="form-group">
                <select class="form-noticias form-control" name="txtCursoEdit" id="txtCursoEdit">
                </select>
              </div>
              <div class="form-group">
                <input class="form-noticias form-control" name="txtLinkyoutubeEdit" id="txtLinkyoutubeEdit" placeholder="Linkyoutube"></input>
              </div>
              <div class="form-group">
                <input class="form-noticias form-control" name="txtLinkinscricaoEdit" id="txtLinkinscricaoEdit" placeholder="Linkinscricao"></input>
              </div>
              <button type="submit" id="btn-edit" name="submit" class="my-title">Editar informações</button>
              <img src="images/search.gif" id="loading-imageEdit" alt="A carregar...">
            </form>
        </div>
      </div>
	  
      <div class="row">
        <div class="col-12" style="margin: auto;">
            <a href="#" id="form-switch-adicionar" class="switch-forms"><i class="fas fa-plus-circle form-switch-icon"></i> Adicionar</a>
            <a href="#" id="form-switch-procurar" class="switch-forms"><i class="fas fa-search form-switch-icon"></i> Pesquisar</a>
            <div class="table-responsive-sm">
              <table class="table">
                <thead>
                  <tr class="table-top">
                    <th scope="col">Ano Letivo</th>
                    <th scope="col">Escola</th>
                    <th scope="col">Curso</th>
                    <th scope="col">Editar</th>
                    <th scope="col">Eliminar</th>
                  </tr>
                </thead>
                <tbody id="dados" class="table-content"></tbody>
              </table>
            </div>
        </div>
      </div>
    </div>

    <script>
      $(document).ready(function(){
      getEscolas();
      getCursos();
      var page = 1;
      function mostrarNoticias(txtPesquisa, anoLetivo){
        $('#loading-image').show();
        // Envia para o ficheiro getNoticias.php através do método POST os valores inseridos pelo utilizador na barra de pesquisa
        $.ajax({
          url: "db/getEscolasCursos.php",
          method: "POST",
          dataType: "text",
          data: {
            page:page,
            txtPesquisa:txtPesquisa,
            anoLetivo: anoLetivo
          }
          // Quando estiver feito, mostra os dados na div #dados
        }).done(function(returnedData){
          window.setTimeout(function() {
            $('#loading-image').hide();
            $("#dados").html(returnedData);
            $("#btn-pesquisar").attr("disabled", false);
          }, 800);
        });
      }
      $("#btn-pesquisar").on("click", function(e){
        // Desativa o default do botão
        e.preventDefault();
        // Vai buscar os valores de cada campo do formulário
        // var page = $("#page").text();
        let txtPesquisa = $("#txtPesquisar").val();
        let anoLetivo = $("#selAnoLetivo").val();
        page = 1;
        $("#page").text(page);
        $('#loading-image').show();
        mostrarNoticias(txtPesquisa, anoLetivo);
        $("#btn-pesquisar").attr("disabled", true);
      });

      $("#previousPage").on("click", function(e){
        // Desativa o default do botão
        e.preventDefault();
        if (page <= 1) {
        }else{
          page = (page - 1);
          var txtPesquisa = $("#txtPesquisar").val();
          mostrarNoticias(txtPesquisa);
          $("#page").text(page);
        }
      });

      $("#previousPage5").on("click", function(e){
        // Desativa o default do botão
        e.preventDefault();
        if (page <= 1){
        }else{
          page = 1;
          var txtPesquisa = $("#txtPesquisar").val();
          mostrarNoticias(txtPesquisa);
          $("#page").text(page);
        }
      });

      $("#nextPage").on("click", function(e){
        // Desativa o default do botão
        e.preventDefault();
        // Vai buscar os valores de cada campo do formulário
        var lastPg = $("#ultimaPag").text();
        if ((page + 1) > lastPg){
        }else{
          page = (page + 1);
          var txtPesquisa = $("#txtPesquisar").val();
          mostrarNoticias(txtPesquisa);
          $("#page").text(page);
        }
      });

      $("#nextPage5").on("click", function(e){
        // Desativa o default do botão
        e.preventDefault();
        // Vai buscar os valores de cada campo do formulário
          var lastPg = $("#ultimaPag").text();
          if (page != lastPg){
            page = lastPg;
            var txtPesquisa = $("#txtPesquisar").val();
            mostrarNoticias(txtPesquisa);
            $("#page").text(page);
          }else{

          }
      });

      // Quando o utilizador clicar no botão de criar noticia executa
      $("#btn-criar").on("click", function(e){
        var form = $('#form-criar-noticia')[0];
        var formData = new FormData(form);
        $('#loading-imageAdd').show();
        $.ajax({
                url         : 'db/criarEscolasCursos.php',     // redireciona para o PHP script
                dataType    : 'json',           // o que vai receber, se receber alguma coisa
                cache       : false,
                contentType : false,
                processData : false,
                type        : 'post',
                data        : formData,
        }).done(function(data){
          if (data.code == 200){
            $('#loading-imageAdd').hide();
            $("#btn-criar").attr("disabled", true);
            $(".display-error").removeClass("alert-danger");
            $(".display-error").addClass("alert-success");
            $(".display-error").html("<ul class='ulrebm'>"+data.msg+"</ul>");
            $(".display-error").css("display","block");
            window.setTimeout(function() {
              $(".display-error").css("display","none");
              window.location.reload();
            }, 800);
            $("#btn-criar").attr("disabled", false);
          } else {
            $('#loading-imageAdd').hide();
            $(".display-error").removeClass("alert-success");
            $(".display-error").addClass("alert-danger");
            $(".display-error").html("<ul class='ulrebm'>"+data.msg+"</ul>");
            $(".display-error").css("display","block");
            $("html, body").animate({ scrollTop: 0 }, "slow");
          }
        });
      });

      // Faz o swap do form de pesquisa para o de adicionar utilizador.
      $("#form-switch-adicionar").on("click", function(e){
        // Desativa o default do botão
        e.preventDefault();
        $('#form-pesquisa').hide(600);
        $('#form-editar-noticia').hide(600);
        $('#form-criar-noticia').show(1000);
        $('#form-switch-adicionar').hide(600);
        $('#form-switch-procurar').show(1000);
        $(".display-error").css("display","none");
        $('#loading-imageAdd').hide();
        $("html, body").animate({ scrollTop: 0 }, "slow");
      });

      // Caso o utilizador clique no botão de editar
      $(document).on("click", "td[name=edit-button]", function(e){
        // Desativa o default do botão
        e.preventDefault();
        // Vai buscar o ID do utilizador selecionado
        var id = $(this).attr('id');
        // Envia para o php de modificar utilizador o ID do utilizador selecionado
        $.ajax({
          url: "db/editarEscolasCursos.php",
          method: "GET",
          dataType: "json",
          data: {
            id:id
          }
          // Quando estiver feito, executa
        }).done(function(data){
          if (data.code == "200"){
            // Esconde e mostra elementos caso sejam necessários para esta parte
            $('#loading-imageEdit').hide();
            $(".display-error").css("display","none");
            $('#form-criar-noticia').hide(600);
            $('#form-switch-adicionar').hide(600);
            $('#form-switch-procurar').show(1000);
            $('#form-pesquisa').hide(600);
            $('#form-editar-noticia').show(1000);
            // Mostra todos os valores atribuidos à notícia que foi selecionada, nos campos de editar.
            $("#guardarID").val(data.id);
            $("#txtNomeEscola").val(data.nomeEscola);
            $("#txtNomeCurso").val(data.nomeCurso);
          } else {
            console.log("error");
          }
        });
        window.setTimeout(function() {
          $("html, body").animate({ scrollTop: 0 }, "slow");
        }, 700);
      });
	  
	  $('#btn-edit').on("click", function(e) {
        // Desativa o default do botão
        e.preventDefault();
        $('#loading-imageEdit').show();
        // Vai buscar os valores de cada campo do formulário
        var form = $('#form-editar-noticia')[0];
        var formData = new FormData(form);
        $.ajax({
                url         : 'db/editarEscolasCursos.php',     // redireciona para o PHP script
                dataType    : 'json',           // o que vai receber, se receber alguma coisa
                cache       : false,
                contentType : false,
                processData : false,
                type        : 'post',
                data        : formData,
        }).done(function(data){
          if (data.code == 200){
            $("#btn-edit").attr("disabled", true);
            $('#loading-imageEdit').hide();
            $(".display-error").removeClass("alert-danger");
            $(".display-error").addClass("alert-success");
            $(".display-error").html("<ul class='ulrebm'>"+data.msg+"</ul>");
            $(".display-error").css("display","block");
            $("html, body").animate({ scrollTop: 0 }, "slow");
            window.setTimeout(function() {
              $(".display-error").css("display","none");
              window.location.reload();
            }, 1250);
            $("#btn-edit").attr("disabled", false);
          } else {
            $('#loading-imageEdit').hide();
            $(".display-error").removeClass("alert-success");
            $(".display-error").addClass("alert-danger");
            $(".display-error").html("<ul class='ulrebm'>"+data.msg+"</ul>");
            $(".display-error").css("display","block");
            $("html, body").animate({ scrollTop: 0 }, "slow");
          }
        });
      });

      // Caso o utilizador clique num dos botões de eliminar notícia
      $(document).on("click", "td[name=delete-button]", function(e){
        // Desativa o default do botão
        e.preventDefault();
        // Mostra um alerta de confirmação no ecrã antes de eliminar a notícia
        if(confirm("Tem a certeza que deseja ELIMINAR esta informação?")){
          //var id = $(this).attr('id');
          var escola_id = $(this).attr('escola_id');
          var curso_id = $(this).attr('curso_id');
          var $tr = $(this).closest('tr');
          $.ajax({
            url: "db/removerEscolasCursos.php",
            method: "GET",
            dataType: "json",
            data: {
              //id:id
              escola_id:escola_id,
              curso_id:curso_id
            }
          // Quando estiver feito, executa
          }).done(function(data){
            if (data.code == "200"){
              $tr.css('background-color', '#ad1313');
              window.setTimeout(function() {
                $tr.fadeOut();
              }, 450);
            } else {
              alert("Não foi possível remover a informação em questão.");
            }
          });
        } else {
            return false;
        }
      });

      // Faz o swap do form de adicionar utilizador para o de pesquisa.
      $("#form-switch-procurar").on("click", function(e){
        // Desativa o default do botão
        e.preventDefault();
        $('#form-criar-noticia').hide(600);
        $('#form-editar-noticia').hide(600);
        $('#form-pesquisa').show(1000);
        $('#form-switch-procurar').hide(600);
        $('#form-switch-adicionar').show(1000);
        $(".display-error").css("display","none");
        $('#loading-image').hide();
        $("html, body").animate({ scrollTop: 0 }, "slow");
      });
      mostrarNoticias("");
    });

    function getEscolas(){
        let url = 'db/gerirOfertaFormativa.php?getEscolas=1';
            $.post(url, function(data)
            {      
                let arr = JSON.parse(data);
                for(let i = 0; i<arr.length; i++)
                {
                  
                  $('#txtNomeEscola').append(`<option value="`+arr[i].id+`">`+arr[i].nome+`</option>`); 
                  
                }
            });            
      }

      function getCursos(){
        let url = 'db/gerirOfertaFormativa.php?getSelectCursos=1';
            $.post(url, function(data)
            {      
                let arr = JSON.parse(data);
                for(let i = 0; i<arr.length; i++)
                {
                  
                  $('#txtNomeCurso').append(`<option value="`+arr[i].id+`">`+arr[i].nome+`</option>`); 
                  
                }
            });            
      }
    </script>
    
  </body>
</html>
