<?php
  if(isset($_GET['table'])){
    // Vai buscar todos os membros inseridos na BD, e faz echo do código HTML juntando os dados de cada membro, enquanto existirem membros.
    include_once("dataAccess.php");
    $da = new dataAccess();
    $res = $da->getMembros();
    if (mysqli_num_rows($res) != 0){
      while($row = mysqli_fetch_assoc($res)){
        $id = $row['id'];
        $nome = $row['nome'];
        $link = $row['link'];
        $img = $row['logotipo'];
        echo       "
        <tr>
        <td> ".$nome." </td>
        <td> ".$link." </td>
        <td> <img src='images/membros/".$img."' height=60px width=80px></img></td>
        <td id='$id' name='edit-button'><a href ='#'><i class='fas fa-edit edit-button'></i></a></td>
        <td id='$id' name='delete-button'><a href ='#'><i class='fas fa-trash-alt delete-button'></i></a></td>
        </tr>
        ";
      }
    }else{
      echo       '
      <tr>
      <td colspan="5">Não foi possível encontrar nenhum membro.</td>
      </tr>
      ';
    }

  }else{
    // Vai buscar todos os membros inseridos na BD, e faz echo do código HTML juntando os dados de cada membro, enquanto existirem membros.
    include_once("dataAccess.php");
    $da = new dataAccess();
    $res = $da->getMembros();
    if (mysqli_num_rows($res) != 0){
      while($row=mysqli_fetch_assoc($res)){
        $id = $row['id'];
        $nome = $row['nome'];
        $logotipo= $row['logotipo'];
        $link = $row['link'];
        echo '
        <div class="col-6 col-md-3 py-2">
          <a class="thumbnail" href="'.$link.'">
              <img class="logo-membro" src="images/membros/'.$logotipo.'" alt="'.$nome.'">
          </a>
        </div>
        ';
      }
    }else{
      echo '<h3>Não foi possível encontrar nenhum membro.</h3>';
    }
  }
?>
