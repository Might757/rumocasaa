//oferta formativa para jovens
function clone(obj) {
    if (null == obj || "object" != typeof obj) return obj;
    var copy = obj.constructor();
    for (var attr in obj) {
        if (obj.hasOwnProperty(attr)) copy[attr] = obj[attr];
    }
    return copy;
}

var markers = [];
function initMap() {
    var map;
    map = new google.maps.Map(document.getElementById('map'), {
      center: {lat: 38.651007, lng: -9.022961},
      zoom: 12
    });    

    let url = 'db/gerirOfertaFormativa.php?getEscolasMap=1';
    $.post(url, function(data)
    {
        
        let arr = JSON.parse(data);
        for(i = 0; i < arr.length; i++){
            _fillMap(arr[i].latitude, arr[i].longitude, arr[i].nome, arr[i].link, arr[i].email, arr[i].telefone, arr[i].morada);
        }
    });
    
    
  function setMapOnAll(map) {
    for (var i = 0; i < markers.length; i++) {
      markers[i].setMap(map);
    }
  }

  // Removes the markers from the map, but keeps them in the array.
  function clearMarkers() {
    setMapOnAll(null);
  }

  function addMarker(props){

    var marker = new google.maps.Marker({
      position:props.coords,
      map:map,
      //icon:props.iconImage
    });

    // Check for customicon
    if(props.iconImage){
      // Set icon image
      marker.setIcon(props.iconImage);
    }

    // Check content
    if(props.content){
      var infoWindow = new google.maps.InfoWindow({
        content:props.content
      });

      marker.addListener('click', function(){
        if(!marker.open){
            infoWindow.open(map,marker);
            marker.open = true;
        }else{
            infoWindow.close();
            marker.open = false;
        }
        google.maps.event.addListener(map, 'click', function() {
            infoWindow.close();
            marker.open = false;
        });
      });
    } 
  }

function _fillMap(latitude, longitude, escola, link, email, telefone, morada){    
    var lat = parseFloat(latitude);
    var lng = parseFloat(longitude);
    var obj = {
        coords: {lat: lat, lng: lng},
        content:'<div id="iw-container" >' +
        '<div class="iw-title">'+escola+'</div>' +
        '<div class="iw-content">' +
            '<div class="iw-subTitle">Site:</div>' +
            '<p><a href='+link+' target="blank">'+link+'</a><p>' +
            '<div class="iw-subTitle">Email:</div>' +
            '<p>'+email+
            '<div class="iw-subTitle">Telefone:</div>' +
            '<p>'+telefone+
            '<div class="iw-subTitle">Morada:</div>' +
            '<p>'+morada+
        '</div>' +
        '<div class="iw-bottom-gradient"></div>' +
        '</div>'
    };  
    markers.push(obj);
    for(var i = 0;i < markers.length;i++){
        // Add marker
        addMarker(markers[i]);
    }
}

function addBackgroundColorByTipoCurso(tipo){
 switch(tipo){
    case "1": return "bg-light";
    case "2": return "bg-dark";
    case "3": return "bg-light";
    case "4": return "bg-dark";
    case "5": return "bg-white";
    case "6": return "bg-light";
 }
 return "";
}
  
    $("#pesquisar").click(function() {
        map = new google.maps.Map(document.getElementById('map'), {
            center: {lat: 38.651007, lng: -9.022961},
            zoom: 12
        });    
        markers = [];

        let url = "";
        var concelho = $("#concelho").val();
        var escola = $("#escola").val();
        var tipoCurso = $("#tipologia").val();
        var escolaNome = $("#pesquisarEscola").val();
        var ensino = $("#ensino").val();
        var anoLetivo = $("#anoLetivo").val();
        url = 'db/gerirOfertaFormativa.php?getEscolasCursos='+concelho+'&idEscola='+escola+'&idTipoCurso='+tipoCurso+'&idEnsino='+ensino+'&nomeEscola='+escolaNome+'&anoLetivo='+anoLetivo;
        let resultados = "";
        $.post(url, function(data)
        {     
            console.log(data)
            let arr = JSON.parse(data);
            if(arr.length == 0){
                resultados += "<div>";
                resultados += "A sua pesquisa não devolveu resultados.";
                resultados += "</div>";
            }else{
                resultados += "<table class='table table-stripped table-bordered col-10 offset-1'>";
                resultados += "<thead  class='thead-dark'>";
                resultados += "<tr>";
                resultados += "<th scope='col' class='d-md-table-cell d-sm-none d-none'><center>Escola(s)</center></th>";
                resultados += "<th scope='col' colspan='2' class='d-sm-table-cell d-table-cell d-md-none d-none'><center>Escola(s) / Cursos</center></th>";
                if($('#ensino').val() == 2){
                    resultados += "<th scope='col' class='d-md-table-cell d-none'><center>Cursos de formação superior</center></th>";
                }else if($('#ensino').val() == 3){
                    resultados += "<th scope='col' class='d-md-table-cell d-none'><center>Cursos de ensino básico</center></th>";
                }else if($('#ensino').val() == 1){
                    resultados += "<th scope='col' class='d-md-table-cell d-none'><center>Cursos de ensino secundário</center></th>";
                }else{
                    resultados += "<th scope='col' class='d-md-table-cell d-none'><center>Cursos</center></th>";
                }
                resultados += "</tr>";
                resultados += "</thead>";
                resultados += "<tbody>";
                
                var num = 1;
                let numero = 1;
                let arrEscolas = [];
                let obj = {}
                for(let i = 0; i<arr.length; i++){
                    
                    if(numero == 1 || arr[num].escola != arr[i].escola){
                        if (numero > 1){
                            arrEscolas[arrEscolas.length] = clone(obj);
                        }
                        
                        obj.escola = "";
                        obj.numCursos = 0;
                        num = i;
                    }
                    if (obj.escola == "")
                        obj.escola = arr[i].escola;

                    obj.numCursos++;
                    numero++;                    
                }
                if(obj.escola != ""){
                    arrEscolas[arrEscolas.length] = obj;
                }
                
                num = 1;
                numero = 0;
                let numero2 = 0;
                let num2 = 1
                let numero3 = true;
                for(let i = 0; i<arr.length; i++)
                {
                    if(/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
                        
                        if(numero == 0 || arr[num].escola != arr[i].escola){
                            _fillMap(arr[i].latitude, arr[i].longitude, arr[i].escola, arr[i].link, arr[i].email, arr[i].telefone, arr[i].morada);
                            resultados += "<tr><td class='align-middle' style='background-color:white'><center><a class='linkColor' href='"+arr[i].link+"' target='blank'>"+arr[i].escola+"</a><br>";
                            resultados += arr[i].morada+"<br>";
                            resultados += arr[i].telefone+"<br>";
                            resultados += arr[i].email+"<br>";
                            resultados += "</center></td></tr>";
                            /*
                            resultados += "<td class='align-middle d-sm-block d-none'><center><a class='linkColor' href='"+arr[i].link+"' target='blank'>"+arr[i].escola+"</a><br>";
                            resultados += "Morada: "+arr[i].morada+"<br>";
                            resultados += "Telefone: "+arr[i].telefone+"<br>";
                            resultados += "Email: "+arr[i].email+"<br>";
                            resultados += "</center></td>";
                            */
                            num = i;
                            numero++;
                        }
                        resultados += "<tr>";
                        //let color = addBackgroundColorByTipoCurso(arr[i].idTipoCurso);
                        resultados += "<td class='align-middle'><center>";
                        resultados += "<div class='float-left'><span class='badge badge-secondary'>"+ arr[i].small+"</span></div>";
                        resultados += "<button class='btn btn-link linkColor' title='"+arr[i].tipo+"'";
                        resultados += "data-toggle='modal' data-target='#exampleModalScrollable' onclick='info("+arr[i].escola_id+", "+arr[i].curso_id+")'>";
                        resultados += arr[i].curso ;
                        resultados += "</button></center>";
                        resultados += "</td>";
                        resultados += "</tr>";
                    }else{
                        resultados += "<tr>";
                        if(numero == 0 || arr[num].escola != arr[i].escola){
                            _fillMap(arr[i].latitude, arr[i].longitude, arr[i].escola, arr[i].link, arr[i].email, arr[i].telefone, arr[i].morada);
                            resultados += "<td rowspan='"+arrEscolas[numero].numCursos+"' class='align-middle' style='background-color:white'><center><a class='linkColor' href='"+arr[i].link+"' target='blank'>"+arr[i].escola+"</a><br>";
                            resultados += arr[i].morada+"<br>";
                            resultados += arr[i].telefone+"<br>";
                            resultados += arr[i].email+"<br>";
                            resultados += "</center></td>";
                            /*
                            resultados += "<td class='align-middle d-sm-block d-none'><center><a class='linkColor' href='"+arr[i].link+"' target='blank'>"+arr[i].escola+"</a><br>";
                            resultados += "Morada: "+arr[i].morada+"<br>";
                            resultados += "Telefone: "+arr[i].telefone+"<br>";
                            resultados += "Email: "+arr[i].email+"<br>";
                            resultados += "</center></td>";
                            */
                            num = i;
                            numero++;
                        }
                        /*
                        console.log("var numero3: "+numero3);
                        console.log("var num: "+num2);
                        console.log("var i: "+i);
                        console.log("num: "+arr[num2].idTipoCurso);
                        console.log("i: "+arr[i].idTipoCurso);
                        */
                        //let color = addBackgroundColorByTipoCurso(arr[i].idTipoCurso);
                        if(numero2 == 0 || arr[num2].idTipoCurso == arr[i].idTipoCurso){
                            numero2++;
                        }else{                            
                            numero3 = !numero3;
                        }
                        if(numero3){
                            resultados += "<td class='align-middle'><center>";
                        }else{
                            resultados += "<td class='align-middle bg-light'><center>";
                        }
                        num2 = i;
                        resultados += "<div class='float-left'><span class='badge badge-secondary'>"+ arr[i].small+"</span></div>";
                        //resultados += "<td class='align-middle' style='background-color:"+color+"'><center>";
                        resultados += "<button class='btn btn-link linkColor' title='"+arr[i].tipo+"'";
                        resultados += "data-toggle='modal' data-target='#exampleModalScrollable' onclick='info("+arr[i].escola_id+", "+arr[i].curso_id+")'>";
                        resultados += arr[i].curso ;
                        resultados += "</button></center>";
                        resultados += "</td>";
                        resultados += "</tr>";
                    }
                    
                }
                resultados += "</tbody>";
                resultados += "</table>";
            }
            $('#divSearch').html(resultados);
        });
    });
}

