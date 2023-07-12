<?php
session_start();
 ?>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta name="viewport" content="initial-scale=1.0">
    <meta charset="utf-8">
    <!-- Includes -->
    <!-- JQuery -->
    <script src="bootstrap-4.3.1/js/jquery-3.4.1.min.js"></script>
    <!-- Bootstrap -->
    <link href="bootstrap-4.3.1/css/bootstrap.min.css" rel="stylesheet">
    <script src="bootstrap-4.3.1/js/bootstrap.min.js"></script>
    <!-- Popper -->
    <script src="bootstrap-4.3.1/js/popper.min.js"></script>
    <!-- Fontawesome icons -->
    <link href="fontawesome/css/all.css" rel="stylesheet"> <!--load all styles -->
    <script defer src="fontawesome/js/all.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Icon do separador -->
    <link rel="icon" href="images/favicon.png">
    <!-- codificação de caracteres -->
    <meta charset="utf-8">
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto|Rubik:500" rel="stylesheet">
    <!-- Stylesheets -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/carousel.css" rel="stylesheet">
    <link href="css/login.css" rel="stylesheet">
    <link href="css/navbar.css" rel="stylesheet">
    <link href="css/footer.css" rel="stylesheet">
    <?php include_once("importJS.php");?>

    <title>REBM</title>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 446px;
        margin: 0;
        padding: 0;
      }

      #map-canvas img {
      	max-width: none !important;
      }
      .gm-style-iw {
      	width: 470px !important;
      	top: 15px !important;
      	left: 0px !important;
      	background-color: #fff;
      	box-shadow: 0 1px 6px rgba(178, 178, 178, 0.6);
      	border: 1px solid rgba(72, 181, 233, 0.6);
      	border-radius: 15px 15px 15px 15px;
      }
      #iw-container {
      	margin-bottom: 10px;
      }
      #iw-container .iw-title {
      	font-family: 'Open Sans Condensed', sans-serif;
      	font-size: 22px;
      	font-weight: 400;
      	padding: 10px;
    	  background-color: #262626;
      	color: white;
      	margin: 0;
        width: 92%;
      	border-radius: 5px 5px 5px 5px;
      }
      #iw-container .iw-content {
      	font-size: 13px;
      	line-height: 18px;
      	font-weight: 400;
      	margin-right: 1px;
      	padding: 15px 5px 20px 15px;
      	max-height: 160px;
      	overflow-y: auto;
      	overflow-x: hidden;
      }
      .iw-subTitle {
      	font-size: 16px;
      	font-weight: 700;
      	padding: 5px 0;
      }
      .iw-bottom-gradient {
      	position: absolute;
      	width: 326px;
      	height: 25px;
      	bottom: 10px;
      	right: 18px;
      	background: linear-gradient(to bottom, rgba(255,255,255,0) 0%, rgba(255,255,255,1) 100%);
      	background: -webkit-linear-gradient(top, rgba(255,255,255,0) 0%, rgba(255,255,255,1) 100%);
      	background: -moz-linear-gradient(top, rgba(255,255,255,0) 0%, rgba(255,255,255,1) 100%);
      	background: -ms-linear-gradient(top, rgba(255,255,255,0) 0%, rgba(255,255,255,1) 100%);
      }

      .linkColor{
        color: #04d107;
      }

      .linkColor:hover{
        color: #04d107;
      }
    </style>
  </head>

  <body>
    <?php include_once("navbar.php");?>
    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center main-title">
          <h1 class="my-title"><i class="fas fa-user-tie green-text" style="margin-right: 10px;"></i>OFERTA FORMATIVA PARA ADULTOS 20/21</h1>
        </div>
      </div>
        <div class="row" style="margin-top: 50px; margin-bottom: 50px;">
          <!--Selects através da base de dados?-->
        <div class="col-lg-6">
          <div class="row form-group">
            <!--
            <div class="form-group col-lg-6">
              <label>Concelho</label>
              <select id="concelho" class="form-control">
                <option disabled="disabled" value="default"></option>
                <option selected value="todosConcelhos">Todos</option>
              </select>
            </div>
            
            <div class="form-group col-lg-12">
              <label>Pesquisar por Entidade</label>
              <input type="text" id="pesquisarEscola" class="form-control" placeholder="Nome da Entidade">
            </div>
            -->
          </div>
        
          <!--Select das freguesias depende do select do concelho-->
          <div class="row form-group">
            <div class="form-group col-lg-12">
                <label>Entidade Formadora</label>
                <select id="entidade" class="form-control" disabled="disabled">
                  <option selected disabled="disabled" value="default"></option>
                  <option value="todas"></option>
                </select>
            </div>
          </div>
          
          <div class="row form-group">
            <div class="form-group col-lg-12">
              <label>Modalidade</label>
              <select id="modalidade" class="form-control">
                  <option value='-1'></option>
                  <option value='1'>Online</option>
                  <option value='2'>Presencial</option>
                  <option value='3'>Misto</option>
              </select>              
            </div>
          </div>  

          <div class="row form-group">
            <div class="form-group col-lg-12">
              <label>Tipo de Certificação</label>
                <select class="form-noticias form-control" name="tipoCertificacao" id="tipoCertificacao">
                    <option value='-1'></option>
                    <option value='1'>Escolar</option>
                    <option value='2'>Profissional</option>
                    <option value='3'>Outras</option>
                </select>
            </div>
          </div>

            <div class="row form-group">
              <div class="form-group col-lg-12">
                <label>Nível obtido</label>
                <select id="nivel" class="form-control" >
                    <option value='-1'></option>                    
                    <option value='1'>4º ano</option>
                    <option value='2'>6º ano</option>
                    <option value='3'>9º ano</option>
                    <option value='4'>12º ano</option>
                    <option value='5'>Sem escolaridade</option>
                </select>
              </div>
            </div>        

            <input type='button' value='Pesquisar' id="pesquisarCursosAdultos" style="background-color: #04d107;" class="btn btn-success form-group" />
          </div>
          <div class="col-lg-6 d-none d-sm-none d-md-block" >
            <div id="map"></div>
          </div>
        </div>        
    </div>
    <div class="container">
      <div class="row">
        <div class="table-responsive">
          <div id="divSearch"></div>
        </div>
      </div>
    </div>
    <div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-scrollable modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h3 class="modal-title" id="exampleModalScrollableTitle"></h3>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <div class="accordion" id="accordionExample">
                <div id="divResultados"></div>
            </div>
          </div>
          <div class="modal-footer">
            
          </div>
        </div>
      </div>
    </div>
    <?php include_once("footer.php");?>    

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAjtIPM3j8bsGMKbpg9-uY29393afqAZNs&callback=initMapEntidades"
    async defer></script>
    <script>
    </script>
  </body>
</html>
