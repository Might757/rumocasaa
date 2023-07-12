<?php
 session_start();
 if(!isset($_SESSION['idTipoDePermissao'])){
   echo "<script>window.location.replace('../index.php');</script>";
 }else if($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2){
   $pesquisa = $_POST['txtPesquisa'];
   $pesquisarNome = false;

   if ($pesquisa != ""){
     $pesquisarNome = true;
   } else {
     $pesquisarNome = false;
   }

   include_once("ofertaFormativa.php");
   $da = new OfertaFormativa();
   if($pesquisarNome == true){
     $res = $da->getCursosByName($pesquisa);
   } else {
     $res = $da->getCursos();
   }
   
   
   if (mysqli_num_rows($res) != 0){
     echo "<label id='ultimaPag' style='display: none;'></label>";
     while($row = mysqli_fetch_assoc($res)){
       $id = $row['id'];
       $nome = $row['nome'];
       
       echo       "
       <tr>
       <td><a target = '_blank' class='linked-in-table'>".$nome."</a></td>
       <td id='$id' name='edit-button'><a href ='#'><i class='fas fa-edit edit-button'></i></a></td>
       <td id='$id' name='delete-button'><a href ='#'><i class='fas fa-trash-alt delete-button'></i></a></td>
       </tr>
       ";
     }
   }else{
     echo       '
     <tr>
     <td colspan="6">Não foram encontrados cursos.</td>
     </tr>
     ';
   }
 }else{
   echo "<script>window.location.replace('../index.php');</script>";
 }
?>
