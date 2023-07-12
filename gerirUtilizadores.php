<?php
   session_start();
   if(!isset($_SESSION['idTipoDePermissao'])){
     echo "<script>window.location.replace('index.php');</script>";
   }else if($_SESSION['idTipoDePermissao'] != 1){
     echo "<script>window.location.replace('index.php');</script>";
   }else{
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
          <div class="membros-icon"><i class="fas fa-users-cog"></i></div>
          <h1 class="my-title">GERIR <span class="green-text">UTILIZADORES</span></h1>
        </div>
      </div>

      <div class="row">
        <div class="col-12">
          <div class="col-sm-8 col-md-8 col-lg-6" style="margin: auto;">
            <!-- Formulário de pesquisa -->
            <form id="form-pesquisa" action="db/getUtilizadores.php" method="POST">
              <div class="form-row">
                <!-- Select front office -->
                <div class="form-group col-12">
                  <select id="selectFrontOffice" name="selectFrontOffice" class="form-control">
                     <option value="0" selected>Projeto</option>
                        <?php   include_once("db/dataAccess.php");
                        $da = new dataAccess();
                        $res = $da->getFrontOffices();
                        while($row=mysqli_fetch_assoc($res)){
                          echo "<option value='" . $row['id'] . "'>" . $row['nome'] . "</option>";
                        }
                        ?>
                  </select>
                </div>
                <!-- Select front office end -->

                <!-- Select permissions  -->
                <div class="form-group col-12">
                  <select id="selectPermissao" name="selectPermissao" class="form-control">
                     <option value="0" selected>Permissões</option>
                     <?php   include_once("db/dataAccess.php");
                        $da = new DataAccess();
                        $res = $da->getTipoPermissoes();
                        while($row=mysqli_fetch_assoc($res)){
                        echo "<option value='" . $row['id'] . "'>" . $row['tipoDePermissao'] . "</option>";
                        }
                      ?>
                  </select>
                </div>
                <!-- Select permissions end -->

                <div class="form-group col-12">
                  <input type="text" class="form-control" id="txtPesquisar" name="txtPesquisar" placeholder="Instituição">
                  <button type="submit" class="btn-pesquisar my-title" id="btn-pesquisar">Pesquisar utilizadores</button>
                  <img src="images/search.gif" id="loading-image" alt="A carregar...">
                </div>
              </div>
            </form>
            <!-- Formulário de pesquisa end-->
            <div class="alert alert-danger display-error"></div>
            <label id="guardarID" style="display: none;"></label>
            <!-- Formulário de criar utilizador-->
            <form id="form-add-utilizador" action="db/criarUtilizador.php" method="POST">
              <div class="form-row">
                <!-- Select front office -->
                <div class="form-group col-12">
                  <select id="selectFrontOfficeAdd" name="selectFrontOfficeAdd" class="form-control" required>
                     <option value="0" selected>Projeto</option>
                        <?php   include_once("db/dataAccess.php");
                        $da = new dataAccess();
                        $res = $da->getFrontOffices();
                        while($row=mysqli_fetch_assoc($res)){
                          echo "<option value='" . $row['id'] . "'>" . $row['nome'] . "</option>";
                        }
                        ?>
                  </select>
                </div>
                <!-- Select front office end -->

                <!-- Select permissions  -->
                <div class="form-group col-12">
                  <select id="selectPermissaoAdd" name="selectPermissaoAdd" class="form-control" required>
                     <option value="0" selected>Permissões</option>
                     <?php   include_once("db/dataAccess.php");
                        $da = new DataAccess();
                        $res = $da->getTipoPermissoes();
                        while($row=mysqli_fetch_assoc($res)){
                        echo "<option value='" . $row['id'] . "'>" . $row['tipoDePermissao'] . "</option>";
                        }
                        ?>
                  </select>
                </div>
                <!-- Select permissions end -->
                <div class="form-group col-12">
                  <input type="text" class="form-control" id="txtNomeAdd" name="txtNomeAdd" placeholder="Instituição" maxlength="30">
                </div>
                <div class="form-group col-12">
                  <input type="email" class="form-control" id="txtEmailAdd" name="txtEmailAdd" placeholder="Email">
                </div>
                <div class="form-group col-12">
                  <input type="password" class="form-control" id="txtPasswordAdd" name="txtPasswordAdd" placeholder="Password">
                </div>
                <div class="form-group col-12">
                  <input type="password" class="form-control" id="txtPassword2Add" name="txtPassword2Add" placeholder="Confimar password">
                  <input type="submit" class="btn-pesquisar my-title" id="btn-adicionar" value="Criar utilizador">
                  <img src="images/search.gif" id="loading-imageAdd" alt="A carregar...">
                </div>
              </div>
            </form>


            <form id="form-edit-utilizador" action="db/editarUtilizador.php" method="POST">
              <div class="form-row">
                <!-- Select front office -->
                <div class="form-group col-12">
                  <select id="selectFrontOfficeEdit" name="selectFrontOfficeEdit" class="form-control" required>
                     <option value="0" selected>Projeto</option>
                        <?php   include_once("db/dataAccess.php");
                        $da = new dataAccess();
                        $res = $da->getFrontOffices();
                        while($row=mysqli_fetch_assoc($res)){
                          echo "<option value='" . $row['id'] . "'>" . $row['nome'] . "</option>";
                        }
                        ?>
                  </select>
                </div>
                <!-- Select front office end -->

                <!-- Select permissions  -->
                <div class="form-group col-12">
                  <select id="selectPermissaoEdit" name="selectPermissaoEdit" class="form-control" required>
                     <option value="0" selected>Permissões</option>
                     <?php   include_once("db/dataAccess.php");
                        $da = new DataAccess();
                        $res = $da->getTipoPermissoes();
                        while($row=mysqli_fetch_assoc($res)){
                        echo "<option value='" . $row['id'] . "'>" . $row['tipoDePermissao'] . "</option>";
                        }
                        ?>
                  </select>
                </div>
                <!-- Select permissions end -->
                <div class="form-group col-12">
                  <input type="text" class="form-control" id="txtNomeEdit" name="txtNomeEdit" placeholder="Instituição" maxlength="30">
                </div>
                <div class="form-group col-12">
                  <input type="email" class="form-control" id="txtEmailEdit" name="txtEmailEdit" placeholder="Email">
                </div>
                <div class="form-group col-12">
                  <input type="password" class="form-control" id="txtPasswordEdit" name="txtPasswordEdit" placeholder="Password (preencha apenas se deseja mudar a password deste utilizador)">
                </div>
                <div class="form-group col-12">
                  <input type="password" class="form-control" id="txtPassword2Edit" name="txtPassword2Edit" placeholder="Confimar password">
                  <input type="submit" class="btn-pesquisar my-title btn-editar" id="btn-editar" value="Editar utilizador">
                  <img src="images/search.gif" id="loading-imageEdit" alt="A carregar...">
                </div>
              </div>
            </form>

          </div>
        </div>

        <!-- Table users -->
          <div class="col-12 col-md-12" style="margin: auto;" >
            <a href="#" id="form-switch-adicionar" class="switch-forms"><i class="fas fa-user-plus form-switch-icon"></i> Adicionar</a>
            <a href="#" id="form-switch-procurar" class="switch-forms"><i class="fas fa-users form-switch-icon"></i> Pesquisar</a>
            <div class="table-responsive-sm" id="testeId22" >
              <table class="table">
                <thead>
                  <tr class="table-top">
                    <th scope="col">Instituição</th>
                    <th scope="col">Email</th>
                    <th scope="col">Projeto</th>
                    <th scope="col">Tipo de Utilizador</th>
                    <th scope="col">Editar</th>
                    <th scope="col">Desativar/Ativar</th>
                  </tr>
                </thead>
                <tbody id="dados" class="table-content"></tbody>
              </table>
            </div>
          </div>
        <!-- Table users end -->
      </div>
    </div>

    <script>
      $(document).ready(function(){
        // Quando o utilizador clicar no botão de pesquisar executa
        $("#btn-pesquisar").on("click", function(e){
          // Desativa o default do botão
          e.preventDefault();
          $('#loading-image').show();
          // Vai buscar os valores de cada campo do formulário
          var txtPesquisa = $("#txtPesquisar").val();
          var frontOffice = $("#selectFrontOffice").val();
          var permissao = $("#selectPermissao").val();
          // Envia para o ficheiro getUtilizadores.php através do método POST os valores inseridos pelo utilizador
          $.ajax({
            url: "db/getUtilizadores.php",
            method: "POST",
            dataType: "text",
            data: {
              txtPesquisa:txtPesquisa,
              frontOffice:frontOffice,
              permissao:permissao
            }
            // Quando estiver feito, mostra os dados na div #dados
          }).done(function(returnedData){
            $("#btn-pesquisar").prop('disabled', true);
            window.setTimeout(function() {
              $('#loading-image').hide();
              $("#dados").html(returnedData);
              $("#btn-pesquisar").prop('disabled', false);
            }, 800);
          })
        })

        // Simula um click do botão que faz a pesquisa e mostra em tabela os utilizadores, assim que a página ficar carregada
        $("#btn-pesquisar").click();

        // Faz o swap do form de pesquisa para o de adicionar utilizador.
        $("#form-switch-adicionar").on("click", function(e){
          // Desativa o default do botão
          e.preventDefault();
          $('#form-pesquisa').hide(600);
          $('#form-edit-utilizador').hide(600);
          $('#form-add-utilizador').show(1000);
          $('#form-switch-adicionar').hide(600);
          $('#form-switch-procurar').show(1000);
          $(".display-error").css("display","none");
          $('#loading-imageAdd').hide();
          $("html, body").animate({ scrollTop: 0 }, "slow");
        })

        // Faz o swap do form de adicionar utilizador para o de pesquisa.
        $("#form-switch-procurar").on("click", function(e){
          // Desativa o default do botão
          e.preventDefault();
          $('#form-add-utilizador').hide(600);
          $('#form-edit-utilizador').hide(600);
          $('#form-pesquisa').show(1000);
          $('#form-switch-procurar').hide(600);
          $('#form-switch-adicionar').show(1000);
          $(".display-error").css("display","none");
          $('#loading-image').hide();
          $("html, body").animate({ scrollTop: 0 }, "slow");
        });

        $('#btn-adicionar').on("click", function(e) {
          // Desativa o default do botão
          e.preventDefault();
          // Vai buscar os valores de cada campo do formulário
          var txtNomeAdd = $("#txtNomeAdd").val();
          var txtEmailAdd = $("#txtEmailAdd").val();
          var txtPasswordAdd = $("#txtPasswordAdd").val();
          var txtPassword2Add = $("#txtPassword2Add").val();
          var frontOfficeAdd = $("#selectFrontOfficeAdd").val();
          var permissaoAdd = $("#selectPermissaoAdd").val();
            $.ajax({
              url: "db/criarUtilizador.php",
              method: "POST",
              dataType: "json",
              data: {
                txtNomeAdd:txtNomeAdd,
                txtEmailAdd:txtEmailAdd,
                txtPasswordAdd:txtPasswordAdd,
                txtPassword2Add:txtPassword2Add,
                frontOfficeAdd:frontOfficeAdd,
                permissaoAdd:permissaoAdd
              }
              // Quando estiver feito, executa
            }).done(function(data){
              if (data.code == "200"){
                
                $('#loading-imageAdd').hide();
                $("html, body").animate({ scrollTop: 0 }, "slow");
                $("#btn-adicionar").attr("disabled", true);
                $(".display-error").removeClass("alert-danger");
                $(".display-error").addClass("alert-success");
                $(".display-error").html("<ul class='ulrebm'>"+data.msg+"</ul>");
                $(".display-error").css("display","block");
                window.setTimeout(function() {
                  $(".display-error").css("display","none");
                  $("#btn-pesquisar").click();
                  $(".display-error").removeClass("alert-success");
                  $(".display-error").addClass("alert-danger");
                  $("#txtNomeAdd").val("");
                  $("#txtEmailAdd").val("");
                  $("#txtPasswordAdd").val("");
                  $("#txtPassword2Add").val("");
                  $("#selectFrontOfficeAdd").val(0);
                  $("#selectPermissaoAdd").val(0);
                }, 1100);
                $("#btn-adicionar").attr("disabled", false);
              } else {
                $(".display-error").empty();
                $(".display-error").html("<ul class='ulrebm'>"+data.msg+"</ul>");
                $(".display-error").css("display","block");
                $("html, body").animate({ scrollTop: 0 }, "slow");
              }
            });
            //$("#testeId22").load(" #testeId22");
            location.reaload();
        });
          
          // Caso o utilizador clique num dos botões de ativar utilizador
          $(document).on("click", "td[name=enable-button]", function(e){
            // Desativa o default do botão
            e.preventDefault();
            // Mostra um alerta de confirmação no ecrã antes de excluir o utilizador
            if(confirm("Tem a certeza que deseja ativar este utilizador?")){
              var id = $(this).attr('id');
              var $tr = $(this).closest('tr');
              $.ajax({
                url: "db/ativarUtilizador.php",
                method: "GET",
                dataType: "json",
                data: {
                  id:id
                }
              // Quando estiver feito, executa
              }).done(function(data){
                if (data.code == "200"){
                  $tr.css('background-color', '#00cc00');
                  window.setTimeout(function() {
                    $("#btn-pesquisar").click();
                  }, 700);
                } else {
                  alert("Não foi possível ativar o utilizador em questão.");
                }
              });
            } else {
                return false;
            }
          });

        // Caso o utilizador clique num dos botões de eliminar utilizador
          $(document).on("click", "td[name=delete-button]", function(e){
            // Desativa o default do botão
            e.preventDefault();
            // Mostra um alerta de confirmação no ecrã antes de excluir o utilizador
            if(confirm("Tem a certeza que deseja desativar este utilizador?")){
              var id = $(this).attr('id');
              var $tr = $(this).closest('tr');
              $.ajax({
                url: "db/desativarUtilizador.php",
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
                    $("#btn-pesquisar").click();
                  }, 700);
                } else {
                  alert("Não foi possível desativar o utilizador em questão.");
                }
              });
            } else {
                return false;
            }
          });

        // Caso o utilizador clique no botão de editar
          $(document).on("click", "td[name=edit-button]", function(e){
            // Desativa o default do botão
            e.preventDefault();
            // Vai buscar o ID do utilizador selecionado
            var id = $(this).attr('id');
            // Envia para o php de modificar utilizador o ID do utilizador selecionado
            $.ajax({
              url: "db/editarUtilizador.php",
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
                $('#form-add-utilizador').hide();
                $('#form-pesquisa').hide(600);
                $('#form-edit-utilizador').show();
                // Mostra todos os valores atribuidos ao utilizador que foi selecionado, nos campos de editar.
                $("#guardarID").val(data.id);
                $("#txtNomeEdit").val(data.nome);
                $("#txtEmailEdit").val(data.email);
                $("#txtPasswordEdit").val("");
                $("#txtPassword2Edit").val("");
                $("#selectFrontOfficeEdit").val(data.idFrontOffice);
                $("#selectPermissaoEdit").val(data.idPermissao);
                $("html, body").animate({ scrollTop: 0 }, "slow");
              } else {
                console.log("error");
              }
            });
            window.setTimeout(function() {
              $("html, body").animate({ scrollTop: 0 }, "slow");
            }, 700);
          });

        $('#btn-editar').on("click", function(e) {
          // Desativa o default do botão
          e.preventDefault();
          // Vai buscar os valores de cada campo do formulário
          var id = $("#guardarID").val();
          var txtNome = $("#txtNomeEdit").val();
          var txtEmail = $("#txtEmailEdit").val();
          var txtPassword = $("#txtPasswordEdit").val();
          var txtPassword2 = $("#txtPassword2Edit").val();
          var frontOffice = $("#selectFrontOfficeEdit").val();
          var permissao = $("#selectPermissaoEdit").val();
            $.ajax({
              url: "db/editarUtilizador.php",
              method: "POST",
              dataType: "json",
              data: {
                id:id,
                txtNome:txtNome,
                txtEmail:txtEmail,
                txtPassword:txtPassword,
                txtPassword2:txtPassword2,
                frontOffice:frontOffice,
                permissao:permissao
              }
            }).done(function(data){
                if (data.code == "200"){
                  $("html, body").animate({ scrollTop: 0 }, "slow");
                  $(".display-error").removeClass("alert-danger");
                  $(".display-error").addClass("alert-success");
                  $(".display-error").html("<ul class='ulrebm'>"+data.msg+"</ul>");
                  $(".display-error").css("display","block");
                  window.setTimeout(function() {
                    $('#form-edit-utilizador').hide(600);
                    $('#form-pesquisa').show(1000);
                    $("#btn-pesquisar").click();
                    $(".display-error").css("display","none");
                  }, 800);
                } else {
                  $("html, body").animate({ scrollTop: 0 }, "slow");
                  $(".display-error").removeClass("alert-success");
                  $(".display-error").addClass("alert-danger");
                  $(".display-error").html("<ul class='ulrebm'>"+data.msg+"</ul>");
                  $(".display-error").css("display","block");
                }
              });
            });
          });
    </script>
    <!-- Erros na parte de editar não aparecem
         Erros na parte de editar não aparecem
         Erros na parte de editar não aparecem
         Ativar novamente os "   $(".display-error").css("display","none");  " -->

  </body>
</html>
