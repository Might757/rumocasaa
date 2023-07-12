<?php
 session_start();
 if(!isset($_SESSION['idTipoDePermissao'])){
   echo "<script>window.location.replace('../index.php');</script>";
 }else if($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2){
   $pesquisa = $_POST['txtPesquisa'];
   $pesquisarNome = false;
   $pagina = $_POST['page'];
   $limitePorPag = 10;

   if ($pesquisa != ""){
     $pesquisarNome = true;
   } else {
     $pesquisarNome = false;
   }

   include_once("dataAccess.php");
   $da = new dataAccess();
   $inicio = ($pagina - 1) * $limitePorPag;
   if($pesquisarNome == true){
     $row = $da->getQntNoticiasPesquisa($pesquisa);
   } else {
     $row = $da->getQntNoticias();
   }
   $totalRows = $row[0];
   $ultimaPag = ceil($totalRows/$limitePorPag);
   if ($ultimaPag < 1){
     $ultimaPag = 1;
   }
   $res = $da->getNoticiasPorPag($inicio, $limitePorPag, $pesquisa, $pesquisarNome);
   if (mysqli_num_rows($res) != 0){
     echo "<label id='ultimaPag' style='display: none;'>".$ultimaPag."</label>";
     while($row = mysqli_fetch_assoc($res)){
       $id = $row['id'];
       $titulo = $row['titulo'];
       $autor = $row['autor'];
       $data = $row['dataNoticia'];
       $dataNoticia = date( 'd-m-Y', strtotime($data));
       $img = $row['imagemNoticia'];
       echo       "
       <tr>
       <td><a target = '_blank' href='noticias.php?n=".$id."' class='linked-in-table'>".$titulo."</a></td>
       <td> ".$autor." </td>
       <td> ".$dataNoticia." </td>
       <td> <img src='images/noticias/".$img."' height=60 width=100></img></td>
       <td id='$id' name='edit-button'><a href ='#'><i class='fas fa-edit edit-button'></i></a></td>
       <td id='$id' name='delete-button'><a href ='#'><i class='fas fa-trash-alt delete-button'></i></a></td>
       </tr>
       ";
     }
   }else{
     echo       '
     <tr>
     <td colspan="6">Não foram encontradas notícias.</td>
     </tr>
     ';
   }
 }else{
   echo "<script>window.location.replace('../index.php');</script>";
 }
?>
