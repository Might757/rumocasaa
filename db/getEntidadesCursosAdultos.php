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
     $res = $da->getAllEntidadesCursosByName($pesquisa);
   } else {
     $res = $da->getAllEntidadesCursos();
   }
   
   
   if (mysqli_num_rows($res) != 0){
     echo "<label id='ultimaPag' style='display: none;'></label>";
     while($row = mysqli_fetch_assoc($res)){
       $escola_id = $row['idEntidade'];
       $nomeEscola = $row['entidade'];
       $curso_id = $row['idCurso'];
       $nomeCurso = $row['nome'];
       
       echo       "
       <tr>
       <td><a target = '_blank' class='linked-in-table'>".$nomeEscola."</a></td>
       <td><a target = '_blank' class='linked-in-table'>".$nomeCurso."</a></td>
       <td entidade_id='".$escola_id."' curso_id='".$curso_id."' id='edit-button'  name='edit-button'><a href ='#'><i class='fas fa-edit edit-button'></i></a></td>
       <td entidade_id='".$escola_id."' curso_id='".$curso_id."'  name='delete-button'><a href ='#'><i class='fas fa-trash-alt delete-button'></i></a></td>
       </tr>
       ";
     }
   }else{
     echo       '
     <tr>
     <td colspan="6">Não foram encontrados resultados.</td>
     </tr>
     ';
   }
 }else{
   echo "<script>window.location.replace('../index.php');</script>";
 }
?>
