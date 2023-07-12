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
  </head>

  <body>
    <?php include_once("navbar.php");?>
    <div class="container">
      <!-- Formação e Emprego (title)-->
      <div class="row">
        <div class="col-md-12 text-center main-title">
          <h1 class="my-title"><i class="fas fa-suitcase green-text" style="margin-right: 10px;"></i>FORMAÇÃO E EMPREGO</h1>
        </div>
      </div>
      <!-- Formação e Emprego (title) end -->

      <!-- Formação e Emprego (content)-->
        <!-- Abordagem -->
      <div class="row">
        <div class="col-md-6 secondary-title">
          <i class="fa fa-bullhorn sobre_icons"></i>
          <h3 class="infoTitle">A nossa abordagem</h3>
          <hr>
        </div>
      </div>

      <div class="row">
        <div class="col-md-6">
          <p class="infoContent">Consideramos fundamental a articulação entre os processos de qualificação e o mercado de trabalho, razão pela qual procuramos corresponder às necessidades das pessoas e das empresas e organizações empregadoras.</p>
          <p class="infoContent">O acesso à qualificação e emprego deve realizar-se numa perspectiva de empowerment tendo em conta as potencialidades, interesses e necessidades dos/as candidatos/as, cruzando-os/as com as necessidades do mercado de trabalho (Emprego Apoiado).</p>
          <p class="infoContent">As ações de formação profissional devem considerar a formação em contexto de trabalho como uma estratégia chave, que facilita o acesso ao emprego.</p>
        </div>
        <div class="col-md-6">
          <a href="#"><img class="img450x300" src="images/empregabilidade/abordagem.jpg" alt=""></a>
        </div>
      </div>


      <!-- Ofertas Formativas -->
      <div class="row">
        <div class="col-md-6 secondary-title">
          <i class="fas fa-graduation-cap sobre_icons"></i>
          <h3 class="infoTitle">Oferta Formativa</h3>
          <hr>
        </div>
      </div>

      <div class="row">
        <div class="col-md-6">
          <p class="infoContent">Com base na abordagem apresentada, a REBM disponibiliza um conjunto de ações de formação, a partir do seu plano integrado de formação. </p>
          <p class="infoContent">Pode aceder à página <a style="color: #04d107;" href='http://www.empregabilidadebm.pt/oferta.php'>clicando aqui.</a></p>
          
        </div>
        <div class="col-md-6">
          <a href="#"><img class="img450x300" src="images/empregabilidade/ofertaFormativa.jpg" alt=""></a>
        </div>
      </div> <br>

      <!-- Acesso ao emprego -->
      <div class="row">
        <div class="col-md-6 secondary-title">
          <i class="fas fa-tasks sobre_icons"></i>
          <h3 class="infoTitle">Acesso ao Emprego</h3>
          <hr>
        </div>
      </div>

      <div class="row">
        <div class="col-md-6">
          <p class="infoContent">Para usufruir do atendimento e acompanhamento proporcionado pela REBM nos concelhos do Barreiro e Moita, consulte a secção Gabinetes e encontre o gabinete que pode colaborar consigo no processo de integração no mercado de trabalho.</p>
        </div>
        <div class="col-md-6">
          <a href="#"><img class="img450x300" src="images/empregabilidade/acessoEmprego.jpg" alt=""></a>
        </div>
      </div>
      <!-- Formação e Emprego (content) end -->
    </div>
    <?php include_once("footer.php");?>
  </body>
</html>
