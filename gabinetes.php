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
    <style media="screen">
      #map-canvas {
      	margin: 0;
      	padding: 0;
      	height: 400px;
      	max-width: none;
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
    </style>
  </head>

  <body>
    <?php include_once("navbar.php");?>

    <div class="container">
      <div class="row">
        <div class="col-md-12 text-center main-title">
          <h1 class="my-title"><i class="fas fa-building green-text" style="margin-right: 10px"></i>REDE DE GABINETES</h1>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6 secondary-title">
          <div class="sobre_icons"><i class="fas fa-project-diagram"></i></div>
          <h3 class="infoTitle">Rede de Gabinetes de Primeira Linha</h3>
          <hr>
        </div>
      </div>
      <div class="row">
        <div class="col-md-6">
          <p class="infoContent">A REBM conta com uma rede de front-offices/gabinetes de primeira linha presentes nas diversas freguesias dos concelhos (Barreiro e Moita) que facilitam o acesso de interessados/as aos programas e acções disponíveis. </p>
          <p class="infoContent">Estes Gabinetes permitem:</p>
          <p class="infoContent"><span>></span> Atendimento de desempregados/as, activos, empreendedores/as ou em outras situações de vulnerabilidade e encaminhamento para respostas de formação e/ou emprego;</p>
          <p class="infoContent"><span>></span> Desenvolvimento e reforço de competências, optimizando recursos, intervenções e potencialidades existentes nas comunidades;</p>
          <p class="infoContent"><span>></span> Promoção do “matching” entre as potencialidades do candidato e as necessidades do mercado de trabalho envolvente;</p>
          <p class="infoContent"><span>></span> Apoiar as oportunidades de criação de negócios próprios, a partir do conhecimento do tecido económico local e em colaboração com a Rede de Apoio ao Desenvolvimento Local.</p>
        </div>

        <div class="col-md-6">
          <a href="#"><img class="img450x300" src="images/gabinetes/gabinetes.jpg" alt=""></a>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="sobre_icons"><i class="fab fa-font-awesome-flag"></i></div>
          <h3 class="infoTitle">Localize o seu gabinete</h3>
          <hr>
          <p class="infoContent">A intervenção dos Gabinetes é desenvolvida numa perspetiva de empowerment, valorizando as experiências anteriores, as necessidades e aspirações individuais, promovendo o envolvimento e a participação das pessoas na definição e implementação do seu próprio projeto de emprego.</p>
          <p class="infoContent">Se procura obter respostas ao nível do acesso ao emprego e empreendedorismo confira o mapa em baixo: </p>
        </div>
      </div>

      <div class="row">
        <div class="col-md-12">
          <div class="map-container" id="map-container">
              <div id="map-canvas" style="height: 85vh;"></div>
          </div>
        </div>
      </div>
    </div>
    <?php include_once("footer.php");?>
    <script>
    function initMap(){
      // Map options
      var options = {
        zoom:13,
        center:{lat: 38.66490408, lng: -9.06434842}
      }

      // New map
      var map = new google.maps.Map(document.getElementById('map-canvas'), options);

      // Array of markers
      var markers = [
        //RUMO
        {
          coords:{lat: 38.66490408, lng: -9.06434842},
          content:'<div id="iw-container">' +
                    '<div class="iw-title">Protocolo do Rendimento Social de Inserção (RSI) – Moita</div>' +
                    '<div class="iw-content">' +
                      '<div class="iw-subTitle">Entidade Responsável:</div>' +
                      '<p class="infoContent">Rumo, Cooperativa de Solidariedade Social, CRL<p class="infoContent">' +
                      '<div class="iw-subTitle">Coordenação</div>' +
                      '<p class="infoContent">Lídia Monteiro'+
                      '<div class="iw-subTitle">Contactos</div>' +
                      '<p class="infoContent"><b>Telefone:</b> 21 206 49 20 | 96 150 39 30 | 96 370 74 50'+
                      '<br><b>Email:</b> rsi@rumo.org.pt'+
                      '<br><b>Morada:</b> Baía do Tejo – Parque Empresarial do Barreiro – Rua 19, nº13 2831-904 Barreiro Caixa Postal 5063</p>'+
                    '</div>' +
                    '<div class="iw-bottom-gradient"></div>' +
                  '</div>'
        },

        // RSI Barreiro cima
        // {
        //   coords:{lat:38.6631949,lng:-9.0817863},
        //   content:'<div id="iw-container">' +
        //             '<div class="iw-title">Protocolo do Rendimento Social de Inserção (RSI) – Barreiro</div>' +
        //             '<div class="iw-content">' +
        //               '<div class="iw-subTitle">Entidade Responsável:</div>' +
        //               '<p class="infoContent">Associação Nós<p class="infoContent">' +
        //               '<div class="iw-subTitle">Coordenação</div>' +
        //               '<p class="infoContent">Paula Sofia Encarnação'+
        //               '<div class="iw-subTitle">Contactos</div>' +
        //               '<p class="infoContent"><b>Telefone:</b> 21 207 37 02'+
        //               '<br><b>Telemóvel:</b> 93 658 32 32/3'+
        //               '<br><b>Fax:</b> 21 207 37 02'+
        //               '<br><b>Email:</b> rsi@nos.org.pt'+
        //               '<br><b>Morada:</b> Instalações da União de Freguesias de Santo André, Alto do Seixalinhoe Verderena – (Antiga Junta de Freguesia da Verderena) - Av. da Liberdade, Nº 19, 2830-245 Barreiro</p>'+
        //             '</div>' +
        //             '<div class="iw-bottom-gradient"></div>' +
        //           '</div>'
        // },

        // RSI Barreiro
        {
          coords:{lat:38.651783,lng:-9.069675},
          content:'<div id="iw-container">' +
                    '<div class="iw-title">Protocolo do Rendimento Social de Inserção (RSI) – Barreiro</div>' +
                    '<div class="iw-content">' +
                      '<div class="iw-subTitle">Entidade Responsável:</div>' +
                      '<p class="infoContent">Associação Nós<p class="infoContent">' +
                      '<div class="iw-subTitle">Coordenação</div>' +
                      '<p class="infoContent">Paula Sofia Encarnação'+
                      '<div class="iw-subTitle">Contactos</div>' +
                      '<p class="infoContent"><b>Telefone:</b> 21 207 37 02'+
                      '<br><b>Telemóvel:</b> 93 658 32 32/3'+
                      '<br><b>Fax:</b> 21 207 37 02'+
                      '<br><b>Email:</b> rsi@nos.org.pt'+
                      '<br><b>Morada:</b> Instalações da União de Freguesias de Santo André, Alto do Seixalinhoe Verderena – (Antiga Junta de Freguesia da Verderena) - Av. da Liberdade, Nº 19, 2830-245 Barreiro</p>'+
                    '</div>' +
                    '<div class="iw-bottom-gradient"></div>' +
                  '</div>'
        },

        // GIP Baixa da Banheira
        {
          coords:{lat:38.6562476,lng:-9.050932},
          content:'<div id="iw-container">' +
                    '<div class="iw-title">Gabinete de Inserção Profissional (GIP) – Baixa da Banheira</div>' +
                    '<div class="iw-content">' +
                      '<div class="iw-subTitle">Entidade Responsável:</div>' +
                      '<p class="infoContent">CRIBB - Centro de Reformados e Idosos da Baixa da Banheira<p class="infoContent">' +
                      '<div class="iw-subTitle">Coordenação</div>' +
                      '<p class="infoContent">Cátia Nunes'+
                      '<div class="iw-subTitle">Contactos</div>' +
                      '<p class="infoContent"><b>Telefone:</b> 92 654 70 44'+
                      '<br><b>Email:</b> gip@cribb.pt'+
                      '<br><b>Morada:</b> Centro de Reformados e Idosos da Baixa da Banheira Rua da Amizade 73, 2835-180 Baixa da Banheira</p>'+
                    '</div>' +
                    '<div class="iw-bottom-gradient"></div>' +
                  '</div>'
        },

        // GIP Vale da Amoreira
        {
          coords:{lat:38.6416776,lng:-9.0400172},
          content:'<div id="iw-container">' +
                    '<div class="iw-title">Gabinete de Inserção Profissional (GIP) Vale da Amoreira</div>' +
                    '<div class="iw-content">' +
                      '<div class="iw-subTitle">Entidade Responsável:</div>' +
                      '<p class="infoContent">CRIVA- Centro de Reformados e Idosos do Vale da Amoreira<p class="infoContent">' +
                      '<div class="iw-subTitle">Coordenação</div>' +
                      '<p class="infoContent">Cátia Nunes'+
                      '<div class="iw-subTitle">Contactos</div>' +
                      '<p class="infoContent"><b>Telefone:</b> 21 203 91 98 '+
                      '<br><b>Email:</b> gipvale@gmail.com'+
                      '<br><b>Morada:</b> Largo das Dálias Blc 52 a 54, C/V - 2835-204 Vale da Amoreira</p>'+
                    '</div>' +
                    '<div class="iw-bottom-gradient"></div>' +
                  '</div>'
        },

        // RSI Vale da Amoreira
        {
          coords:{lat:38.6426779,lng:-9.0403355},
          content:'<div id="iw-container">' +
                    '<div class="iw-title">Protocolo do Rendimento Social de Inserção (RSI) – Vale da Amoreira</div>' +
                    '<div class="iw-content">' +
                      '<div class="iw-subTitle">Entidade Responsável:</div>' +
                      '<p class="infoContent">CRIVA- Centro de Reformados e Idosos do Vale da Amoreira<p class="infoContent">' +
                      '<div class="iw-subTitle">Coordenação</div>' +
                      '<p class="infoContent">António Pereira (RSI)'+
                      '<div class="iw-subTitle">Contactos</div>' +
                      '<p class="infoContent"><b>Telefone:</b> 21 203 91 98 | 93 699 29 54 '+
                      '<br><b>Email:</b> rsi.criva@gmail.com'+
                      '<br><b>Morada:</b> Largo do Cravos bloco 51 – r/c esq., 2835 Vale da Amoreira</p>'+
                    '</div>' +
                    '<div class="iw-bottom-gradient"></div>' +
                  '</div>'
        },

        // GIP Santo António da Charneca
        {
          coords:{lat:38.6320147,lng:-9.0377332},
          content:'<div id="iw-container">' +
                    '<div class="iw-title">Gabinete de Inserção Profissional (GIP) - Santo António da Charneca</div>' +
                    '<div class="iw-content">' +
                      '<div class="iw-subTitle">Entidade Responsável:</div>' +
                      '<p class="infoContent">Cooperativa RUMO<p class="infoContent">' +
                      '<div class="iw-subTitle">Coordenação</div>' +
                      '<p class="infoContent">Débora Oliveira'+
                      '<div class="iw-subTitle">Contactos</div>' +
                      '<p class="infoContent"><b>Telefone:</b> 96 370 79 12'+
                      '<br><b>Email:</b> gip@rumo.org.pt'+
                      '<br><b>Morada:</b> Rua 6 – Casa Amarela , 2835-511 Cidade do Sol, Santo António da Charneca</p>'+
                    '</div>' +
                    '<div class="iw-bottom-gradient"></div>' +
                  '</div>'
        },

        // RSI Coina
        {
          coords:{lat:38.593956,lng:-9.045152},
          content:'<div id="iw-container">' +
                    '<div class="iw-title">Protocolo do Rendimento Social de Inserção (RSI) – Coina</div>' +
                    '<div class="iw-content">' +
                      '<div class="iw-subTitle">Entidade Responsável:</div>' +
                      '<p class="infoContent">CATICA – Centro Comunitário de Coina<p class="infoContent">' +
                      '<div class="iw-subTitle">Coordenação</div>' +
                      '<p class="infoContent">Ana Conduto '+
                      '<div class="iw-subTitle">Contactos</div>' +
                      '<p class="infoContent"><b>Telefone:</b> 92 752 64 35/01'+
                      '<br><b>Fax:</b> 21 210 95 3'+
                      '<br><b>Email:</b> caticarsi@gmail.com | caticarsidalia@gmail.com'+
                      '<br><b>Morada:</b> Rua D. Manuel I nº16, 2830-416 Coina</p>'+
                    '</div>' +
                    '<div class="iw-bottom-gradient"></div>' +
                  '</div>'
        },

        // GIP Baixa da Banheira
        {
          coords:{lat:38.64561968,lng:-9.02516517},
          content:'<div id="iw-container">' +
                    '<div class="iw-title">Gabinete de Inserçãofafsafsa (GIP) – Baixa da Banheira</div>' +
                    '<div class="iw-content">' +
                      '<div class="iw-subTitle">Entidade Responsável:</div>' +
                      '<p class="infoContent">CRIBB - Centro de Reformados e Idosos da Baixa da Banheira<p class="infoContent">' +
                      '<div class="iw-subTitle">Coordenação</div>' +
                      '<p class="infoContent">Cátia Nunes'+
                      '<div class="iw-subTitle">Contactos</div>' +
                      '<p class="infoContent"><b>Telefone:</b> 92 654 70 44'+
                      '<br><b>Email:</b> gip@cribb.pt'+
                      '<br><b>Morada:</b> Centro de Reformados e Idosos da Baixa da Banheira Rua da Amizade 73, 2835-180 Baixa da Banheira</p>'+
                    '</div>' +
                    '<div class="iw-bottom-gradient"></div>' +
                  '</div>'
        },

        //CLDS Moita
        {
          coords:{lat:38.64258535,lng:-9.03892104},
          content:'<div id="iw-container">' +
                    '<div class="iw-title">Contrato Local de Desenvolvimento Social (CLDS) Moita</div>' +
                    '<div class="iw-content">' +
                      '<div class="iw-subTitle">Entidade Responsável:</div>' +
                      '<p class="infoContent">Rumo, Cooperativa de Solidariedade Social, CRL<p class="infoContent">' +
                      '<div class="iw-subTitle">Coordenação</div>' +
                      '<p class="infoContent">Laura Pinheiro'+
                      '<div class="iw-subTitle">Contactos</div>' +
                      '<p class="infoContent"><b>Telefone:</b> 933 211 701 | 961 143 135'+
                      '<br><b>Email:</b> cldsmoita@rumo.org.pt'+
                      '<br><b>Facebook:</b> www.facebook.com/intervirparaincluir'+
                      '<br><b>Morada:</b> Avenida José Almada Negreiros, Centro Multiserviços do Vale de Amoreira</p>'+
                    '</div>' +
                    '<div class="iw-bottom-gradient"></div>' +
                  '</div>'
        },

        //CLDS Barreiro
        {
          coords:{lat:38.66423042,lng:-9.07722987},
          content:'<div id="iw-container">' +
                    '<div class="iw-title">Contrato Local de Desenvolvimento Social (CLDS) Barreiro</div>' +
                    '<div class="iw-content">' +
                      '<div class="iw-subTitle">Entidade Responsável:</div>' +
                      '<p class="infoContent">Rumo, Cooperativa de Solidariedade Social, CRL<p class="infoContent">' +
                      '<div class="iw-subTitle">Coordenação</div>' +
                      '<p class="infoContent">Susana Santos'+
                      '<div class="iw-subTitle">Contactos</div>' +
                      '<p class="infoContent"><b>Telefone:</b> 212071130'+
                      '<p class="infoContent"><b>Telemovel:</b> 934187678 | 963907050'+
                      '<br><b>Email:</b> clds3gbarreiro@gmail.com'+
                      '<br><b>Morada:</b> Trv. St. Cruz Nº17, 2830-302 Barreiro</p>'+
                    '</div>' +
                    '<div class="iw-bottom-gradient"></div>' +
                  '</div>'
        },

        // TEMPLATE PREPARADO
        // {
        //   coords:{lat:,lng:},
        //   content:'<div id="iw-container">' +
        //             '<div class="iw-title"></div>' +
        //             '<div class="iw-content">' +
        //               '<div class="iw-subTitle">Entidade Responsável:</div>' +
        //               '<p class="infoContent"><p class="infoContent">' +
        //               '<div class="iw-subTitle"></div>' +
        //               '<p class="infoContent">Carlos Franqueira'+
        //               '<div class="iw-subTitle"></div>' +
        //               '<p class="infoContent"><b>Telefone:</b> '+
        //               '<br><b>Email:</b> '+
        //               '<br><b>Morada:</b> </p>'+
        //             '</div>' +
        //             '<div class="iw-bottom-gradient"></div>' +
        //           '</div>'
        // },
      ];

      // Loop through markers
      for(var i = 0;i < markers.length;i++){
        // Add marker
        addMarker(markers[i]);
      }

      // // Listen for click on map
      // google.maps.event.addListener(map, 'click', function(event){
      //   // Add marker
      //   infowindow.close();
      // });

      // Add Marker Function
      function addMarker(props){
        var marker = new google.maps.Marker({
          position:props.coords,
          map:map,
          //icon:props.iconImage
        });

        // Check for customicon
        if(props.iconImage){
          // Set icon image
          marker.setIcon(props.iconImage);
        }

        // Check content
        if(props.content){
          var infoWindow = new google.maps.InfoWindow({
            content:props.content
          });

          marker.addListener('click', function(){
            if(!marker.open){
                infoWindow.open(map,marker);
                marker.open = true;
            }else{
                infoWindow.close();
                marker.open = false;
            }
            google.maps.event.addListener(map, 'click', function() {
                infoWindow.close();
                marker.open = false;
            });
          });
        }
      }
    }

    </script>
    <!-- Google Maps -->
<script async defer
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAjtIPM3j8bsGMKbpg9-uY29393afqAZNs&callback=initMap">
</script>
  </body>
</html>
