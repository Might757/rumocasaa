<?php
session_start();
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

    <style media="screen">
    .img-logo-membro{
      margin-left: 20%;
      width: 60%;
      height: 80%;
    }
    #form-switch-gerir{
      margin-left:82%;
      font-size: 116%;
      color:#111111;
    }

    #form-switch-sair{
      margin-left: 94%;
      font-size: 198%;
      color:#111111;
    }

    #form-criar-membro, #form-editar-membro, #form-switch-sair, #tabela, .loading-img{
      display: none;
    }
    </style>
  </head>

  <body>
    <?php include_once("navbar.php");?>

    <div class="container">
      <!-- Header -->
      <div class="row py-4">
        <div class="col-md-12 text-center main-title">
          <div class="membros-icon"><i class="fas fa-hands-helping"></i></div>
          <h1 class="my-title">MEMBROS DA REDE</span></h1>
        </div>
      </div>
      <?php
        if (isset($_SESSION['idTipoDePermissao'])){
          if ($_SESSION['idTipoDePermissao'] == 1) {
            echo '<div class="row">
                    <div class="col-md-12">
                      <a href="#" id="form-switch-gerir" class="switch-forms"><i class="fas fa-users form-switch-icon"></i> Gestão de Membros</a>
                    </div>
                  </div>';
          }
        }
      ?>
      <a href="#" id="form-switch-sair" class="switch-forms"><i class="far fa-times-circle form-switch-icon"></i></a>
      <div class="row">
        <div class="col-8" style="margin: auto;">
          <label class="alert alert-danger display-error"></label>
          <form id="form-criar-membro" action="db/criarMembro.php" method="POST" enctype="multipart/form-data">
            <div class="form-group">
              <input type="text" class="form-control" name="txtNome" placeholder="Nome">
            </div>
            <label for="txtLink"><h6>Preencha o campo de link apenas se deseja associar um link ao logotipo</h6></label>
            <div class="form-group ">
              <input type="text" class="form-control" name="txtLink" placeholder="http://www.empregabilidadebm.pt">
            </div>
            <div class="form-group">
              <input type="file" name="imgMembro" id="imgMembro">
            </div>
            <button type="submit" id="btn-criar" name="submit" class="my-title">Criar Membro</button>
            <img src="images/search.gif" id="loading-imageAdd" class="loading-img" alt="A carregar...">
          </form>

          <form id="form-editar-membro" action="db/editarMembro.php" method="POST" enctype="multipart/form-data">
            <div class="form-group">
              <input id="guardarID" name="id" style="display: none;">
              <input type="text" class="form-control" name="txtNomeEdit" id="txtNomeEdit" placeholder="Nome">
            </div>
            <label for="txtLinkEdit">Preencha o campo de link apenas se deseja associar um link ao logotipo.</label>
            <div class="form-group ">
              <input type="text" class="form-control" name="txtLinkEdit"  id="txtLinkEdit" placeholder="https://www.empregabilidadebm.pt">
            </div>
            <div class="form-group" id="displayLogotipo"></div>
            <div class="form-group">
              <input type="file" name="imgMembroEdit" id="imgMembroEdit">
            </div>
            <button type="submit" id="btn-edit" name="submit" class="my-title">Editar membro</button>
            <img src="images/search.gif" id="loading-imageEdit" class="loading-img" alt="A carregar...">
          </form>
        </div>
      </div>

      <div class="row">
        <div class="col-12" style="margin: auto;">
            <div class="table-responsive-sm" id="tabela">
              <table class="table">
                <thead>
                  <tr class="table-top">
                    <th scope="col">Nome</th>
                    <th scope="col">Link</th>
                    <th scope="col">Imagem</th>
                    <th scope="col">Editar</th>
                    <th scope="col">Eliminar</th>
                  </tr>
                </thead>
                <tbody id="dados" class="table-content"></tbody>
              </table>
            </div>
        </div>
      </div>
      <!-- Zona dos logotipos -->
      <div class="row" id="membros-content">
      </div>
    </div>
    <?php include_once("footer.php");?>
    <script>
      $(document).ready(function(){
        mostrarMembros();
        function mostrarMembros(){
          var inicio = true;
          // Envia para o ficheiro getMembros.php através do método GET, que por sua vez vai devolver os membros da BD
          $.ajax({
            url: "db/getMembros.php",
            method: "GET",
            dataType: "text",
            data: {
              inicio:inicio
            }
            // Quando estiver feito, mostra os dados na div #dados
          }).done(function(returnedData){
              $("#membros-content").html(returnedData);
          });
        }

        function mostrarMembrosTable(){
          var table = true;
          // Envia para o ficheiro getMembros.php através do método POST
          $.ajax({
            url: "db/getMembros.php",
            method: "GET",
            dataType: "text",
            data: {
              table:table
            }
            // Quando estiver feito, mostra os dados na div #dados
          }).done(function(returnedData){
              $("#dados").html(returnedData);
          });
        }

        $("#form-switch-gerir").on("click", function(e){
          // Desativa o default do botão
          e.preventDefault();
          $('#form-editar-membro').hide(600);
          $('#form-criar-membro').hide(600);
          $('#form-switch-gerir').hide(50);
          $('#tabela').show(1200);
          window.setTimeout(function() {
            mostrarMembrosTable();
          }, 600);
          $('#form-switch-sair').show(1000);
          $('#form-criar-membro').show(1000);
          $(".display-error").css("display","none");
        });


        $("#form-switch-sair").on("click", function(e){
          // Desativa o default do botão
          e.preventDefault();
          mostrarMembros();
          $('#form-editar-membro').hide(600);
          $('#form-criar-membro').hide(600);
          $('#form-switch-sair').hide(600);
          $('#form-switch-criar').hide(600);
          $('#tabela').hide(600);
          $(".display-error").css("display","none");
          $('#form-switch-gerir').show(1000);
        });

        $("#btn-criar").on("click", function(e){
          var form = $('#form-criar-membro')[0];
          var formData = new FormData(form);
          $('#loading-imageAdd').show();
          $.ajax({
                  url         : 'db/criarMembro.php',     // redireciona para o PHP script
                  dataType    : 'json',                   // o que vai receber, se receber alguma coisa
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
                $("#btn-criar").attr("disabled", false);
                $(".display-error").css("display","none");
                window.location.reload();
              }, 1550);
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

        // Caso o utilizador clique no botão de editar
        $(document).on("click", "td[name=edit-button]", function(e){
          // Desativa o default do botão
          e.preventDefault();
          // Vai buscar o ID do utilizador selecionado
          var id = $(this).attr('id');
          // Envia para o php de modificar utilizador o ID do utilizador selecionado
          $.ajax({
            url: "db/editarMembro.php",
            method: "GET",
            dataType: "json",
            data: {
              id:id
            }
            // Quando estiver feito, executa
          }).done(function(data){
            if (data.code == "200"){
              // Esconde e mostra elementos caso sejam necessários para esta parte
              $(".display-error").css("display","none");
              $('#form-criar-membro').hide(600);
              $('#form-editar-membro').show(1000);
              // Mostra todos os valores atribuidos ao membro que foi selecionada, nos campos de editar.
              $("#displayLogotipo").html(data.logotipo);
              $("#guardarID").val(data.id);
              $("#txtNomeEdit").val(data.nome);
              $("#txtLinkEdit").val(data.link);
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
          $('#loading-imageEdit').show(0);
          // Vai buscar os valores de cada campo do formulário
          var form = $('#form-editar-membro')[0];
          var formData = new FormData(form);
          $.ajax({
                  url         : 'db/editarMembro.php',     // redireciona para o PHP script
                  dataType    : 'json',           // o que vai receber, se receber alguma coisa
                  cache       : false,
                  contentType : false,
                  processData : false,
                  type        : 'post',
                  data        : formData,
          }).done(function(data){
            if (data.code == 200){
              $("#btn-edit").attr("disabled", true);
              $(".display-error").removeClass("alert-danger");
              $(".display-error").addClass("alert-success");
              $(".display-error").html("<ul class='ulrebm'>"+data.msg+"</ul>");
              $(".display-error").css("display","block");
              window.setTimeout(function() {
                $("#btn-edit").attr("disabled", false);
                $(".display-error").css("display","none");
                window.location.reload();
              }, 1550);
            }else{
              $(".display-error").removeClass("alert-success");
              $(".display-error").addClass("alert-danger");
              $(".display-error").html("<ul class='ulrebm'>"+data.msg+"</ul>");
              $(".display-error").css("display","block");
            }
            $("html, body").animate({ scrollTop: 0 }, "slow");
          });
        });

        // Caso o utilizador clique num dos botões de eliminar notícia
        $(document).on("click", "td[name=delete-button]", function(e){
          // Desativa o default do botão
          e.preventDefault();
          // Mostra um alerta de confirmação no ecrã antes de eliminar a notícia
          if(confirm("Tem a certeza que deseja ELIMINAR este membro?")){
            var id = $(this).attr('id');
            var $tr = $(this).closest('tr');
            $.ajax({
              url: "db/removerMembro.php",
              method: "GET",
              dataType: "json",
              data: {
                id:id
              }
            // Quando estiver feito, executa
            }).done(function(data){
              if (data.code == "200"){
                $tr.css('background-color', '#ad1313');
                window.setTimeout(function() {
                  $tr.fadeOut();
                }, 450);
              } else {
                alert("Não foi possível remover o membro em questão.");
              }
            });
          } else {
              return false;
          }
        });

      });
    </script>
  </body>
</html>
