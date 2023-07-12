<?php
  session_start();
  if(isset($_SESSION['email']))
    echo "<script>window.location='index.php';</script>";
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
     
      <!-- News section -->
      <div class="row">
        <!-- Latest news -->
        <div class="col-md-12">
        <center>
        <br/><br/>
        <p class="form-message-error" id="form-message"></p>
        <form id="formLogin" >
            <fieldset id="inputs">
            <div class="form-group">
                <input id="txtEmail" type="email" name="txtEmail" placeholder="Email" maxlength="50" required>
            </div>
            <input id="txtPassword" type="password" name="txtPassword" placeholder="Password" maxlength="100" required>
            </fieldset>
            <fieldset id="actions">
            <input type="submit" name="submit" id="submit" value="Login"/>
            </fieldset>
        </form>
        </center>
        </div>
      

        <!-- Search news end-->
      </div>
      <!-- News section end -->
    </div>
    <?php include_once("footer.php");?>
    <script>
      $(document).ready(function(){
        // Quando o utilizador clicar no botão de pesquisar executa
        $("#btn-pesquisar").on("click", function(e){
          // Desativa o default do botão
          e.preventDefault();
          $('#loading-imageInicio').show();
          // Vai buscar os valores de cada campo do formulário
          var txtPesquisa = $("#txtPesquisa").val();
          // Envia para o ficheiro
          $.ajax({
            url: "db/getNoticiasInicial.php",
            method: "POST",
            dataType: "text",
            data: {
              txtPesquisa:txtPesquisa,
            }
            // Quando estiver feito, mostra os dados na div #noticiasDireita
          }).done(function(returnedData){
            window.setTimeout(function() {
              $('#loading-imageInicio').hide();
              $("#noticiasDireita").html(returnedData);
              $("#noticiasDireita, body").animate({ scrollTop: 0 }, "slow");
            }, 800);
          })
        });

        $('#txtPesquisa').keypress(function(e){
          if(e.which == 13){
            $('#btn-pesquisar').click();
          }
        });
      });
  </script>


<!--script para modal -->
  <script type="text/javascript">
    $(window).on('load',function(){
        $('#modalFDL').modal('show');
    });
  </script>
  </body>
</html>
