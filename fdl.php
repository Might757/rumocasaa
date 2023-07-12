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
    <script src="https://vjs.zencdn.net/7.8.4/video.js"></script>
    <link href="https://unpkg.com/video.js@7/dist/video-js.min.css" rel="stylesheet"/>
    <link href="https://unpkg.com/@videojs/themes@1/dist/forest/index.css" rel="stylesheet">
    <script src="js/videojsmine.js"></script>
    <script src="js/script.js"></script>
    <title>REBM</title>
  </head>

  <body>

    <?php include_once("navbar.php");?>
    <img src="./images/FDL-I.jpg" class="backgroundImgFdl">
    <div class="container-fluid">
    
        <!--ROW TÍTULO -->
        <div class="row">
          <div class="col-lg-3 col-md-3 col-sm-2">
          </div>
          <div class="col-lg-6 col-md-6 col-sm-8">
            <div class="appearText">
              <h8 style="color: #1bafbf;">VI </h8><h8>FÓRUM DE DESENVOLVIMENTO LOCAL</h8>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-sm-2">
          </div>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-3 col-sm-1">
          </div>
          <div class="col-lg-6 col-md-6 col-sm-10">
            <div class="appearVid">
              <div class="card">
                <iframe class="card-img-top"width="800" height="555" src="https://www.youtube.com/embed/4sP6L94tFtw" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <div class="card-body">
                  <p style="font-weight: 600; color:#1bafbf;">Garanta já a sua inscrição!</p>
                  <p>Para mais informações contacte:</p>
                  <p><i class="fas fa-long-arrow-alt-right"></i> Email: empregabilidadebm@gmail.com</p>
                  <p><i class="fas fa-long-arrow-alt-right"></i> Telemóvel: 967920681 (Comissão Organizadora)</p>
                  <a class="btn btn1" href="https://www.eventbrite.pt/e/bilhetes-vi-forum-de-desenvolvimento-barreiro-moita-sustentabilidade-e-inovacao-127138449525">Inscreva-se aqui</a>
                </div>
              </div>
            </div>
            

            <!---<video class="videoBG video-js vjs-theme-forest" controls muted data-setup="{}">
                <source src="images/easy.mp4" type="video/mp4">
            </video>-->
          </div>
          <div class="col-lg-3 col-md-3 col-sm-1">
          </div>
        </div>
        <div class="row">
          <div class="col-lg-3 col-md-3 col-sm-3">
          </div>
          <div class="col-lg-6 col-md-6 col-sm-6">
          </div>
          <div class="col-lg-3 col-md-3 col-sm-3">
          </div>
        </div>
    </div>
  </body>
</html>
