<?php

include_once("ofertaFormativa.php");
$ofertaFormativa = new OfertaFormativa();

if(isset($_GET['getConcelhos'])){
    echo $ofertaFormativa->getConcelhos();
}else if(isset($_GET['getEscolas'])){
    echo $ofertaFormativa->getEscolas();
}else if(isset($_GET['getEscolasByConcelho'])){
    echo $ofertaFormativa->getEscolasByConcelho($_GET['getEscolasByConcelho']);
}else if(isset($_GET['getNivelEnsino'])){
    echo $ofertaFormativa->getNivelEnsino();
}else if(isset($_GET['getTiposCursos'])){
    echo $ofertaFormativa->getTiposCursos($_GET['getTiposCursos']);
}else if(isset($_GET['getNivelEnsinoByEscola'])){
    echo $ofertaFormativa->getNivelEnsinoByEscola($_GET['getNivelEnsinoByEscola']);
}else if(isset($_GET['getEscolasCursos'])){
    $idConcelho = $_GET['getEscolasCursos'];
    $idEscola = $_GET['idEscola'];
    $idTipoCurso = $_GET['idTipoCurso'];
    $idEnsino = $_GET['idEnsino'];
    $nomeEscola = $_GET['nomeEscola'];
    $anoLetivo = $_GET['anoLetivo'];
    echo $ofertaFormativa->getEscolasCursos2($idConcelho, $idEscola, $idTipoCurso, $idEnsino, $nomeEscola, $anoLetivo);
}else if(isset($_GET['getEscolaCursoInfo'])){
    $idEscola = $_GET['getEscolaCursoInfo'];
    $idCurso = $_GET['idCurso'];
    echo $ofertaFormativa->getEscolaCursoInfo($idEscola, $idCurso);
}else if(isset($_GET['getEscolasByName'])){
    echo $ofertaFormativa->getEscolasByName($_GET['getEscolasByName']);
}else if(isset($_GET['getTipoCursoDescricao'])){
    echo $ofertaFormativa->getTipoCursoDescricao($_GET['getTipoCursoDescricao']);
}else if(isset($_GET['getEscolasMap'])){
    echo $ofertaFormativa->getEscolasMap($_GET['getEscolasMap']);
}else if(isset($_GET['getVisitantes'])){
    echo $ofertaFormativa->getVisitantes();
}else if(isset($_GET['addVisitante'])){
    $idEscola = $_GET['addVisitante'];
    $idCurso = $_GET['idCurso'];
    echo $ofertaFormativa->addVisitante($idEscola, $idCurso);
}else if(isset($_GET['getCursos'])){
    echo $ofertaFormativa->getCursos();
}else if(isset($_GET['getCursosByName'])){
    echo $ofertaFormativa->getCursosByName($_GET['getCursosByName']);
}else if(isset($_GET['getCursoById'])){
    echo $ofertaFormativa->getCursosById($_GET['getCursoByName']);
}else if(isset($_GET['addCurso'])){
    $nomeCurso = $_GET['addCurso'];
    $objetivos = $_GET['objetivos'];
    $saidasProfissionais = $_GET['saidasProfissionais'];
    $descricao = $_GET['descricao'];
    $idTipoCurso = $_GET['tipoCurso'];
    echo $ofertaFormativa->insertCurso($nomeCurso, $objetivos, $saidasProfissionais, $descricao, $idTipoCurso);
}else if(isset($_GET['updateCurso'])){
    $idCurso = $_GET['updateCurso'];
    $nomeCurso = $_GET['nome'];
    $objetivos = $_GET['objetivos'];
    $saidasProfissionais = $_GET['saidasProfissionais'];
    $descricao = $_GET['descricao'];
    $idTipoCurso = $_GET['tipoCurso'];
    echo $ofertaFormativa->updateCurso($idCurso, $nomeCurso, $objetivos, $saidasProfissionais, $descricao, $idTipoCurso);
}else if(isset($_GET['deleteCurso'])){
    echo $ofertaFormativa->deleteCurso($_GET['deleteCurso']);
}else if(isset($_GET['getAllTiposCursos'])){
    echo $ofertaFormativa->getAllTiposCursos();
}else if(isset($_GET['getSelectCursos'])){
    echo $ofertaFormativa->getSelectCursos();
}else if(isset($_GET['getEntidades'])){
    $res = $ofertaFormativa->getAllEntidades();
    $arr = [];
    while($row = mysqli_fetch_object($res))
        array_push($arr, $row);
    echo json_encode($arr);
}else if(isset($_GET['getCursosAdultos'])){
    $entidade = $_GET['getCursosAdultos'];
    $modalidade = $_GET['modalidade'];
    $tipoCertificacao = $_GET['tipoCertificacao'];
    $nivel = $_GET['nivel'];
    $res = $ofertaFormativa->searchCursosAdultos($entidade, $modalidade, $tipoCertificacao, $nivel);
    $arr = [];
    while($row = mysqli_fetch_object($res))
        array_push($arr, $row);
    echo json_encode($arr);
}else if (isset($_GET['getEntidadesCursosAdultos'])){
    echo $ofertaFormativa->getSelectCursosAdultos();
}else if (isset($_GET['getEntidadeCursoInfo'])){
    $idEntidade = $_GET['getEntidadeCursoInfo'];
    $idCurso = $_GET['idCurso'];
    echo $ofertaFormativa->getInfoEntidadeCurso($idEntidade, $idCurso);

}if(isset($_GET['getEntidadesMap'])){
    echo $ofertaFormativa->getEntidadesMap();
}
?>