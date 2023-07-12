<?php include_once("css_includes.php"); ?>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand">
      <img src="images/rebmBlack.png" alt="REBM">
  </a>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
  <input type="checkbox" id="toggle" class="">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
        <li class="nav-item">
            <a class="nav-link" href="index.php"><i class="fa fa-home nav_icons"></i>INICIO</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="sobreNos.php"><i class="fa fa-users nav_icons"></i>SOBRE NÓS</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="gabinetes.php"><i class="fa fa-building nav_icons"></i>GABINETES</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="empregabilidade.php"><i class="fa fa-suitcase nav_icons"></i>EMPREGABILIDADE</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-graduation-cap nav_icons"></i>OFERTA FORMATIVA</a>
          <div class="dropdown-menu dropdown-menu-center animate slideIn" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="ofertaAdultos.php">Adultos</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="oferta.php">Jovens</a>
          </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="empreendedorismo.php"><i class="fa fa-lightbulb nav_icons"></i>EMPREENDEDORISMO</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="membros.php"><i class="fa fa-user-plus nav_icons"></i>MEMBROS</a>
        </li>
    </ul>
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
            echo '
            <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></i>'.$nomePerfil.'</a>
                <div class="dropdown-menu dropdown-menu-right dropdown-menu-center animate slideIn" aria-labelledby="navbarDropdown" style="z-index: 9999">
                  <a class="dropdown-item" href="perfil.php">Perfil</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="gerirEscolasCursos.php">Ligar Escola e Curso</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="gerirVisitantes.php" >Gestão de Visitantes</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="gerirCursos.php" >Gestão de Cursos</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="gerirEscolas.php" >Gestão das Escolas</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="gerirNoticias.php">Gestão de Notícias</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="gerirUtilizadores.php">Gestão de Utilizadores</a>
                  <div class="dropdown-divider"></div>
                  <a class="dropdown-item" href="db/tratarLogout.php" style="color: red !important;">Sair</a>
                </div>
                </li>
              </ul>';

            } else if ($_SESSION['idTipoDePermissao'] == 2) {
                echo '<a id="submenu-trigger" href="#">'.$nomePerfil.'<span style="font-size: 88%;"> ▼</span></a>
                    <div id="submenu-content">
                        <ul>
                        <li class="nav-item"><a href="perfil.php">Perfil</a></li>
                        <li class="nav-item"><a href="gerirNoticias.php">Gestão de Notícias</a></li>
                        <li class="nav-item"><a href="db/tratarLogout.php">Sair</a></li>
                        </ul>
                    </div>';
            } else {
                echo '<a id="submenu-trigger" href="#">'.$nomePerfil.'<span style="font-size: 88%;"> ▼</span></a>
                    <div id="submenu-content">
                        <ul>
                        <li class="nav-item"><a href="perfil.php">Perfil</a></li>
                        <li class="nav-item"><a href="db/tratarLogout.php">Sair</a></li>
                        </ul>
                    </div>';
            }
        // Se não existir nenhum utilizador na sessão mostra o formulário de login
        }else{
        echo  '  
                <ul class="navbar-nav mr-10px mt-2 mt-lg-0">
                  <li class="nav-item">
                    <a class="nav-link" href="loginAdmin.php"><i class="fas fa-sign-in-alt nav_icons"></i>Entrar</a></li>
                  </li>
                </ul>
              ';
        }
        ?>
  </div>
  </div>
</nav>

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
          $('#form-message').hide();
          $("#txtEmail, #txtPassword").removeClass("input-error");
          window.setTimeout(function() {
            window.location.reload();
          }, 800);
        }else{
          if (returnedData.errorAccount == true){
            $('#form-message').text(returnedData.msg);
            $('#form-message').show();
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
