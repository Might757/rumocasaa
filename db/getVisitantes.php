<?php
 session_start();
 if(!isset($_SESSION['idTipoDePermissao'])){
   echo "<script>window.location.replace('../index.php');</script>";
 }else if($_SESSION['idTipoDePermissao'] == 1 || $_SESSION['idTipoDePermissao'] == 2){
   if($_GET['num'] == 1){
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
     $res = $da->getVisitantesByEscolaNome($pesquisa);
   } else {
     $res = $da->getVisitantes();
   }
   
    $num = 0;
    $num2 = 0;
   //$res = $da->getVisitantes();
   if (mysqli_num_rows($res) != 0){
     while($row = mysqli_fetch_assoc($res)){
       $num = $row['escola_id'];
      if($num2 == 0 || $num != $num2){
        $num2 = $row['escola_id'];
        $nomeEscola = $row['nomeEscola'];
        $numRows = $da->getNumVisitantes($num2);
        echo       "
        <tr>
        <td> ".$nomeEscola." </td>
        <td> ".$numRows." </td>
        </tr>
        ";        
      }
      
     }
   }else{
     echo       '
     <tr>
     <td colspan="6">Não foram encontradas escolas.</td>
     </tr>
     ';
   }
  }else if($_GET['num'] == 2){
    
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
   $res = $da->getVisitantesCursosByName($pesquisa);
   } else {
     $res = $da->getVisitantesCursos();
   }
   
    $num = 0;
    $num2 = 0;
   
   if (mysqli_num_rows($res) != 0){
     while($row = mysqli_fetch_assoc($res)){
       $num = $row['curso_id'];
      if($num2 == 0 || $num != $num2){
        $num2 = $row['curso_id'];
        $nomeCurso = $row['nomeCurso'];
        $numRows = $da->getNumVisitantesCursos($num2);
        echo       "
        <tr>
        <td> ".$nomeCurso." </td>
        <td> ".$numRows." </td>
        </tr>
        ";        
      }
      
     }
   }else{
     echo       '
     <tr>
     <td colspan="6">Não foram encontrados cursos.</td>
     </tr>
     ';
   }
  }else{
    echo "erro";
  }
 }else{
   echo "<script>window.location.replace('../index.php');</script>";
 }
?>
