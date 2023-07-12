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

    public function getEntidades(){
        $query = "select id, nome from entidades";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res))
            array_push($arr, $row);
/*
CREATE TABLE tiposCursosAdultos (
	id int(2) PRIMARY KEY AUTO_INCREMENT NOT NULL,
    tipo varchar(100) not null,
    small varchar(7) not null,
    descricao text not null,
    nivel_ensino_id int(1) not null,
    FOREIGN KEY (nivel_ensino_id) REFERENCES niveisensino(id),
    icone varchar(50) not null
);
ALTER TABLE tiposCursosAdultos ENGINE=InnoDB
*/
        return json_encode($arr);
    }

    public function getEntidadesByConcelho($idConcelho){
        $query = "select id, nome from entidades where concelho_id = $idConcelho";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res))
            array_push($arr, $row);

        return json_encode($arr);
    }

    public function getNivelObtido(){
        $query = "select id, nivel from niveisEnsino";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res))
            array_push($arr, $row);

        return json_encode($arr);
    }

    public function getNivelObtidoByEntidade($idEntidade){
        $query = "select curso_id from escolasCursos where escola_id = $idEntidade";
        $res = parent::bridge($query);
        $arr = [];
        $num = 0;
          while($row = mysqli_fetch_object($res)){
            $query = "select tipoCursoAdultos_id from cursosAdultos where id = $row->curso_id";
            $res2 = parent::bridge($query);
            $row2 = mysqli_fetch_object($res);
            if($num == 0 || $num != $row2->tipoCursoAdultos_id){
                $query = "select nivelEnsino_id from tiposCursosAdultos where id = $row2->tipoCursoAdultos_id";
                $res3 = parent::bridge($query);
                $row3 = mysqli_fetch_object($res3);
                $query = "select * from nivelObtido where id = $row3->nivelObtido_id";
                $res3 = parent::bridge($query);
                $row3 = mysqli_fetch_object($res3);
                array_push($arr, $row3);
            }
            $num = $row2->tipoCurso_id;
        }
        return json_encode($arr);
    }

    public function getTiposCursos($idEnsino){
        $query = "select id, tipo from tiposCursosAdultos where nivel_ensino_id = $idEnsino";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res))
            array_push($arr, $row);

        return json_encode($arr);
    }

    public function getEscolasCursos2($idConcelho, $idEscola, $idTipoCurso, $idEnsino, $nomeEscola){
        $query = "select id from escolasAdultos where nome like '%$nomeEscola%'";
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
                $query3 = "select id from tiposCursosAdultos where nivelEnsino_id = $idEnsino";
                $res3 = parent::bridge($query3);
                $num = 0;
                $query2 = "";
                while($row = mysqli_fetch_object($res3)){
                    if($num == 1){
                        $query2 .= " UNION ";
                    }
                    $query2 .= "select id from cursosAdultos where tipoCursoAdultos_id = $row->id";
                    $num = 1;
                }

            }else{
                $query2 = "select id from cursosAdultos";
            }
        }else{
            $query2 = "select id from cursosAdultos where tipoCursoAdultos_id = $idTipoCurso";
        }

        $res2 = parent::bridge($query2);

        $arr = [];
        while($row = mysqli_fetch_object($res)){
            while($row2 = mysqli_fetch_object($res2)){
                $query = "select * from escolasCursos where escola_id = $row->id and curso_id = $row2->id";

                $res3 = parent::bridge($query);
                if(mysqli_num_rows($res3) != 0){
                    $query = "select entidades.latitude, entidades.longitude,
                                entidade_id, curso_id, entidades.nome da entidade, entidades.morada, entidades.email,
                                entidades.telefone telefone, entidades.link link, cursosAdultos.nome as curso, TC.tipo
                                from escolasCursosAdultos inner join escolasAdultos on escolasCursos.escola_id = escolas.id
                                inner join cursosAdultos on escolasCursos.curso_id = cursos.id
                                inner join tiposCursosAdultos TC on cursosAdultos.tipocursoAdultos_id = TC.id
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

    public function getEscolasCursos($idConcelho, $idEntidade, $idTipoCurso, $idEnsino, $entidade){

        $query = "select entidades.latitude, entidades.longitude,
                escola_id, curso_id, entidades.nome as escola, entidades.morada, entidades.email,
                entidades.telefone telefone, entidades.link link, cursosAdultos.nome as curso, TC.tipo,
                TC.id as idTipoCurso, TC.small
                from escolasCursos
                inner join entidades on escolasCursos.escola_id = escolas.id
                inner join cursosAdultos on escolasCursos.curso_id = cursos.id
                inner join tiposCursosAdultos TC on cursosAdultos.tipocurso_id = TC.id
                inner join niveisEnsino NE on NE.id = TC.nivelEnsino_id
                where escolas.nome like '%$entidade%' ";

        if($idConcelho != "todosConcelhos" && $idConcelho != "null"){
            $query .= " and entidade.concelho_id = $idConcelho ";
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

        if($idEnsino != "null"){
            $query .= " and NE.id = ".$idEnsino;

            if($idTipoCurso != "null"){
                $query .= " and cursosAdultos.tipoCursoAdultos_id = ". $idTipoCurso;
            }
        }

        $query .= " order by entidades.nome, TC.tipo, cursosAdultos.nome asc ";
        //echo $query;

        $res = parent::bridge($query);

        $arr = [];
        while($row = mysqli_fetch_object($res)){
            array_push($arr, $row);
        }
        return json_encode($arr);
    }

    public function getEscolaCursoInfo($idEntidade, $idCurso){
        $query = "select * from entidades where id = $idEntidade";
        $res = parent::bridge($query);
        $row = mysqli_fetch_object($res);
        $query = "select nome as curso, objetivos, saidasProfissionais, descricao, tipoCurso_id from cursos where id = $idCurso";
        $res = parent::bridge($query);
        $row2 = mysqli_fetch_object($res);
        $query = "select outraInfo from escolasCursos where escola_id = $idEnntidade and curso_id = $idCurso";
        $res = parent::bridge($query);
        $row3 = mysqli_fetch_object($res);
        $query = "select tipo, icone from tiposCursos where id = $row2->tipoCurso_id";
        $res = parent::bridge($query);
        $row4 = mysqli_fetch_object($res);
        $obj_merged = (object) array_merge((array) $row, (array) $row2, (array) $row3, (array) $row4);
        return json_encode($obj_merged);
    }

    public function getEscolasByName($nomeEscola){
        $query = "select id from entidades where nome like '%$entidades%'";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res)){
            $query = "select * from escolasCursos where escola_id = $row->id";
            $res2 = parent::bridge($query);
            while($row2 = mysqli_fetch_object($res2)){
                $query = "select entidade_id, curso_id, entidade.nome escola, cursos.nome as curso from escolasCursos inner join entidades on escolasCursos.escola_id = entidades.id inner join cursos on escolasCursos.curso_id = cursos.id where entidade_id = $row->id and curso_id = $row2->curso_id";
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
        $query = "select * from entidades";
        $res = parent::bridge($query);
        $arr = [];
        while($row = mysqli_fetch_object($res)){
            array_push($arr, $row);
        }
        return json_encode($arr);
    }
}

?>
