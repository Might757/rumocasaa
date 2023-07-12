<?php
  session_start();
  if(!isset($_SESSION['idTipoDePermissao'])){
    echo "<script>window.location.replace('index.php');</script>";

  }else if($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2){
    //ok
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
          <h1 class="my-title">GERIR <span class="green-text">Entidades & CURSOS</span></h1>
        </div>
      </div>

      <div class="row">
        <div class="col-8" style="margin: auto;">
          <div class="col-12" style="margin: auto;">
            <label class="form-noticias alert alert-danger display-error">
            <?php
              if ( isset($_GET['msg']) ){
                echo $_GET['msg'];
                echo "<script>
                  $('#btn-criar').attr('disabled', true);
                  $('.display-error').removeClass('alert-danger');
                  $('.display-error').addClass('alert-success');
                  $('.display-error').css('display','block');
                  window.setTimeout(function() {
                    $('.display-error').css('display','none');
                    window.location='gerirEntidadesCursosAdultos.php';
                  }, 1000);
                </script>";
              }
            ?>
            </label>
            <form id="form-pesquisa" action="db/getEscolasCursos.php" method="POST">
              <div class="form-row">
                <div class="form-group col-12">
                  <input type="text" class="form-control" id="txtPesquisar" name="txtPesquisar" placeholder="Palavra-chave (nome da escola)">
                  <button type="submit" class="btn-pesquisar my-title" id="btn-pesquisar">Pesquisar</button>
                  <img src="images/search.gif" id="loading-image" alt="A carregar...">
                </div>
              </div>
            </form>
          </div>

            <form id="form-criar-noticia" action="db/associarEntidadeCursoAdultos.php" method="POST" enctype="multipart/form-data" >
              <div class="form-group">
                <input id="guardarID" name="id" style="display: none;">
              </div>
              <div class="form-group">
                <select class="form-noticias form-control" name="txtNomeEscola" id="txtNomeEscola">
                </select>
              </div>
              <div class="form-group">
                <select class="form-noticias form-control" name="txtNomeCurso" id="txtNomeCurso">
                </select>
              </div>          
              <div class="form-group">
                <textarea class="form-noticias form-control" name="txtInfo" id="txtInfo" placeholder="Informação sobre a formação" maxlength="5000"></textarea>
              </div>
              <div class="form-group">
                <input type="text" class="form-noticias form-control" name="linkInscricao" id="linkInscricao" placeholder="Link para Inscrição">
              </div>
              <div class="form-group">
                <input type="file" name="pdfEscola" id="pdfEscola">
              </div>
              <div class="form-group" id="displayImgNoticia"></div>    
              <button type="submit" id="btn-criar" name="submit" class="my-title">Adicionar</button>
              <img src="images/search.gif" id="loading-imageAdd" alt="A carregar...">
            </form>

            <div style='display:none' id="form-editar-entidade-curso">
              <form id="formEditEntidadeCurso">
                <div class="form-group">
                  <input type='hidden' id="guardarEditIdCurso" name="guardarEditIdCurso" />
                  <input type='hidden' id="guardarEditIdEntidade" name="guardarEditIdEntidade"/>
                </div>
                <div class="form-group">
                  <input type="text" class="form-noticias form-control" name="curso" id="curso" placeholder="Curso" disabled>
                </div>
                <div class="form-group">
                  <input type="text" class="form-noticias form-control" name="entidade" id="entidade" placeholder="Curso" disabled>
                </div>          
                <div class="form-group">
                  <textarea class="form-noticias form-control" name="txtEditInfo" id="txtEditInfo" placeholder="Informação sobre a formação" maxlength="5000"></textarea>
                </div>
                <div class="form-group">
                  <input type="text" class="form-noticias form-control" name="linkEditInscricao" id="linkEditInscricao" placeholder="Link para Inscrição">
                </div>
                <input type="button" id="btn-editar" name="submit" class="my-title" value='Editar' />
                <img src="images/search.gif" id="loading-imageEdit" alt="A carregar...">
              </form>

              <form id='formSendFile'>         
                <hr/>              
                <div class="form-group">
                    <div id='divFile'></div>
                    <input type='hidden' id="File_IdCurso" name='File_IdCurso' >
                    <input type='hidden' id="File_IdEntidade" name="File_IdEntidade">   
                    <input type="file" name="pdfEditEscola" id="pdfEditEscola">
                    <br/>
                    <br/>
                    <input type="button" id="btnSendNewFile" name="btnSendNewFile" class="my-title btSendNewFile" value='Enviar novo Ficheiro' />
                </div>
            </form>
           </div>
          
            
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
                    <th scope="col">Entidade</th>
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
      function mostrarNoticias(txtPesquisa){
        $('#loading-image').show();
        // Envia para o ficheiro getNoticias.php através do método POST os valores inseridos pelo utilizador na barra de pesquisa
        $.ajax({
          url: "db/getEntidadesCursosAdultos.php",
          method: "POST",
          dataType: "text",
          data: {
            page:page,
            txtPesquisa:txtPesquisa
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
        var txtPesquisa = $("#txtPesquisar").val();
        page = 1;
        $("#page").text(page);
        $('#loading-image').show();
        mostrarNoticias(txtPesquisa);
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
                url         : 'db/associarEntidadeCursoAdultos.php',     // redireciona para o PHP script
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

      // Faz o swap do form de pesquisa para o de adicionar 
      $("#form-switch-adicionar").on("click", function(e){
        // Desativa o default do botão
        e.preventDefault();
        $('#form-pesquisa').hide(600);
        $('#form-editar-entidade-curso').hide(600);
        $('#form-criar-noticia').show(1000);
        $('#form-switch-adicionar').hide(600);
        $('#form-switch-procurar').show(1000);
        $(".display-error").css("display","none");
        $('#loading-imageAdd').hide();
        $("html, body").animate({ scrollTop: 0 }, "slow");
      });

      // Caso o utilizador clique no botão de editar na tabela
      $(document).on("click", "td[name=edit-button]", function(e){
          // Desativa o default do botão
        e.preventDefault();
        // Vai buscar o ID do utilizador selecionado
        let idCurso = $(this).attr('curso_id');
        let idEntidade = $(this).attr('entidade_id');
        // Envia para o php de modificar utilizador o ID do utilizador selecionado
        $.ajax({
          url: "db/adultos_getEntidadeCurso.php",
          method: "POST",
          dataType: "json",
          data: {
            idCurso:idCurso,
            idEntidade:idEntidade
          }
          // Quando estiver feito, executa
        }).done(function(data){          
          data = data[0];
          if (data.idCurso != null){
            // Esconde e mostra elementos caso sejam necessários para esta parte
            
            $('#form-pesquisa').hide(600);            
            $('#form-criar-noticia').hide(1000);
            $('#form-switch-adicionar').hide(1000);
            $('#form-switch-procurar').hide(1000);            
            $(".display-error").css("display","none");
            $('#loading-imageEdit').hide();
            $('#form-editar-entidade-curso').show(600);

            $("html, body").animate({ scrollTop: 0 }, "slow");
            // Mostra todos os valores atribuidos à escola que foi selecionada, nos campos de editar.
            $("#guardarEditIdCurso").val(data.idCurso);
            $("#File_IdCurso").val(data.idCurso);
            $("#guardarEditIdEntidade").val(data.idEntidade);
            $("#File_IdEntidade").val(data.idEntidade);
            $("#curso").val(data.nome);
            $("#entidade").val(data.entidade);
            $("#txtEditInfo").val(data.info);
            $("#linkEditInscricao").val(data.link);
            if ( data.filename != null ){
              let _html = "<a target='_blank' href='formacoesAdultosPDFs/"+data.filename+"'>"+data.filename+"</a>";
              _html+="&nbsp;&nbsp;";
              _html+="<input type='button' value='Apagar Ficheiro' idCurso="+idCurso+" class='btDeleteFile' idEntidade="+idEntidade+" id='btDeleteFile'/>";
              $("#divFile").html(_html);
            }else{
              $("#divFile").html("");
            }
            
            

          } else {
            console.log("error");
          }
        });
        window.setTimeout(function() {
          $("html, body").animate({ scrollTop: 0 }, "slow");
        }, 700);
      });

      $(document).on("click", "input[class=btDeleteFile]",function(e){
        if(confirm("Deseja apagar o ficheiro?")){
          let idEntidade = $(this).attr('idEntidade');
          let idCurso = $(this).attr('idCurso');
          $.ajax({
            url: "db/adultos_apagarFicheiroEntidadeCurso.php",
            method: "GET",
            dataType: "json",
            data: {
              idEntidade:idEntidade,
              idCurso:idCurso
            }
          }).done(function(data){
            if (data != "-1"){
              $("#divFile").html("");
              alert("Ficheiro eliminado com sucesso");              
            } else {
              alert("Erro: tente novamente ou contacte o administrador da plataforma");
            }
          });
        }
      });

      //clique no botão de editar
      $(document).on("click", "input[id=btn-editar]", function(e){
        let form = $('#formEditEntidadeCurso')[0];
        let formData = new FormData(form);
        $('#loading-imageAdd').show();
        $.ajax({
                url         : 'db/adultos_editarEntidadeCurso.php',     // redireciona para o PHP script
                dataType    : 'json',           // o que vai receber, se receber alguma coisa
                cache       : false,
                contentType : false,
                processData : false,
                type        : 'post',
                data        : formData,
        }).done(function(data){
          if (data == 1){
            alert('Edição efetuada com sucesso');
          }else{
            alert("Erro ao tentar editar o registo - tente novamente");
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
          var entidade_id = $(this).attr('entidade_id');
          var curso_id = $(this).attr('curso_id');
          var $tr = $(this).closest('tr');
         
          $.ajax({
            url: "db/removerEntidadeCursoAdultos.php",
            method: "GET",
            dataType: "json",
            data: {
              //id:id
              entidade_id:entidade_id,
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

      //enviar ficheiro em registo que já existe
      $(document).on("click","input[id=btnSendNewFile]", function(e){
        let form = $('#formSendFile')[0];
        let formData = new FormData(form);
        $('#loading-imageAdd').show();        
        $.ajax({
          url         : 'db/adultos_substituirFicheiroEntidadeCurso.php',     // redireciona para o PHP script
          dataType    : 'json',           // o que vai receber, se receber alguma coisa
          cache       : false,
          contentType : false,
          processData : false,
          type        : 'post',
          data        : formData,
        }).done(function(data){
          if (data == 1){
            alert('Ficheiro enviado com sucesso');                        
            window.location.reload();
          }else{
            alert(data);
          }
        });
        
      });

      // Faz o swap do form de adicionar utilizador para o de pesquisa.
      $("#form-switch-procurar").on("click", function(e){
        // Desativa o default do botão
        e.preventDefault();
        $('#form-criar-noticia').hide(600);
        $('#form-editar-entidade-curso').hide(600);
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
        let url = 'db/gerirOfertaFormativa.php?getEntidades=1';
            $.post(url, function(data)
            {      
                let arr = JSON.parse(data);
                for(let i = 0; i<arr.length; i++)
                {                  
                  $('#txtNomeEscola').append(`<option value="`+arr[i].id+`" selected>`+arr[i].entidade+`</option>`);                   
                }
            });            
      }

      function getCursos(){
        let url = 'db/gerirOfertaFormativa.php?getEntidadesCursosAdultos=1';
            $.post(url, function(data)
            {      
                let arr = JSON.parse(data);
                for(let i = 0; i<arr.length; i++)
                {                  
                  $('#txtNomeCurso').append(`<option value="`+arr[i].id+`" selected>`+arr[i].nome+`</option>`);                   
                }
            });            
      }
      
    </script>
    
  </body>
</html>
