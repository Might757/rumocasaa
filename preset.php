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
      <!-- section -->
      <div class="row" pr-4>
        <!-- -->
        <div class="col-md-6">
          <div class="row">
            <div class="col-md-12 my-paddingTop pb-4">
              <div class="newspaper_icon"><i class="far fa-newspaper"></i></div>
              <h2 class="pl-5">ÚLTIMAS <span class="green-text">NOTÍCIAS</span></h2>
            </div>
            <!-- -->
            <div class="col-lg-6 mb-4">
              <div class="card h-100">
                <a href="lerNoticia.php"><img class="card-img-top img-news" src="images/empregabilidade/acessoEmprego.jpg" alt="">
                  <div class="card-body">
                    <h4 class="card-title ">
                      Project 1</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                  </div>
              </div>
            </div>

            <div class="col-lg-6 mb-4">
              <div class="card h-100">
                <a href="lerNoticia.php"><img class="card-img-top img-news" src="images/empregabilidade/outrasOfertasFormativas.jpg" alt="">
                  <div class="card-body">
                    <h4 class="card-title ">
                      Project 1</a>
                    </h4>
                    <p class="card-text">Lorem ipsum dolor sit amet, Nam viverra euismod odio, gravida pellentesque urna varius vitae.</p>
                  </div>
              </div>
            </div>
          </div>
        </div>
        <!-- end -->
      </div>
      <!-- section end -->
    </div>
  </body>
</html>
