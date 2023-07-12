<?php
session_start();
if(!isset($_SESSION['idTipoDePermissao'])){
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

    <style media="screen">
    #loading-image{
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
          <div class="perfil-icon"><i class="far fa-address-card"></i></div>
          <h1 class="my-title"><span class="green-text">PERFIL</span></h1>
        </div>
      </div>
      <div class="row">
        <div class="col-8" style="margin: auto;">
          <label class="alert alert-danger display-error"></label>
          <form id="form-perfil" action="db/alterarPerfil.php" method="POST" enctype="multipart/form-data">

            <p class="my-title">Tipo de Utilizador: <span class="green-text" id="nomePermissao"></span></p>
            <p class="my-title">Projeto: <span class="green-text" id="nomeProjeto"></span></p>

            <div class="form-group">
              <input type="text" class="form-control" id="txtNome" name="txtNome" placeholder="Instituição">
            </div>

            <div class="form-group">
              <input type="email" class="form-control" id="txtEmail" name="txtEmail" placeholder="Email">
            </div>

            <div class="form-group">
              <input type="password" class="form-control" id="txtPasswordAtual" name="txtPasswordAtual" placeholder="Password atual">
            </div>
            <label for="txtNovaPassword">Preencha os últimos dois campos apenas se deseja mudar a sua password.</label>
            <div class="form-group">
              <input type="password" class="form-control" id="txtNovaPassword" name="txtNovaPassword" placeholder="Nova password">
            </div>

            <div class="form-group">
              <input type="password" class="form-control" id="txtNovaPassword2" name="txtNovaPassword2" placeholder="Confirmar password">
              <button type="submit" id="btn-edit" name="submit" class="my-title">Guardar</button>
              <img src="images/search.gif" id="loading-image" class="loading-img" alt="A carregar...">
            </div>
          </form>
        </div>
      </div>
    </div>
    <?php include_once("footer.php");?>
    <script>
      $(document).ready(function(){
        var inicio = true;
        mostrarInfo();

        function mostrarInfo(){
          // Envia para o ficheiro getPerfil.php através do método GET, que por sua vez vai devolver os membros da BD
          $.ajax({
            url: "db/getPerfil.php",
            method: "GET",
            dataType: "json",
            data: {
              inicio:inicio
            }
            // mostra os dados no form de perfil
          }).done(function(data){
            if(data.code == 200){
              $("#nomePermissao").text(data.permissao);
              $("#nomeProjeto").text(data.projeto);
              $("#txtNome").val(data.nome);
              $("#txtEmail").val(data.email);
            }else{
              $(".display-error").removeClass("alert-success");
              $(".display-error").addClass("alert-danger");
              $(".display-error").html("<ul class='ulrebm'>"+data.msg+"</ul>");
              $(".display-error").css("display","block");
            }
          });
        }

        $("#btn-edit").on("click", function(e){
          e.preventDefault();
          var txtNome = $("#txtNome").val();
          var txtEmail = $("#txtEmail").val();
          var txtPasswordAtual = $("#txtPasswordAtual").val();
          var txtNovaPassword = $("#txtNovaPassword").val();
          var txtNovaPassword2 = $("#txtNovaPassword2").val();
          $.ajax({
            url: "db/editarPerfil.php",
            method: "POST",
            dataType: "json",
            data: {
              txtNome:txtNome,
              txtEmail:txtEmail,
              txtPasswordAtual:txtPasswordAtual,
              txtNovaPassword:txtNovaPassword,
              txtNovaPassword2:txtNovaPassword2
            }
          }).done(function(data){
            if(data.code == 200){
              $(".display-error").removeClass("alert-danger");
              $(".display-error").addClass("alert-success");
              $(".display-error").html("<ul class='ulrebm'>"+data.msg+"</ul>");
              $(".display-error").css("display","block");
              window.setTimeout(function() {
                $(".display-error").css("display","none");
                mostrarInfo();
              }, 1050);
              // alert(data.editarNome + " " + data.editarEmail + " " + data.mudarPassword);

            }else{
              $(".display-error").removeClass("alert-success");
              $(".display-error").addClass("alert-danger");
              $(".display-error").html("<ul class='ulrebm'>"+data.msg+"</ul>");
              $(".display-error").css("display","block");
            }
          });
        });

      });
    </script>
  </body>
</html>