$( document ).ready(function() {

    if(/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
        $("#map").hide();
    }
    //se n estivermos na pagina da oferta formativa dos jovens, n precisa de carregar a restante informação
    let href = document.location.href;
    let lastPathSegment = href.substr(href.lastIndexOf('/') + 1);    
    if (lastPathSegment != "oferta.php") return;
    
    addVisitante();
    getConcelhos();
    getEscolas();
    $( "#escola" ).prop( "disabled", false );
    $( "#concelho" ).change(function() {
        getEscolas();
        $( "#escola" ).prop( "disabled", false );

    });
    $( "#escola" ).change(function() {
        getEnsino();
        getTipoDeCurso();
        $( "#ensino" ).prop( "disabled", false );  
        if($('#escola').val() != "todasEscolas" && $('#escola').val() != 8 && $('#escola').val() != 6 && $('#escola').val() != 5){
            $( "#tipologia" ).prop( "disabled", false );
        }      
    });
    $( "#ensino" ).change(function() {
        getTipoDeCurso();
        $( "#tipologia" ).prop( "disabled", false );
    });
    $( "#tipologia" ).change(function(){
        getDescricao();
    });    
});

    function info(idEscola, idCurso){
        var num = 0;
        let cursos = "";
        let url = 'db/gerirOfertaFormativa.php?getEscolaCursoInfo='+idEscola+'&idCurso='+idCurso;
        $.post(url, function(data)
        {      
            let arr = JSON.parse(data);
            let modalHead = "<h5 class='modal-title'> <i class='"+arr.icone+"'></i> "+arr.tipo+"</h5>";
            cursos += "<div class='card'>";
                cursos += "<div id='heading1'>";
                    cursos += "<h2 align='center' class='mb-0' style='color: #04d107;'>";
                            cursos += arr.curso;
                    cursos += "</h2>";
                cursos += "</div>";
                cursos += "<div id='collapse1' class='collapse show' aria-labelledby='heading1' data-parent='#accordionExample'>";
                    cursos += "<div class='card-body'>";
                    if(arr.descricao != ""){
                        cursos += "<h6>Descrição</h6>";
                        cursos += arr.descricao+"<br>";    
                    }else{
                        num++;
                    }
                    if(arr.objetivos != ""){
                        cursos += "<br><h6>Objetivos</h6>";
                        cursos += arr.objetivos+"<br>";
                    }else{
                        num++;
                    }
                    if(arr.objetivos != ""){
                        cursos += "<br><h6>Saídas Profissionais</h6>";
                        cursos += arr.saidasProfissionais + "<br>";
                    }else{
                        num++;
                    }
                    if(arr.outraInfo != null){
                        cursos += arr.outraInfo;
                    }else{
                        num++;
                    }
                    if(num == 4){
                        cursos += "Ainda não existem informações para este curso."
                    }
                    cursos += "</div>";
                cursos += "</div>";
            cursos += "</div>";
       
            
            cursos += "</div>";
            $('#modalHead').html(modalHead);
            $('#divResultados').html(cursos);
        });
        addVisitante(idEscola, idCurso);
    }

    function getConcelhos()
    {
        let url = 'db/gerirOfertaFormativa.php?getConcelhos=1';
        $.post(url, function(data)
        {     
            let arr = JSON.parse(data);
            for(let i = 0; i<arr.length; i++)
            {
                $('#concelho').append(`<option value="`+arr[i].id+`">`+arr[i].concelho+`</option>`); 
            }
        });
    }

    function getEscolas()
    {       
        if($('#escola')[0].length > 2){
            $('#escola').find('option').not(':first').remove();
            $('#escola').append('<option value="todasEscolas">Todas</option>'); 
        }
        let url;
        if($("#concelho").val() == "todosConcelhos"){
            url = 'db/gerirOfertaFormativa.php?getEscolas=1';
        }else{
            url = 'db/gerirOfertaFormativa.php?getEscolasByConcelho='+$("#concelho").val();
        }
        $.post(url, function(data)
        {      
            let arr = JSON.parse(data);
            for(let i = 0; i<arr.length; i++)
            {
                $('#escola').append(`<option value="`+arr[i].id+`">`+arr[i].nome+`</option>`); 
            }
        });        
        $('#escola').val("default");
        $( "#ensino" ).prop( "disabled", true );
        $('#ensino').val("default");
        $( "#tipologia" ).prop( "disabled", true );
        $('#tipologia').val("default");
    }

    function getEnsino()
    { 
        $('#ensino').find('option').not(':first').remove();
        if($('#escola').val() == "todasEscolas"){
            $('#ensino').val("default");
            if($('#concelho').val() == 1 || $('#concelho').val() == "todosConcelhos"){
                $('#ensino').append("<option selected value='todosEnsino'>Todos</option>");
                $('#ensino').append("<option value='3'>Básico</option>");
                $('#ensino').append("<option value='1'>Secundário</option>"); 
                $('#ensino').append("<option value='2'>Superior</option>");                
            }else{
                if($('#escola').val() == 10){
                    $('#ensino').append("<option value='2'>Superior</option>");
                    $('#ensino').val("2"); 
                }else if($('#escola').val() == 8 || $('#escola').val() == 6 || $('#escola').val() == 5){
                    $('#ensino').append("<option selected value='todosEnsino'>Todos</option>");
                    $('#ensino').append("<option value='1'>Secundário</option>");
                    $('#ensino').append("<option value='3'>Básico</option>");
                    $('#ensino').val("default");
                }else{
                    $('#ensino').append("<option value='1'>Secundário</option>");
                    $('#ensino').val("1");
                }
            }
        }else{
            if($('#escola').val() == 10){
                $('#ensino').append("<option value='2'>Superior</option>"); 
                $('#ensino').val("2");
            }else if($('#escola').val() == 8 || $('#escola').val() == 6 || $('#escola').val() == 5){
                $('#ensino').append("<option selected value='todosEnsino'>Todos</option>");
                $('#ensino').append("<option value='1'>Secundário</option>");
                $('#ensino').append("<option value='3'>Básico</option>");
                $('#ensino').val("default");
            }
            else{
                $('#ensino').append("<option value='1'>Secundário</option>"); 
                $('#ensino').val("1"); 
            }
        }        
        
        $( "#tipologia" ).prop( "disabled", true );
        $('#tipologia').val("default");
    }

    function getTipoDeCurso()
    {
        $('#tipologia').find('option').not(':first').remove();
        if(($('#escola').val() == 8 || $('#escola').val() == 5) && $('#ensino').val() == 3){

            $('#tipologia').append(`<option value="5">CEF - Tipo 2</option>`);
            $('#tipologia').val("5");
            
        }else if($('#ensino').val() == 3 && $('#escola').val() == 6){

            $('#tipologia').append(`<option value="6">CEF - Tipo 3</option>`); 
            $('#tipologia').val("6");

        }else{
            let url = 'db/gerirOfertaFormativa.php?getTiposCursos='+$("#ensino").val();
            $.post(url, function(data)
            {      
                let arr = JSON.parse(data);
                for(let i = 0; i<arr.length; i++)
                {
                    $('#tipologia').append(`<option value="`+arr[i].id+`">`+arr[i].tipo+`</option>`); 
                }
            });
            $('#tipologia').val("default");
        }        
    }

    function getDescricao(){ //está apenas a ir buscar à tabela tiposcursos, não à tabela tiposcursosadultos (resolver e funciona a descrição do GPSI criado para os adultos como teste.)
        $( "#descricaoCurso" ).remove();
        let url = 'db/gerirOfertaFormativa.php?getTipoCursoDescricao='+$("#tipologia").val();
        
        $.post(url, function(data)
        {   
            let arr = JSON.parse(data);
            $('#divDescricaoCurso').append('<small id="descricaoCurso" class="form-text text-muted">'+arr[0].descricao+'</small>');
        });
    }

    function addVisitante(idEscola, idCurso){
        let url = 'db/gerirOfertaFormativa.php?addVisitante='+idEscola+'&idCurso='+idCurso;
        $.post(url, function(data)
        {      
        
        });
    }
