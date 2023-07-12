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
    <script type="text/javascript" src="https://platform-api.sharethis.com/js/sharethis.js#property=5f995d7b404e8800194d5a60&product=sticky-share-buttons" async="async"></script>
  </head>

  <body>
    <?php include_once("navbar.php");?>

    <div class="container">
      <!-- News section -->
      <div class="row" pr-4>
        <!-- Read News -->
        <div class="col-md-12 offset-md-0">
          <div class="row">
            <!-- News -->
            <?php
              if(isset($_GET['n'])){
                $id = $_GET['n'];
                include_once("db/dataAccess.php");
                $da = new dataAccess();
                $res = $da->getNoticia($id);
                if (mysqli_num_rows($res) != 0){
                  $row = mysqli_fetch_assoc($res);
                  $imagemNoticia = $row['imagemNoticia'];
                  $tituloNoticia = $row['titulo'];
                  $textoNoticia = $row['texto'];
                  $autorNoticia = $row['autor'];
                  $data = $row['dataNoticia'];
                  $dataNoticia = date( 'd-m-Y', strtotime($data));
                  if (!empty($row['linkVideo'])) {
                    $embedVideo = $row['linkVideo'];
                    echo '
                      <div class="col-lg-12">
                        <h3 class="green-text pl-2 py-4" id="news-title">'.$tituloNoticia.'</h3>
                      </div>
                      <div class="col-lg-12">
                        <img class="img-read-news pb-2" src="images/noticias/'.$imagemNoticia.'" alt="NoticiaIMG">
                        <div class="news-content">'.$textoNoticia.'</div>
                        <br/>
                        <iframe width="560" height="315" class="video-player" src="'.$embedVideo.'" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                      </div>
                    ';
                  } else {
                    echo '
                      <div class="col-lg-12">
                        <h3 class="green-text pl-2 py-4" id="news-title">'.$tituloNoticia.'</h3>
                      </div>
                      <div class="col-lg-4">
                        <img class="img-read-news pb-2" src="images/noticias/'.$imagemNoticia.'" alt="NoticiaIMG">                        
                      </div>
                      <div class="col-lg-8">                        
                        <div class="news-content">'.$textoNoticia.'</div>
                      </div>
                    ';
                  }
                }else{
                  echo '<h2 class="py-4 px-4">Não foi possível encontrar esta notícia</h2>';
                }
              }
            ?>
          </div>
          <!-- News end -->
        </div>
      </div>
        <div class="row">
          <div class="col-lg-12 col-md-12">
          <a class="custom-btn btn-6" href="index.php"><span><i class="fas fa-arrow-left" style="margin-right: 15px;"></i>Voltar</span></a>
          </div>
        </div>
    </div>
    <?php include_once("footer.php");?>

  </body>
</html>
