<?php
 session_start();
   $pesquisa = $_POST['txtPesquisa'];
     include_once("dataAccess.php");
     $da = new dataAccess();
     $res = $da->getNoticiasPorPesquisa($pesquisa);
     if (mysqli_num_rows($res) != 0){
       while($row = mysqli_fetch_assoc($res)){
         $idNoticia = $row['id'];
         $tituloNoticia = $row['titulo'];
         $imagemNoticia = $row['imagemNoticia'];
         echo       '
                     <div class="col-lg-12 mb-4">
                       <a href="noticias.php?n='.$idNoticia.'">
                         <img class="card-img-top img-searched-news" src="images/noticias/'.$imagemNoticia.'" alt="">
                         <div class="searched-news-title">'.$tituloNoticia.'</div>
                       </a>
                     </div>
                    ';
       }
     }else{
       echo '<h3>Nenhuma notícia disponível de momento.</h3>';
     }
?>
