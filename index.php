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

    <!-- Header | Slider -->
    <header>
      <div id="carouselIndicators" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner" role="listbox">
          <!-- Slide 1 -->
          <div class="carousel-item overlay active" style="background-image: url('images/slider/img1.jpeg')"></div>
          <!-- Slide 2 -->
          <div class="carousel-item overlay" style="background-image: url('images/slider/img2.jpeg')"></div>
          <!-- Slide 3 -->
          <div class="carousel-item overlay" style="background-image: url('images/slider/img3.jpeg')"></div>
          <!-- Slide 4 -->
          <div class="carousel-item overlay" style="background-image: url('images/slider/img4.jpeg')"></div>
          <!-- Slide 5 -->
          <div class="carousel-item overlay" style="background-image: url('images/slider/img5.jpeg')"></div>

        </div>

        <a class="carousel-control-prev" href="#carouselIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </header>


  
    
    <div class="container">
      <!-- Modal -->
      <div class="modal fade" id="modalFDL" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="modalTitulo">Bem-vindo!</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              Já assistiu ao nosso Fórum de Desenvolvimento Local, onde alguns temas sobre a Sustentabilidade e Inovação são discutidos?</br>
              <a href="https://www.youtube.com/watch?v=zZ8CCRs4Qok&t=2s">Clique aqui</a> para ser redirecionado ao fórum.
              Obrigado!
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn1" data-dismiss="modal">Fechar</button>
            </div>
          </div>
        </div>
      </div>
      <!-- News section -->
      <div class="row">
        <!-- Latest news -->
        <div class="col-md-12">
          <div class="row">
            <div class="col-12 py-4 pb-4">
              <div class="newspaper_icon"><i class="far fa-newspaper"></i></div>
              <h2 class="pl-5 my-title">ÚLTIMAS <span class="green-text">NOTÍCIAS</span></h2>
            </div>
            <?php
              include_once("db/dataAccess.php");
              $da = new dataAccess();
              $res = $da->getUltimas6Noticias();
              if (mysqli_num_rows($res) != 0){
                while($row=mysqli_fetch_assoc($res)){
                  $idNoticia = $row['id'];
                  $imagemNoticia = $row['imagemNoticia'];
                  $tituloNoticia = $row['titulo'];
                  $apresentaNoticia = $row['textoApresentacao'];
                  echo '
                  <a href="noticias.php?n='.$idNoticia.'">
                    <div class="col-lg-4 mb-4">
                      <div class="card h-100" style="width:350px; padding:25px">
                          <img class="card-img-top img-news" src="images/noticias/'.$imagemNoticia.'" alt="">
                        </a>
                          <div class="card-body">
                            <div class="card-title news-title">'.$tituloNoticia.'</div>
                            <div class="card-text news-content">'.$apresentaNoticia.'</div>
                          </div>
                      </div>
                    </div>
                  </a>
                  ';
                }
              }else{
                echo '<h3>Nenhuma notícia disponível de momento.</h3>';
              }
            ?>
          </div>
        </div>
        <!-- Latest news end -->

      <!--
      <video width="1080" height="720" controls>
        <source src="videos/REBMVideodeapresentação.mp4" type="video/mp4">
        <source src="videos/REBMVideodeapresentação.ogg" type="video/ogg"> Your browser does not support the video tag.
      </video>
       -->


        <!-- Search news end-->
      </div>
      <!-- News section end -->
    </div>
    <?php include_once("footer.php");?>
    <script>
      $(document).ready(function(){
        // Quando o utilizador clicar no botão de pesquisar executa
        $("#btn-pesquisar").on("click", function(e){
          // Desativa o default do botão
          e.preventDefault();
          $('#loading-imageInicio').show();
          // Vai buscar os valores de cada campo do formulário
          var txtPesquisa = $("#txtPesquisa").val();
          // Envia para o ficheiro
          $.ajax({
            url: "db/getNoticiasInicial.php",
            method: "POST",
            dataType: "text",
            data: {
              txtPesquisa:txtPesquisa,
            }
            // Quando estiver feito, mostra os dados na div #noticiasDireita
          }).done(function(returnedData){
            window.setTimeout(function() {
              $('#loading-imageInicio').hide();
              $("#noticiasDireita").html(returnedData);
              $("#noticiasDireita, body").animate({ scrollTop: 0 }, "slow");
            }, 800);
          })
        });

        $('#txtPesquisa').keypress(function(e){
          if(e.which == 13){
            $('#btn-pesquisar').click();
          }
        });
      });
  </script>


<!--script para modal -->
  <script type="text/javascript">
    /*
    $(window).on('load',function(){
        $('#modalFDL').modal('show');
    });
    */
  </script>
  </body>
</html>
