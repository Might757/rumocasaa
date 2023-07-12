<?php include_once("css_includes.php"); ?>
<div class="nav">
  <a class="navbar-brand">
      <img class="logoIMG" src="images/rebmSmallWhite.png" alt="REBM">
  </a>
  <label id="#lbl-menu" class="ml-auto" for="toggle">&#9776;</label>
  <input type="checkbox" id="toggle" class="">
  <div class="menu">
    <a href="index.php"><i class="fa fa-home nav_icons"></i>INICIO</a>
    <a href="sobreNos.php"><i class="fa fa-users nav_icons"></i>SOBRE NÓS</a>
    <a href="gabinetes.php"><i class="fa fa-building nav_icons"></i>GABINETES</a>
    <a href="empregabilidade.php"><i class="fa fa-suitcase nav_icons"></i>EMPREGABILIDADE</a>
    <a href="oferta.php"><i class="fas fa-graduation-cap nav_icons"></i>OFERTA FORMATIVA</a>
    <a href="empreendedorismo.php"><i class="fa fa-lightbulb nav_icons"></i>EMPREENDEDORISMO</a>
    <a href="membros.php"><i class="fa fa-user-plus nav_icons"></i>MEMBROS</a>

    <?php
    // Caso exista um utilizador na sessão
    if(isset($_SESSION['email'])) {
        if(strlen($_SESSION['nome']) > 17){
            if(substr($_SESSION['nome'], 17, 1) != " ") {
                $nomePerfil = substr($_SESSION['nome'], 0, 17) . ".";
            }else{
                $nomePerfil = substr($_SESSION['nome'], 0, 17);
            }
        }else{
            $nomePerfil = $_SESSION['nome'];
        }

        if($_SESSION['idTipoDePermissao'] == 1) {
          // Echo no código HTML para criar o menu de utilizador
          echo '<a id="submenu-trigger" href="#">'.$nomePerfil.'<span style="font-size: 88%;"> ▼</span></a>
                <div id="submenu-content">
                  <ul>
                    <li><a href="perfil.php">Perfil</a></li>
                    <li><a href="gerirUtilizadores.php">Gestão de Utilizadores</a></li>
                    <li><a href="gerirNoticias.php">Gestão de Notícias</a></li>
                    <li><a href="gerirCursos.php">Gestão de Cursos</a></li>
                    <li><a href="gerirEscolas.php">Gestão das Escolas</a></li>
                    <li><a href="gerirVisitantes.php">Gestão de Visitantes</a></li>
                    <li><a href="gerirEscolasCursos.php">Ligar Escola e Curso</a></li>
                    <li><a href="db/tratarLogout.php">Sair</a></li>
                  </ul>
                </div>';

          } else if ($_SESSION['idTipoDePermissao'] == 2) {
            echo '<a id="submenu-trigger" href="#">'.$nomePerfil.'<span style="font-size: 88%;"> ▼</span></a>
                  <div id="submenu-content">
                    <ul>
                      <li><a href="perfil.php">Perfil</a></li>
                      <li><a href="gerirNoticias.php">Gestão de Notícias</a></li>
                      <li><a href="db/tratarLogout.php">Sair</a></li>
                    </ul>
                  </div>';
          } else {
            echo '<a id="submenu-trigger" href="#">'.$nomePerfil.'<span style="font-size: 88%;"> ▼</span></a>
                  <div id="submenu-content">
                    <ul>
                      <li><a href="perfil.php">Perfil</a></li>
                      <li><a href="db/tratarLogout.php">Sair</a></li>
                    </ul>
                  </div>';
          }
    // Se não existir nenhum utilizador na sessão mostra o formulário de login
    }else{
      echo '<a id="login-trigger" href="#"><i class="fas fa-sign-in-alt nav_icons"></i>Entrar <span style="font-size: 88%;"> ▼</span></a>
            <div id="login-content">
            <p class="form-message-error" id="form-message"></p>
              <form method="POST" action="db/tratarLogin.php">
                <fieldset id="inputs">
                  <div class="form-group">
                    <input id="txtEmail" type="email" name="txtEmail" placeholder="Email" maxlength="50" required>
                  </div>
                    <input id="txtPassword" type="password" name="txtPassword" placeholder="Password" maxlength="100" required>
                </fieldset>
                <fieldset id="actions">
                  <button type="submit" name="submit" id="submit">Login</button>
                </fieldset>
              </form>
            </div>';
    }
  ?>
  </div>
</div>

<script>
  $(document).ready(function() {
    $(window).bind('resize', function(e){
      window.resizeEvt;
      $(window).resize(function(){
          clearTimeout(window.resizeEvt);
          window.resizeEvt = setTimeout(function(){
            if ($(window).width() > 1275 && $('#form-message').text() != ""){
              $("#login-content").css({"height":"228px"});
            }else if ($(window).width() < 1275 && $('#form-message').text() != ""){
              $("#login-content").css({"height":"260px"});
            }
          }, 250);
      });
    });

    // Faz aparecer o form de login sempre que se clica em "Entrar" e também troca a seta.
    $('#login-trigger').click(function(e) {
      e.preventDefault();
      // if ($(window).width() > 1275) {
      //   $("#login-content").css({"top":"43px"});
      // }
      $(this).next('#login-content').slideToggle();
      $(this).toggleClass('active');
      if ($(this).hasClass('active')) {
        $(this).find('span').html('&#x25B2;');
      }else{
        $(this).find('span').html('&#x25BC;');
      }
    });

    // Faz aparecer o form de login sempre que se clica em "Entrar" e também troca a seta.
    $('#submenu-trigger').click(function(e) {
      e.preventDefault();
      $(this).next('#submenu-content').slideToggle();
      $(this).toggleClass('active');
      if ($(this).hasClass('active')) {
        $(this).find('span').html('&#x25B2;');
      }else{
        $(this).find('span').html('&#x25BC;');
      }
    });

    // Faz com que seja possível verificar se as credenciais do login estão corretas ou não, sem refresh através de jquery - ajax
    $("form").submit(function(event) {
      event.preventDefault(); //ignora a action default do form
      var txtEmail = $("#txtEmail").val();
      var txtPassword = $("#txtPassword").val();
      var check = $('#form-message').text();
      // if (check == ""){
      //   $("#login-content").css({"height":"110px"});
      //   $("#login-content").css({"top":"270px"});
      // }
      $.ajax({
        url: "db/tratarLogin.php",
        method: "POST",
        dataType: "json",
        data: {
          txtEmail    : txtEmail,
          txtPassword : txtPassword
        }
        // Quando estiver feito
      }).done(function(returnedData){
        if (returnedData.code == 200){
          $('#form-message').text("");
          $("#txtEmail, #txtPassword").removeClass("input-error");
          window.setTimeout(function() {
            window.location.reload();
          }, 800);
        }else{
          if (returnedData.errorAccount == true){
            $('#form-message').text(returnedData.msg);
            $("#txtEmail, #txtPassword").addClass("input-error");
            $("#txtPassword").val("");
            //continuar com isto aqui em baixo, meter quando se abre mesmo o menu verificar a altura e ajustar apartir dai.
            if ($(window).width() > 1275) {
              $("#login-content").css({"height":"228px"});
            }
          }
        }
      });
    });
  });
</script>
