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
          <h1 class="my-title">GERIR <span class="green-text">CURSOS</span></h1>
        </div>
      </div>

      <div class="row">
        <div class="col-8" style="margin: auto;">
          <div class="col-12" style="margin: auto;">
            <label class="form-noticias alert alert-danger display-error"></label>
            <form id="form-pesquisa" action="db/getCursos.php" method="POST">
              <div class="form-row">
                <div class="form-group col-12">
                  <input type="text" class="form-control" id="txtPesquisar" name="txtPesquisar" placeholder="Palavra-chave (nome do curso)">
                  <button type="submit" class="btn-pesquisar my-title" id="btn-pesquisar">Pesquisar cursos</button>
                  <img src="images/search.gif" id="loading-image" alt="A carregar...">
                </div>
              </div>
            </form>
          </div>

            <form id="form-criar-noticia" action="db/criarCurso.php" method="POST" enctype="multipart/form-data">
              <div class="form-group">
                <input type="text" class="form-noticias form-control" name="txtNomeCurso" id="txtNomeCurso" placeholder="Nome do Curso">
              </div>
              <div class="form-group">              
              <input class="form-noticias form-control form-group" name="txtObjetivos" id="txtObjetivos" placeholder="Objetivos"></input>
              <div id="divAddObjetivo"></div>
                <a href="#" class="form-group" id="divRemoverObjetivo" style="color:black; float:right; visibility: hidden;"><i style="color: red;" class="fas fa-minus-circle form-switch-icon"></i></i> Remover</a>
                <a href="#" class="form-group" id="addObjetivo" style="color:black; float:left;"><i class="fas fa-plus-circle form-switch-icon"></i> Adicionar Novo Objetivo</a>
              </div>
              <div class="form-group">
              <input class="form-noticias form-control form-group" name="txtSaidasProfissionais" id="txtSaidasProfissionais" placeholder="Saídas Profissionais"></input>
                <div id="divAddSaidaProfissional"></div>
                <a href="#" class="form-group" id="divRemoverSaidaProfissional" style="color:black; float:right; visibility: hidden;"><i style="color: red;" class="fas fa-minus-circle form-switch-icon"></i></i> Remover</a>
                <a href="#" class="form-group" id="addSaidaProfissional" style="color:black;"><i class="fas fa-plus-circle form-switch-icon"></i> Adicionar Nova Saída Profissional</a>
              </div>
              <div class="form-group">
                <textarea class="form-noticias form-control" name="txtDescricao" id="txtDescricao" placeholder="Descricao do Curso" maxlength="5000"></textarea>
              </div>
              <div class="form-group">
                <select class="form-noticias form-control" name="txtTipoCurso" id="txtTipoCurso">
                </select>
              </div>
              <div class="form-group" id="displayImgNoticia"></div>
              <div class="form-group">
                
              </div>
              <button type="submit" id="btn-criar" name="submit" class="my-title">Criar curso</button>
              <img src="images/search.gif" id="loading-imageAdd" alt="A carregar...">
            </form>

            <form id="form-editar-noticia" action="db/editarCursos.php" method="POST" enctype="multipart/form-data">
              <div class="form-group">
                <input id="guardarID" name="id" style="display: none;">
                <input type="text" class="form-noticias form-control" name="txtNomeCursoEdit" id="txtNomeCursoEdit" placeholder="Nome do Curso">
              </div>
              <div class="form-group">
                
              </div>
              <div class="form-group">
                
              </div>
              <div class="form-group">
                <textarea class="form-noticias form-control" name="txtDescricaoEdit" id="txtDescricaoEdit" placeholder="Descricao do Curso" maxlength="5000"></textarea>
              </div>
              <div class="form-group">
                <select class="form-noticias form-control" name="txtTipoCursoEdit" id="txtTipoCursoEdit">
                </select>
              </div>
              <div class="form-group" id="displayImgNoticia"></div>
              <div class="form-group">
                
              </div>
              <button type="submit" id="btn-edit" name="submit" class="my-title">Editar curso</button>
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
      getTipoCurso(0);
      var i = -1;
      var j = -1;
      var page = 1;
      function mostrarNoticias(txtPesquisa){
        $('#loading-image').show();
        // Envia para o ficheiro getNoticias.php através do método POST os valores inseridos pelo utilizador na barra de pesquisa
        $.ajax({
          url: "db/getCursos.php",
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
                url         : 'db/criarCursos.php?objetivosNum='+i+'&saidasNum='+j,     // redireciona para o PHP script
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
          url: "db/editarCursos.php",
          method: "GET",
          dataType: "json",
          data: {
            id:id
          }
          // Quando estiver feito, executa
        }).done(function(data){
          getTipoCurso(1);
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
            $("#txtNomeCursoEdit").val(data.nome);
            $("#txtObjetivosEdit").val(data.objetivos);
            $("#txtSaidasProfissionaisEdit").val(data.saidasProfissionais);
            $("#txtDescricaoEdit").val(data.descricao);
            $("#txtTipoCursoEdit").val(data.tipoCurso_id);
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
                url         : 'db/editarCursos.php',     // redireciona para o PHP script
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
        if(confirm("Tem a certeza que deseja ELIMINAR este Curso?")){
          var id = $(this).attr('id');
          var $tr = $(this).closest('tr');
          $.ajax({
            url: "db/removerCursos.php",
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
              alert("Não foi possível remover o curso em questão.");
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
      function getTipoCurso(num){
        let url = 'db/gerirOfertaFormativa.php?getAllTiposCursos=1';
            $.post(url, function(data)
            {      
                let arr = JSON.parse(data);
                for(let i = 0; i<arr.length; i++)
                {
                  if(num == 1){
                    $('#txtTipoCursoEdit').append(`<option value="`+arr[i].id+`">`+arr[i].tipo+`</option>`); 
                  }else{
                    $('#txtTipoCurso').append(`<option value="`+arr[i].id+`">`+arr[i].tipo+`</option>`); 
                  }
                }
            });            
      }
      
      $("#addObjetivo").click(function(){
        if(i == -1){
          i++;
        }
        var appendFields = '<tr class="newObj">';
          appendFields += '<td><input id="objetivo_'+i+'" class="form-noticias form-control form-group" name="objetivo_'+i+'" placeholder="Novo Objetivo" size="100"></input></td></tr>';
        $("#divAddObjetivo").append(appendFields);
        $("#divRemoverObjetivo").css("visibility","visible");
        if(i >= 0){
          i++;
        }
      });
      $("#divRemoverObjetivo").on('click',function(){
        if($('tr.newObj').last().remove()){
          $('tr').last().remove(1);
          if(i>0)
            i--;
          if(i<=0)
            $("#divRemoverObjetivo").css("visibility","hidden");
        } 
      });
      
      $("#addSaidaProfissional").click(function(){
        if(j == -1){
          j++;
        }
        var appendField = '<tr class="newSaida">';
          appendField += '<td><input id="saidas_'+j+'" class="form-noticias form-control form-group" name="saidas_'+j+'" placeholder="Nova Saída Profissional" size="100"></input></td></tr>';
        $("#divAddSaidaProfissional").append(appendField);
        $("#divRemoverSaidaProfissional").css("visibility","visible");
        if(j >= 0){
          j++;
        }
      });
      $("#divRemoverSaidaProfissional").on('click',function(){
        if($('tr.newSaida').last().remove()){
          $('tr').last().remove(1);
          if(j>0)
            j--;
          if(j<=0)
            $("#divRemoverSaidaProfissional").css("visibility","hidden");
        } 
      });

    });
    </script>
    
  </body>
</html>
