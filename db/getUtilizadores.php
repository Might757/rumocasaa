<?php
 session_start();
 if(!isset($_SESSION['idTipoDePermissao'])){
   echo "<script>window.location.replace('../index.php');</script>";
 }else if($_SESSION['idTipoDePermissao'] != 1){
   echo "<script>window.location.replace('../index.php');</script>";
 }else{
   $pesquisa = $_POST['txtPesquisa'];
   $frontOffice = $_POST['frontOffice'];
   $permissao = $_POST['permissao'];
   include_once("dataAccess.php");
   $da = new dataAccess();
   $res = $da->getUtilizadoresPesquisa($pesquisa, $frontOffice, $permissao);
   if (mysqli_num_rows($res) != 0){
     while($row = mysqli_fetch_assoc($res)){
       if($row['idTiposDePermissoes'] != "" && $row['idTiposDePermissoes'] != -1){
           $nomePermisssao = $da->getNomePermissao($row['idTiposDePermissoes']);
       }else{
           $nomePermisssao = "Não especificado";
       }
       if($row['idFrontOffice'] != "" && $row['idFrontOffice'] != -1){
           $frontOffice = $da->getNomeFrontOffice($row['idFrontOffice']);
       }else{
           $frontOffice = "Não especificado";
       }

       $id = $row['id'];
       $nome = $row['nome'];
       $email = $row['email'];
       $ativo = $row['ativo'];

       if($ativo == 1){
         echo "
               <tr>
                 <td>$nome</td>
                 <td>$email</td>
                 <td>$frontOffice</td>
                 <td>$nomePermisssao</td>
                 <td id='$id' name='edit-button'><a href ='#'><i class='fas fa-user-edit edit-button'></i></a></td>
                 <td id='$id' name='delete-button'><a href ='#'><i class='fas fa-user-times delete-button'></i></a></td>
               </tr>
             ";
       }else{
         echo "
               <tr>
                 <td>$nome</td>
                 <td>$email</td>
                 <td>$frontOffice</td>
                 <td>$nomePermisssao</td>
                 <td id='$id' name='edit-button'><a href ='#'><i class='fas fa-user-edit edit-button'></i></a></td>
                 <td id='$id' name='enable-button'><a href ='#'><i class='fas fa-user-check edit-button'></i></a></td>
               </tr>
             ";
       }
     }
   }else{
     echo       '
     <tr>
     <td colspan="6">Não foram encontrados utilizadores.</td>
     </tr>
     ';
   }
 }
?>
