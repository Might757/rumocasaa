<?php

include_once('dataAccess.php');

class OfertaFormativa extends dataAccess{
    public function getConcelhos(){ 
        $query = "select id, concelho from concelhos";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res))
            array_push($arr, $row);

        return json_encode($arr);
    }

    public function getEscolas(){ 
        $query = "select id, nome from escolas";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res))
            array_push($arr, $row);

        return json_encode($arr);
    }

    public function getEscolasByConcelho($idConcelho){ 
        $query = "select id, nome from escolas where concelho_id = $idConcelho";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res))
            array_push($arr, $row);

        return json_encode($arr);
    }



    public function getNivelEnsino(){ 
        $query = "select id, nivel from niveisEnsino";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res))
            array_push($arr, $row);

        return json_encode($arr);
    }

    public function getNivelEnsinoByEscola($idEscola){ 
        $query = "select curso_id from escolasCursos where escola_id = $idEscola";
        $res = parent::bridge($query);
        $arr = [];
        $num = 0;
        while($row = mysqli_fetch_object($res)){
            $query = "select tipoCurso_id from cursos where id = $row->curso_id";
            $res2 = parent::bridge($query);
            $row2 = mysqli_fetch_object($res);
            if($num == 0 || $num != $row2->tipoCurso_id){
                $query = "select nivelEnsino_id from tiposCursos where id = $row2->tipoCurso_id";
                $res3 = parent::bridge($query);
                $row3 = mysqli_fetch_object($res3);
                $query = "select * from nivelEnsino where id = $row3->nivelEnsino_id";
                $res3 = parent::bridge($query);
                $row3 = mysqli_fetch_object($res3);
                array_push($arr, $row3);
            }
            $num = $row2->tipoCurso_id;
        }
        return json_encode($arr);
    }

    public function getTiposCursos($idEnsino){ 
        $query = "select id, tipo from tiposCursos";
        if($idEnsino != "todosEnsino"){
            $query .= " where nivelEnsino_id = $idEnsino";
        }else{
            $query .= " where nivelEnsino_id = 1 union select id, tipo from tiposCursos where nivelEnsino_id = 3";
        }
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res))
            array_push($arr, $row);

        return json_encode($arr);
    }

    public function getEscolasCursos($idConcelho, $idEscola, $idTipoCurso, $idEnsino, $nomeEscola){
        $query = "select id from escolas where nome like '%$nomeEscola%'";
        if($idConcelho != "todosConcelhos" && $idConcelho != "null"){
            $query .= " and concelho_id = $idConcelho";            
        }

        if($idEscola != "todasEscolas" && $idEscola != "null"){
            if($nomeEscola == ""){
                $query .= " and ";
            }else{
                $query .= " union select id from escolas where ";
            }
            $query .= "id = $idEscola";
        }

        $res = parent::bridge($query);
        
        if($idTipoCurso == "null"){
            if($idEnsino != "null"){
                $query3 = "select id from tiposCursos where nivelEnsino_id = $idEnsino";
                $res3 = parent::bridge($query3);
                $num = 0;
                $query2 = "";
                while($row = mysqli_fetch_object($res3)){
                    if($num == 1){
                        $query2 .= " UNION ";
                    }
                    $query2 .= "select id from cursos where tipoCurso_id = $row->id";
                    $num = 1;
                }

            }else{
                $query2 = "select id from cursos";
            }
        }else{
            $query2 = "select id from cursos where tipoCurso_id = $idTipoCurso";
        }

        $res2 = parent::bridge($query2);    

        $arr = [];
        while($row = mysqli_fetch_object($res)){
            while($row2 = mysqli_fetch_object($res2)){
                $query = "select * from escolasCursos where escola_id = $row->id and curso_id = $row2->id";
                
                $res3 = parent::bridge($query);
                if(mysqli_num_rows($res3) != 0){
                    $query = "select distinct escolas.latitude, escolas.longitude,
                                escola_id, curso_id, escolas.nome as escola, escolas.morada, escolas.email, 
                                escolas.telefone telefone, escolas.link link, cursos.nome as curso, TC.tipo 
                                from escolasCursos inner join escolas on escolasCursos.escola_id = escolas.id 
                                inner join cursos on escolasCursos.curso_id = cursos.id 
                                inner join tiposCursos TC on cursos.tipocurso_id = TC.id
                                where escola_id = $row->id and curso_id = $row2->id
                                order by TC.tipo asc";
                    $res4 = parent::bridge($query);
                    $row4 = mysqli_fetch_object($res4);
                    array_push($arr, $row4);                    
                }
            }    
            mysqli_data_seek($res2,0);
        }       
        return json_encode($arr);
    }

    public function getEscolasCursos2($idConcelho, $idEscola, $idTipoCurso, $idEnsino, $nomeEscola, $anoLetivo){

        $query = "select distinct escolas.latitude, escolas.longitude,
                escola_id, curso_id, escolas.nome as escola, escolas.morada, escolas.email, 
                escolas.telefone telefone, escolas.link link, cursos.nome as curso, TC.tipo, 
                TC.id as idTipoCurso, TC.small
                from escolasCursos 
                inner join escolas on escolasCursos.escola_id = escolas.id 
                inner join cursos on escolasCursos.curso_id = cursos.id 
                inner join tiposCursos TC on cursos.tipocurso_id = TC.id
                inner join niveisEnsino NE on NE.id = TC.nivelEnsino_id
                where escolasCursos.anoLetivo_id = $anoLetivo and escolas.nome like '%$nomeEscola%' ";

        if($idConcelho != "todosConcelhos" && $idConcelho != "null"){
            $query .= " and escolas.concelho_id = $idConcelho ";            
        }

        if($idEscola != "todasEscolas" && $idEscola != "null"){
            /*
            if($nomeEscola != ""){
                $query .= " and escolas.id = $idEscola";
            }else{
                $query .= " union (select id from escolas where escolas.id = $idEscola)";
            }*/
            $query .= " and escolas.id = $idEscola ";
        }

        if($idEnsino != "null" && $idEnsino != "todosEnsino"){
            $query .= " and NE.id = ".$idEnsino;
        }

        if($idTipoCurso != "null"){
            $query .= " and cursos.tipoCurso_id = ". $idTipoCurso;
        }
            
        $query .= " order by escolas.nome, TC.tipo, cursos.nome asc ";
        //echo $query;

        $res = parent::bridge($query);

        $arr = [];
        while($row = mysqli_fetch_object($res)){
            array_push($arr, $row);                    
        }       
        return json_encode($arr);
    }

    public function getEscolaCursoInfo($idEscola, $idCurso){
        $query = "select * from escolas where id = $idEscola";
        $res = parent::bridge($query);
        $row = mysqli_fetch_object($res);
        $query = "select nome as curso, objetivos, saidasProfissionais, descricao, tipoCurso_id from cursos where id = $idCurso";
        $res = parent::bridge($query);
        $row2 = mysqli_fetch_object($res);
        $query = "select distinct outraInfo from escolasCursos where escola_id = $idEscola and curso_id = $idCurso";
        $res = parent::bridge($query);
        $row3 = mysqli_fetch_object($res);
        $query = "select tipo, icone from tiposCursos where id = $row2->tipoCurso_id";
        $res = parent::bridge($query);
        $row4 = mysqli_fetch_object($res);
        $obj_merged = (object) array_merge((array) $row, (array) $row2, (array) $row3, (array) $row4);
        return json_encode($obj_merged);
    }

    public function getEscolasByName($nomeEscola){
        $query = "select id from escolas where nome like '%$nomeEscola%'";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res)){
            $query = "select * from escolasCursos where escola_id = $row->id";
            $res2 = parent::bridge($query);
            while($row2 = mysqli_fetch_object($res2)){
                $query = "select escola_id, curso_id, escolas.nome escola, cursos.nome as curso from escolasCursos inner join escolas on escolasCursos.escola_id = escolas.id inner join cursos on escolasCursos.curso_id = cursos.id where escola_id = $row->id and curso_id = $row2->curso_id";
                $res4 = parent::bridge($query);
                $row4 = mysqli_fetch_object($res4);
                array_push($arr, $row4);                    
            }    
        }       
        return json_encode($arr);
    }

    public function getTipoCursoDescricao($idTipoCurso){
        $query = "select descricao from tiposCursos where id = $idTipoCurso";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res)){
            array_push($arr, $row);                
        }       
        return json_encode($arr);
    }

    public function getEscolasMap(){
        $query = "select * from escolas";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res)){
            array_push($arr, $row);                
        }       
        return json_encode($arr);
    }

    public function getVisitantes(){
        $query = "select escolas.nome as nomeEscola, cursos.nome as nomeCurso, escola_id, curso_id  from visitantes inner join escolas on visitantes.escola_id=escolas.id inner join cursos on visitantes.curso_id = cursos.id order by escolas.nome asc";
        $res = parent::bridge($query);
        return $res;
    }    

    public function addVisitante($idEscola, $idCurso){
        if(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
            $ip_address = $_SERVER['HTTP_X_FORWARDED_FOR'];
        } else {
            $ip_address = $_SERVER['REMOTE_ADDR'];
        }
        $query = "select * from visitantes where ip = '$ip_address' and escola_id = $idEscola and curso_id = $idCurso";
        $res = parent::bridge($query);
        if(mysqli_num_rows($res) == 0){
            $query = "insert into visitantes(ip, escola_id, curso_id) values ('$ip_address', $idEscola, $idCurso)";
            $res = parent::bridge($query);
        }
        return $ip_address;
    }

    public function insertCurso($nomeCurso, $objetivos, $saidasProfissionais, $descricao, $idTipoCurso){
        $query = "select * from cursos where nome='$nomeCurso'";
        $res = parent::bridge($query);
        $res = mysqli_num_rows($res);
        if($res == 0){
            $query = "insert into cursos(nome, objetivos, saidasProfissionais, descricao, tipoCurso_id) values('$nomeCurso', '$objetivos', '$saidasProfissionais', '$descricao', $idTipoCurso)";
            $res = parent::bridge($query);
            return 1;
        }else{
            return 0;
        }
    }
    
    public function updateCurso($idCurso, $nomeCurso, $descricao, $idTipoCurso){
        $query = "update cursos set nome='$nomeCurso', descricao='$descricao', tipoCurso_id=$idTipoCurso
                    where id=$idCurso";
        $res = parent::bridge($query);
        return 1;
    }

    public function deleteCurso($idCurso){
        $query = "delete from escolasCursos where curso_id=$idCurso";
        $res = parent::bridge($query);
        $query = "delete from visitantes where curso_id=$idCurso";
        $res = parent::bridge($query);
        $query = "delete from cursos where id=$idCurso";
        $res = parent::bridge($query);
        return 1;
    }

    public function getCursos(){
        $query = "select * from cursos";
        $res = parent::bridge($query);   
        return $res;
    }

    public function getCursosByName($nomeCurso){
        $query = "select * from cursos where nome like '%$nomeCurso%'";
        $res = parent::bridge($query);
        return $res;
    }

    public function getCursoById($idCurso){
        $query = "select * from cursos where id=$idCurso";
        $res = parent::bridge($query);     
        return $res;
    }
    
    public function getAllTiposCursos(){
        $query = "select * from tiposCursos ";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res)){
            array_push($arr, $row);                
        }       
        return json_encode($arr);
    }

    public function getAllEscolas(){
        $query = "select * from escolas";
        $res = parent::bridge($query);   
        return $res;
    }

    public function getAllEscolasByName($nomeCurso){
        $query = "select * from escolas where nome like '%$nomeCurso%'";
        $res = parent::bridge($query);
        return $res;
    }

    public function getEscolaById($id){
        $query = "select * from escolas where id=$id";
        $res = parent::bridge($query);   
        return $res;
    }

    public function updateEscola($idEscola, $nomeEscola, $morada, $telefone, $email, $link, $latitude, $longitude, $idConcelho){
        $query = "update escolas set nome='$nomeEscola', morada='$morada', telefone=$telefone, email='$email', link='$link', latitude='$latitude', longitude='$longitude', concelho_id=$idConcelho
                    where id=$idEscola";
        $res = parent::bridge($query);
        return 1;
    }

    public function insertEscola($nomeEscola, $morada, $telefone, $email, $link, $latitude, $longitude, $idConcelho){
        $query = "select * from escolas where nome='$nomeEscola'";
        $res = parent::bridge($query);
        $res = mysqli_num_rows($res);
        if($res == 0){
            $query = "insert into escolas(nome, morada, telefone, email, link, latitude, longitude, concelho_id) values('$nomeEscola', '$morada', $telefone, '$email', '$link', '$latitude', '$longitude', $idConcelho)";
            $res = parent::bridge($query);
            return 1;
        }else{
            return 0;
        }
    }

    public function deleteEscola($idEscola){
        $query = "delete from escolasCursos where escola_id=$idEscola";
        $res = parent::bridge($query);
        $query = "delete from visitantes where escola_id=$idEscola";
        $res = parent::bridge($query);
        $query = "delete from escolas where id=$idEscola";
        $res = parent::bridge($query);
        return 1;
    }

    public function getAllEscolasCursos($anoLetivo){
//        echo "anoletivo".$anoLetivo;
        if ($anoLetivo == "") $anoLetivo = 1;
        $query = "select escolas.nome as nomeEscola, cursos.nome as nomeCurso, escola_id, curso_id, anosLetivos.anoLetivo 
                    from escolasCursos 
                    inner join escolas on escolasCursos.escola_id = escolas.id 
                    inner join cursos on escolasCursos.curso_id = cursos.id 
                    inner join anosLetivos on anosLetivos.id = escolasCursos.anoLetivo_id
                    where anosLetivos.id = $anoLetivo order by escolas.nome asc";
                                //
        $res = parent::bridge($query);   
        return $res;
    }

    public function getAllEscolasCursosByName($nomeEscola, $anoLetivo){
        $query = "select escolas.nome as nomeEscola, cursos.nome as nomeCurso, escola_id, curso_id, anosLetivos.anoLetivo
                    from escolasCursos 
                    inner join escolas on escolasCursos.escola_id = escolas.id 
                    inner join cursos on escolasCursos.curso_id = cursos.id 
                    inner join anosLetivos on anosLetivos.id = escolasCursos.anoLetivo_id
                    where anosLetivos.id = $anoLetivo and escolas.nome like '%$nomeEscola%' order by escolas.nome asc";
        echo $query;
        $res = parent::bridge($query);   
        return $res;
    }

    public function getSelectCursos(){ 
        $query = "select id, nome from cursos";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res))
            array_push($arr, $row);

        return json_encode($arr);
    }

    public function insertEscolaCurso($idEscola, $idCurso, $fileNewName, $embedVideo, $linkInscricao){
        $query = "select * from escolasCursos where anoLetivo_id = 2 and escola_id = $idEscola and curso_id = $idCurso";
        $res = parent::bridge($query);
        $outraInfo = "";
        if($fileNewName != ""){
            $outraInfo .= "<br><h6>Mais Informação</h6>PDF: <a href='cursos pdfs/".$fileNewName."' class='linkColor' download=''>Clique para fazer download</a><br>";
        }
        if($linkInscricao != ""){
            $outraInfo .= "<br><h6>Inscrição</h6><a class=\'linkColor\' href='".$linkInscricao."' target=\'blank\'>Clique para se inscrever.</a><br>";
        }
        if($embedVideo != ""){
            $outraInfo .= "<br><div class=\'embed-responsive embed-responsive-16by9\'><center><iframe class=\'embed-responsive-item\' width=\'520\' height=\'345\' src='".$embedVideo."' frameborder=\'0\' allow=\'accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\' allowfullscreen></iframe></center></div>";
        }
        $query = "insert into escolasCursos(escola_id, curso_id, outraInfo) values($idEscola, $idCurso, \"$outraInfo\")";
        $res = parent::bridge($query);
        return 1;        
    }

    public function deleteEscolaCurso($idEscola, $idCurso){
        $query = "delete from visitantes where escola_id=$idEscola and curso_id=$idCurso";
        $res = parent::bridge($query);
        $query = "delete from escolasCursos where escola_id=$idEscola and curso_id=$idCurso";
        $res = parent::bridge($query);
        return 1;
    }

    public function getNumVisitantes($idEscola){
        $query = "select * from visitantes where escola_id = $idEscola";
        $res = parent::bridge($query);
        $res = mysqli_num_rows($res);
        return $res;
    }
    
    public function getNumVisitantesCursos($idCurso){
        $query = "select * from visitantes where curso_id = $idCurso";
        $res = parent::bridge($query);
        $res = mysqli_num_rows($res);
        return $res;
    }

    public function getVisitantesCursos(){
        $query = "select escolas.nome as nomeEscola, cursos.nome as nomeCurso, escola_id, curso_id  from visitantes inner join escolas on visitantes.escola_id=escolas.id inner join cursos on visitantes.curso_id = cursos.id order by cursos.nome asc";
        $res = parent::bridge($query);
        return $res;
    }    

    public function getVisitantesByEscolaNome($nomeEscola){
        $query = "select escolas.nome as nomeEscola, cursos.nome as nomeCurso, escola_id, curso_id  from visitantes inner join escolas on visitantes.escola_id=escolas.id inner join cursos on visitantes.curso_id = cursos.id where escolas.nome like '%$nomeEscola%' order by escolas.nome asc";
        $res = parent::bridge($query);
        return $res;
    }    

    public function getVisitantesCursosByName($nomeCurso){
        $query = "select escolas.nome as nomeEscola, cursos.nome as nomeCurso, escola_id, curso_id  from visitantes inner join escolas on visitantes.escola_id=escolas.id inner join cursos on visitantes.curso_id = cursos.id where cursos.nome like '%$nomeCurso%' order by cursos.nome asc";
        $res = parent::bridge($query);
        return $res;
    }    

    public function checkEscolasCursos($idEscola, $idCurso){
        $query = "select * from escolasCursos where anoLetivo_id = 2 and escola_id = $idEscola and curso_id = $idCurso";
        $res = parent::bridge($query);
        $res = mysqli_num_rows($res);
        if($res == 0){
            return 1;
        }else{
            return 0;
        }
    }
    
    
    /********************************/
    /*** OFERTA FORMATIVA ADULTOS ***/
    /********************************/

    public function getAllEntidades(){
        $query = "select * from adultos_entidades order by entidade asc";
        $res = parent::bridge($query);   
        return $res;
    }

    public function getAllEntidadesCursos(){
        $query = "select AE.entidade, AC.nome, AEC.idEntidade, AEC.idCurso 
                                     from adultos_entidades AE
                                     inner join adultos_entidades_cursos AEC on AEC.idEntidade = AE.id
                                     inner join adultos_cursos AC on AEC.idCurso = AC.id
                                     order by AE.entidade asc";
        $res = parent::bridge($query);   
        return $res;
    }

    public function getAllEntidadesByName($nome){
        $query = "select * from adultos_entidades where entidade like '%$nome%' order by entidade asc";
        $res = parent::bridge($query);
        return $res;
    }

    public function getAllEntidadesCursosByName($nome){
        $query = "select AE.entidade, AC.nome, AEC.idEntidade, AEC.idCurso 
                        from adultos_entidades AE
                        inner join adultos_entidades_cursos AEC on AEC.idEntidade = AE.id
                        inner join adultos_cursos AC on AEC.idCurso = AC.id
                        where AE.entidade like '%$nome%' order by AE.entidade asc";
        $res = parent::bridge($query);
        return $res;
    }

    public function insertEntidade($nome, $morada, $telefone, $email, $link, $latitude, $longitude){
        $query = "select * from adultos_entidades where entidade='$nome'";
        $res = parent::bridge($query);
        $res = mysqli_num_rows($res);
        if($res == 0){
            $query = "insert into adultos_entidades(entidade, morada, telefone, email, link, latitude, longitude) values('$nome', '$morada', $telefone, '$email', '$link', '$latitude', '$longitude')";
            $res = parent::bridge($query);
            return 1;
        }else{
            return 0;
        }
    }

    public function getEntidadeById($id){
        $query = "select * from adultos_entidades where id=$id";
        $res = parent::bridge($query);   
        return $res;
    }

    public function updateEntidade($id, $nome, $morada, $telefone, $email, $link, $latitude, $longitude){
        $query = "update adultos_entidades set entidade='$nome', morada='$morada', telefone=$telefone, email='$email', link='$link', latitude='$latitude', longitude='$longitude'
                    where id=$id";
        $res = parent::bridge($query);
        return 1;
    }

    public function deleteEntidade($id){
        //se existirem cursos associados, não pode eliminar a entidade
        $query = "select count(*) as c from adultos_entidades_cursos where idEntidade = $id";
        $res = parent::bridge($query);
        $row = mysqli_fetch_object($res);
        if ( $row->c > 0 ) return -1;
        /*
        $query = "delete from escolasCursos where escola_id=$idEscola";
        $res = parent::bridge($query);
        $query = "delete from visitantes where escola_id=$idEscola";
        $res = parent::bridge($query);
        */
        $query = "delete from adultos_entidades where id=$id";
        $res = parent::bridge($query);
        return 1;
    }

    public function getCursosAdultos(){
        $query = "select AC.id, AC.descricao, AC.modalidade, AC.nome, AC.objetivos, AC.tipoCertificacao, ANO.nivel
                     from adultos_cursos AC inner join adultos_niveisObtidos ANO on AC.nivel = ANO.id
                     order by AC.nivel, AC.nome";
        $res = parent::bridge($query);   
        return $res;
    }

    public function getCursosAdultosByName($nomeCurso){
        $query = "select AC.id, AC.descricao, AC.modalidade, AC.nome, AC.objetivos, AC.tipoCertificacao, ANO.nivel
                     from adultos_cursos AC inner join adultos_niveisObtidos ANO on AC.nivel = ANO.id where AC.nome like '%$nomeCurso%'
                     order by AC.nivel, AC.nome";
        $res = parent::bridge($query);
        return $res;
    }
                    
    public function insertCursoAdulto($nomeCurso, $objetivos, $descricao, $modalidade, $nivel, $tipoCertificacao){
        $query = "select * from adultos_cursos where nome='$nomeCurso'";
        $res = parent::bridge($query);
        $res = mysqli_num_rows($res);
        if($res == 0){
            $query = "insert into adultos_cursos(nome, objetivos, descricao, modalidade, nivel, tipoCertificacao) 
                                        values('$nomeCurso', '$objetivos', '$descricao', $modalidade, $nivel, $tipoCertificacao)";
            $res = parent::bridge($query);
            return 1;
        }else{
            return 0;
        }
    }

    public function getCursoAdultosById($idCurso){
        $query = "select * from adultos_cursos where id=$idCurso";
        $res = parent::bridge($query);     
        return $res;
    }

    
    public function updateCursoAdultos($idCurso, $nomeCurso, $descricao, $objetivos, $modalidade, $nivel, $tipoCertificacao ){
        $query = "update adultos_cursos set nome='$nomeCurso', descricao='$descricao', objetivos='$objetivos', modalidade = $modalidade, nivel = $nivel, tipoCertificacao=$tipoCertificacao
                    where id=$idCurso";
                  //  echo $query;
        $res = parent::bridge($query);
        return 1;
    }

    public function deleteCursoAdultos($idCurso){
        //se existirem cursos associados, não pode eliminar a entidade
        $query = "select count(*) as c from adultos_entidades_cursos where idCurso = $idCurso";
        $res = parent::bridge($query);
        $row = mysqli_fetch_object($res);
        if ( $row->c > 0 ) return -1;
        /*
        $query = "delete from escolasCursos where curso_id=$idCurso";
        $res = parent::bridge($query);
        $query = "delete from visitantes where curso_id=$idCurso";
        $res = parent::bridge($query);
        */
        $query = "delete from adultos_cursos where id=$idCurso";
        $res = parent::bridge($query);
        return 1;
    }

    public function searchCursosAdultos($entidade, $modalidade, $tipoCertificacao, $nivel){
        $query = "select *, AN.nivel as _nivel from adultos_cursos AC inner join adultos_entidades_cursos AEC on AEC.idCurso = AC.id
                                                  inner join adultos_entidades AE on AEC.idEntidade = AE.id 
                                                  inner join adultos_modalidades AM on AC.modalidade = AM.id
                                                  inner join adultos_niveisObtidos AN on AC.nivel = AN.id
                                                  inner join adultos_tiposCertificacao ATC on AC.tipoCertificacao = ATC.id where 1=1 ";
        if($entidade != "null")
            $query .= " and AEC.idEntidade = $entidade";

        if ($modalidade != "-1")
            $query .= " and AC.modalidade = $modalidade";

        if ($tipoCertificacao != "-1")
            $query .= " and AC.tipoCertificacao = $tipoCertificacao";

        if ($nivel != "-1")
            $query .= " and AC.nivel = $nivel";

        $query .= " order by AE.entidade, AN.id, AC.nome";
       

        $res = parent::bridge($query);     
        return $res;
    }

    public function getSelectCursosAdultos(){ 
        $query = "select id, nome from adultos_cursos order by nivel asc";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res))
            array_push($arr, $row);

        return json_encode($arr);
    }

    public function deleteEntidadeCurso($idEntidade, $idCurso){
        //$query = "delete from visitantes where escola_id=$idEscola and curso_id=$idCurso";
        //$res = parent::bridge($query);
        $query = "delete from adultos_entidades_cursos where idEntidade=$idEntidade and idCurso=$idCurso";
        $res = parent::bridge($query);
        return 1;
    }

    public function insertEntidadeCurso($idEntidade, $idCurso, $txtInfo, $linkInscricao, $fileNewName){
        //para evitar inserir duplicados
        $query = "select count(*) as c from adultos_entidades_cursos where idEntidade = $idEntidade and idCurso = $idCurso";
        $res = parent::bridge($query);
        $row = mysqli_fetch_object($res);
        if ( $row->c > 0 ) return -1;
        
        /* 
        $outraInfo = "";
        if($fileNewName != ""){
            $outraInfo .= "<br><h6>Mais Informação</h6>PDF: <a href='formacoesAdultosPDFs/".$fileNewName."' class='linkColor' download=''>Clique para fazer download</a><br>";
        }
        if($linkInscricao != ""){
            $outraInfo .= "<br><h6>Inscrição</h6><a class=\'linkColor\' href='".$linkInscricao."' target=\'blank\'>Clique para se inscrever.</a><br>";
        }
        if($txtInfo != ""){
            $outraInfo .= "<p>$txtInfo</p>";
        }
        */

        $query = "insert into adultos_entidades_cursos(idEntidade, idCurso, info, filename, link) values ($idEntidade, $idCurso, '$txtInfo', '$fileNewName', '$linkInscricao')";
        echo $query;
        $res = parent::bridge($query);
        return 1;
    }

    public function getAdultosEntidadesCursos($idEntidade, $idCurso){
        $query = "select AEC.*, AC.nome, AE.entidade from adultos_entidades_cursos AEC 
                        inner join adultos_cursos AC on AEC.idCurso = AC.id
                        inner join adultos_entidades AE on AEC.idEntidade = AE.id
                        where AEC.idEntidade = $idEntidade and AEC.idCurso = $idCurso"; 
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res))
            array_push($arr, $row);
        return json_encode($arr);
    }

    public function editarAdultosEntidadesCursos($idEntidade, $idCurso, $info, $link){
        try{
            $query = "update adultos_entidades_cursos set info='$info', link = '$link' where idCurso = $idCurso and idEntidade = $idEntidade";
            parent::bridge($query);
            return 1;
        }catch(Exception $ex){
            return -1;
        }
    }

    public function substituirFicheiroEntidadeCurso($idEntidade, $idCurso, $filename){
        try{
            $query = "select filename from adultos_entidades_cursos AEC 
                        where AEC.idEntidade = $idEntidade and AEC.idCurso = $idCurso"; 
            $res = parent::bridge($query);
            $row = mysqli_fetch_object($res);
            $_filename = $row->filename;
            if ( $_filename != "NULL" ){
                unlink("../formacoesAdultosPDFs/".$_filename);
            }
            $query = "update adultos_entidades_cursos AEC set filename='$filename' where AEC.idEntidade = $idEntidade and AEC.idCurso = $idCurso";
            parent::bridge($query);
            return 1;
        }catch(Exception $ex){
            return -1;
        }
    }

    public function apagarFicheiroEntidadeCurso($idEntidade, $idCurso){
        try{
            $query = "select filename from adultos_entidades_cursos AEC 
                        where AEC.idEntidade = $idEntidade and AEC.idCurso = $idCurso"; 
            $res = parent::bridge($query);
            $row = mysqli_fetch_object($res);
            $filename = $row->filename;
            $query = "update adultos_entidades_cursos AEC set filename=NULL where AEC.idEntidade = $idEntidade and AEC.idCurso = $idCurso";
            parent::bridge($query);
            return $filename;
        }catch(Exception $ex){
            return -1;
        }
    }

    public function getInfoEntidadeCurso($idEntidade, $idCurso){
        $query = "select AEC.*, AC.nome as curso, AC.objetivos, AC.descricao, AE.entidade, AM.modalidade, AN.nivel
                        from adultos_entidades_cursos AEC 
                        inner join adultos_cursos AC on AEC.idCurso = AC.id
                        inner join adultos_entidades AE on AEC.idEntidade = AE.id
                        inner join adultos_modalidades AM on AC.modalidade = AM.id
                        inner join adultos_niveisObtidos AN on AC.nivel = AN.id
                        where AEC.idEntidade = $idEntidade and AEC.idCurso = $idCurso"; 
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res))
            array_push($arr, $row);
        return json_encode($arr);
    }

    public function getEntidadesMap(){
        $query = "select * from adultos_entidades where latitude <> '' and longitude <> ''";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res)){
            array_push($arr, $row);                
        }       
        return json_encode($arr);
    }

}

?>