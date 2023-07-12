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
          <h1 class="my-title">GERIR <span class="green-text">CURSOS ADULTOS</span></h1>
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

            <form id="form-criar-curso" style='display:none' >
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
                <textarea class="form-noticias form-control" name="txtDescricao" id="txtDescricao" placeholder="Descricao do Curso" maxlength="5000"></textarea>
              </div>
              <div class="form-group">
                <select class="form-noticias form-control" name="modalidade" id="modalidade">
                    <option value='1'>Online</option>
                    <option value='2'>Presencial</option>
                    <option value='3'>Misto</option>
                </select>
              </div>
              <div class="form-group">
                <select class="form-noticias form-control" name="nivel" id="nivel">
                    <option value='1'>4º ano</option>
                    <option value='2'>6º ano</option>
                    <option value='3'>9º ano</option>
                    <option value='4'>12º ano</option>
                    <option value='5'>Sem escolaridade</option>
                </select>
              </div>
              <div class="form-group">
                <select class="form-noticias form-control" name="tipoCertificacao" id="tipoCertificacao">
                    <option value='1'>Escolar</option>
                    <option value='2'>Profissional</option>
                    <option value='3'>Outras</option>
                </select>
              </div>
              <!--
              <div class="form-group">
                <select class="form-noticias form-control" name="entidade" id="entidade">
                </select>
              </div>
              -->
              
              <button type="button" id="btn-criar" name="submit" class="my-title">Criar curso</button>
              <img src="images/search.gif" id="loading-imageAdd" alt="A carregar...">
            </form>

            <form id="form-editar-curso" style='display:none'>
              <div class="form-group">
                <input id="guardarID" name="id" style="display: none;">
                <input type="text" class="form-noticias form-control" name="txtNomeCursoEdit" id="txtNomeCursoEdit" placeholder="Nome do Curso">
              </div>
              <div class="form-group">
                
              </div>
              <div class="form-group">
                <input class="form-noticias form-control form-group" name="txtObjetivosEdit" id="txtObjetivosEdit" placeholder="Objetivos"></input>
              </div>
              <div class="form-group">
                <textarea class="form-noticias form-control" name="txtDescricaoEdit" id="txtDescricaoEdit" placeholder="Descricao do Curso" maxlength="5000"></textarea>
              </div>
              <div class="form-group">
                <select class="form-noticias form-control" name="modalidadeEdit" id="modalidadeEdit">
                    <option value='1'>Online</option>
                    <option value='2'>Presencial</option>
                    <option value='3'>Misto</option>
                </select>
              </div>
              <div class="form-group">
                <select class="form-noticias form-control" name="nivelEdit" id="nivelEdit">
                    <option value='1'>4º ano</option>
                    <option value='2'>6º ano</option>
                    <option value='3'>9º ano</option>
                    <option value='4'>12º ano</option>
                    <option value='5'>Sem escolaridade</option>
                </select>
              </div>
              <div class="form-group">
                <select class="form-noticias form-control" name="tipoCertificacaoEdit" id="tipoCertificacaoEdit">
                    <option value='1'>Escolar</option>
                    <option value='2'>Profissional</option>
                    <option value='3'>Outras</option>
                </select>
              </div>
              <!--
              <div class="form-group">
                <select class="form-noticias form-control" name="entidadeEdit" id="entidadeEdit">
                </select>
              </div>-->
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
                    <th scope="col">Nível</th>
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
      //getEntidade();
      var i = -1;
      var j = -1;
      var page = 1;
      function mostrarCursos(txtPesquisa){
        $('#loading-image').show();
        $.ajax({
          url: "db/adultos_getCursos.php",
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
        mostrarCursos(txtPesquisa);
        $("#btn-pesquisar").attr("disabled", true);
      });

      $("#previousPage").on("click", function(e){
        // Desativa o default do botão
        e.preventDefault();
        if (page <= 1) {
        }else{
          page = (page - 1);
          var txtPesquisa = $("#txtPesquisar").val();
          mostrarCursos(txtPesquisa);
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
          mostrarCursos(txtPesquisa);
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
          mostrarCursos(txtPesquisa);
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
            mostrarCursos(txtPesquisa);
            $("#page").text(page);
          }else{

          }
      });

      // Quando o utilizador clicar no botão de criar noticia executa
      $("#btn-criar").on("click", function(e){
        var form = $('#form-criar-curso')[0];
        
        
        var formData = new FormData(form);
        console.log(formData)
        $('#loading-imageAdd').show();
        $.ajax({
                url         : 'db/adultos_criarCursos.php?objetivosNum='+i,     // redireciona para o PHP script
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
        $('#form-editar-curso').hide(600);
        $('#form-criar-curso').show(1000);
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
          url: "db/adultos_editarCursos.php",
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
            $('#form-criar-curso').hide(600);
            $('#form-switch-adicionar').hide(600);
            $('#form-switch-procurar').show(1000);
            $('#form-pesquisa').hide(600);
            $('#form-editar-curso').show(1000);
            // Mostra todos os valores atribuidos à notícia que foi selecionada, nos campos de editar.
            $("#guardarID").val(data.id);
            $("#txtNomeCursoEdit").val(data.nome);
            $("#txtObjetivosEdit").val(data.objetivos);
            $("#txtDescricaoEdit").val(data.descricao);
            $("#modalidadeEdit").val(data.modalidade);
            $("#nivelEdit").val(data.nivel);
            $("#tipoCertificacaoEdit").val(data.tipoCertificacao);
            //$("#entidadeEdit").val(data.entidade);
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
        var form = $('#form-editar-curso')[0];
        var formData = new FormData(form);
        $.ajax({
                url         : 'db/adultos_editarCursos.php',     // redireciona para o PHP script
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
            url: "db/adultos_removerCurso.php",
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
            } else if (data.code == "201"){
              alert("Não foi possível remover o curso em questão - tem, pelo menos, uma entidade associada");
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
        $('#form-criar-curso').hide(600);
        $('#form-editar-curso').hide(600);
        $('#form-pesquisa').show(1000);
        $('#form-switch-procurar').hide(600);
        $('#form-switch-adicionar').show(1000);
        $(".display-error").css("display","none");
        $('#loading-image').hide();
        $("html, body").animate({ scrollTop: 0 }, "slow");
      });

      mostrarCursos("");

      function getEntidade(){
            let url = 'db/gerirOfertaFormativa.php?getEntidades';
            $.post(url, function(data)
            {   
                let arr = JSON.parse(data);
                for(let i = 0; i<arr.length; i++)
                {
                    $('#entidade').append(`<option value="`+arr[i].id+`">`+arr[i].entidade+`</option>`); 
                    $('#entidadeEdit').append(`<option value="`+arr[i].id+`">`+arr[i].entidade+`</option>`); 
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

    });
    </script>
    
  </body>
</html>
