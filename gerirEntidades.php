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
          <h1 class="my-title">GERIR <span class="green-text">Entidades</span></h1>
        </div>
      </div>

      <div class="row">
        <div class="col-8" style="margin: auto;">
          <div class="col-12" style="margin: auto;">
            <label class="form-noticias alert alert-danger display-error"></label>
            <form id="form-pesquisa" action="db/adultos_getEntidades.php" method="POST">
              <div class="form-row">
                <div class="form-group col-12">
                  <input type="text" class="form-control" id="txtPesquisar" name="txtPesquisar" placeholder="Palavra-chave (nome da instituição)">
                  <button type="submit" class="btn-pesquisar my-title" id="btn-pesquisar">Pesquisar entidades</button>
                  <img src="images/search.gif" id="loading-image" alt="A carregar...">
                </div>
              </div>
            </form>
          </div>

            <form style='display:none' id="form-criar-entidade">
            <div class="form-group">
                <input type="text" class="form-noticias form-control" name="txtNomeEntidade" id="txtNomeEntidade" placeholder="Nome da Instituição">
              </div>
              <div class="form-group">
                <input class="form-noticias form-control" name="txtMorada" id="txtMorada" placeholder="Morada"></input>
              </div>
              <div class="form-group">
                <input class="form-noticias form-control" type="number" name="txtTelefone" id="txtTelefone" placeholder="Telefone"></input>
              </div>
              <div class="form-group">
                <input class="form-noticias form-control" name="txtEmail" id="txtEmail" placeholder="Email"></input>
              </div>
              <div class="form-group">
                <input class="form-noticias form-control" name="txtLink" id="txtLink" placeholder="Link"></input>
              </div>
              <div class="form-group">
                <input class="form-noticias form-control" name="txtLatitude" id="txtLatitude" placeholder="Latitude"></input>
              </div>
              <div class="form-group">
                <input class="form-noticias form-control" name="txtLongitude" id="txtLongitude" placeholder="Longitude"></input>
              </div>
              <button type="submit" id="btn-criar" name="submit" class="my-title">Adicionar Instituição</button>
              <img src="images/search.gif" id="loading-imageAdd" alt="A carregar...">
            </form>

            <form style='display:none' id="form-editar-entidade" >
              <div class="form-group">
                <input id="guardarID" name="id" style="display: none;">
                <input type="text" class="form-noticias form-control" name="txtNomeEntidadeEdit" id="txtNomeEntidadeEdit" placeholder="Nome da Entidade">
              </div>
              <div class="form-group">
                <input class="form-noticias form-control" name="txtMoradaEdit" id="txtMoradaEdit" placeholder="Morada"></input>
              </div>
              <div class="form-group">
                <input class="form-noticias form-control" type="number" max=9 min=9 name="txtTelefoneEdit" id="txtTelefoneEdit" placeholder="Telefone"></input>
              </div>
              <div class="form-group">
                <input class="form-noticias form-control" name="txtEmailEdit" id="txtEmailEdit" placeholder="Email"></input>
              </div>
              <div class="form-group">
                <input class="form-noticias form-control" name="txtLinkEdit" id="txtLinkEdit" placeholder="Link"></input>
              </div>
              <div class="form-group">
                <input class="form-noticias form-control" name="txtLatitudeEdit" id="txtLatitudeEdit" placeholder="Latitude"></input>
              </div>
              <div class="form-group">
                <input class="form-noticias form-control" name="txtLongitudeEdit" id="txtLongitudeEdit" placeholder="Longitude"></input>
              </div>
              <button type="submit" id="btn-edit" name="submit" class="my-title">Editar Instituição</button>
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
                    <th scope="col">Nome</th>
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
          
      var page = 1;
      function mostrarEntidades(txtPesquisa){
        $('#loading-image').show();
        // Envia para o ficheiro getNoticias.php através do método POST os valores inseridos pelo utilizador na barra de pesquisa
        $.ajax({
          url: "db/adultos_getEntidades.php",
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
        mostrarEntidades(txtPesquisa);
        $("#btn-pesquisar").attr("disabled", true);
      });

      $("#previousPage").on("click", function(e){
        // Desativa o default do botão
        e.preventDefault();
        if (page <= 1) {
        }else{
          page = (page - 1);
          var txtPesquisa = $("#txtPesquisar").val();
          mostrarEntidades(txtPesquisa);
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
          mostrarEntidades(txtPesquisa);
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
          mostrarEntidades(txtPesquisa);
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
            mostrarEntidades(txtPesquisa);
            $("#page").text(page);
          }else{

          }
      });

      // Quando o utilizador clicar no botão de criar entidade
      $("#btn-criar").on("click", function(e){
        e.preventDefault();
        var form = $('#form-criar-entidade')[0];
        var formData = new FormData(form);
        $('#loading-imageAdd').show();
        $.ajax({
                url         : 'db/adultos_criarEntidade.php',     // redireciona para o PHP script
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
            }, 1250);
            
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
        $('#form-editar-entidade').hide(600);
        $('#form-criar-entidade').show(1000);
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
        var id = $(this).attr('id');
        // Envia para o php de modificar utilizador o ID do utilizador selecionado
        $.ajax({
          url: "db/adultos_editarEntidade.php",
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
            $('#form-criar-entidade').hide(600);
            $('#form-switch-adicionar').hide(600);
            $('#form-switch-procurar').show(1000);
            $('#form-pesquisa').hide(600);
            $('#form-editar-entidade').show(1000);
            // Mostra todos os valores atribuidos à escola que foi selecionada, nos campos de editar.
            $("#guardarID").val(data.id);
            $("#txtNomeEntidadeEdit").val(data.nome);
            $("#txtMoradaEdit").val(data.morada);
            $("#txtTelefoneEdit").val(data.telefone);
            $("#txtEmailEdit").val(data.email);
            $("#txtLinkEdit").val(data.link);
            $("#txtLatitudeEdit").val(data.latitude);
            $("#txtLongitudeEdit").val(data.longitude);

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
        var form = $('#form-editar-entidade')[0];
        var formData = new FormData(form);
        $.ajax({
                url         : 'db/adultos_editarEntidade.php',     // redireciona para o PHP script
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

      // Caso o utilizador clique num dos botões de eliminar entidade
      $(document).on("click", "td[name=delete-button]", function(e){
        // Desativa o default do botão
        e.preventDefault();
        // Mostra um alerta de confirmação no ecrã antes de eliminar a notícia
        if(confirm("Tem a certeza que deseja ELIMINAR esta Entidade?")){
          var id = $(this).attr('id');
          var $tr = $(this).closest('tr');
          $.ajax({
            url: "db/adultos_removerEntidade.php",
            method: "GET",
            dataType: "json",
            data: {
              id:id
            }
          // Quando estiver feito, executa
          }).done(function(data){
            console.log(data);
            if (data.code == "200"){
              $tr.css('background-color', '#ad1313');
              window.setTimeout(function() {
                $tr.fadeOut();
              }, 450);
            } else if (data.code == "201"){
              alert("Não foi possível remover a informação em questão - tem cursos associados.");
            } else {
              alert("Não foi possível remover a entidade em questão.");
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
        $('#form-criar-entidade').hide(600);
        $('#form-editar-entidade').hide(600);
        $('#form-pesquisa').show(1000);
        $('#form-switch-procurar').hide(600);
        $('#form-switch-adicionar').show(1000);
        $(".display-error").css("display","none");
        $('#loading-image').hide();
        $("html, body").animate({ scrollTop: 0 }, "slow");
      });

      mostrarEntidades("");
      
    });
    </script>
    
  </body>
</html>
