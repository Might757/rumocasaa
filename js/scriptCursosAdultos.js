$( document ).ready(function() {
    //se n estivermos na pagina da oferta formativa dos adultos, n precisa de carregar a restante informação
    let href = document.location.href;
    let lastPathSegment = href.substr(href.lastIndexOf('/') + 1);    
    
    if (lastPathSegment != "ofertaAdultos.php") return;
    getEntidades();

    $(document).on("click", "input[id=pesquisarCursosAdultos]", function(){
        let obj = {};
        obj.nivel = $('#nivel').val();
        obj.tipoCertificacao = $('#tipoCertificacao').val();
        obj.entidade = $('#entidade').val();
        obj.modalidade = $('#modalidade').val();
        if ( obj.nivel == "-1" && obj.tipoCertificacao =="-1" && obj.entidade == null && obj.modalidade == "-1"){
            alert("Filtros de pesquisa inválidos");
        }else{
            let url = 'db/gerirOfertaFormativa.php?getCursosAdultos='+obj.entidade+'&modalidade='+obj.modalidade+'&tipoCertificacao='+obj.tipoCertificacao+'&nivel='+obj.nivel;
            let resultados = "";
            $.post(url, function(data){  
                let arr = JSON.parse(data);
                if(arr.length == 0){
                    resultados += "<div>";
                    resultados += "A sua pesquisa não devolveu resultados.";
                    resultados += "</div>";
                }else{
                    resultados += "<table class='table table-stripped table-bordered col-10 offset-1'>";
                    resultados += "<thead  class='thead-dark'>";
                    resultados += "<tr>";
                    resultados += "<th scope='col' class='d-md-table-cell d-sm-none d-none'><center>Entidade(s)</center></th>";
                    resultados += "<th scope='col' colspan='2' class='d-sm-table-cell d-table-cell d-md-none d-none'><center>Entidades(s) / Formações</center></th>";            
                    resultados += "<th scope='col' class='d-md-table-cell d-none'><center>Cursos</center></th>";
                    resultados += "</tr>";
                    resultados += "</thead>";
                    resultados += "<tbody>";

                    var num = 1;
                    let numero = 1;
                    let arrEscolas = [];
                    let obj = {}
                    for(let i = 0; i<arr.length; i++){
                        
                        if(numero == 1 || arr[num].idEntidade != arr[i].idEntidade){
                            if (numero > 1){
                                arrEscolas[arrEscolas.length] = clone(obj);
                            }
                            
                            obj.escola = "";
                            obj.numCursos = 0;
                            num = i;
                        }
                        if (obj.idEntidade == "")
                            obj.idEntidade = arr[i].idEntidade;

                        obj.numCursos++;
                        numero++;                    
                    }
                    if(obj.idEntidade != ""){
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
                            
                            if(numero == 0 || arr[num].idEntidade != arr[i].idEntidade){
                                //_fillMap(arr[i].latitude, arr[i].longitude, arr[i].escola, arr[i].link, arr[i].email, arr[i].telefone, arr[i].morada);
                                resultados += "<tr><td class='align-middle' style='background-color:white'><center><a class='linkColor' href='"+arr[i].link+"' target='blank'>"+arr[i].entidade+"</a><br>";
                                resultados += arr[i].morada+"<br>";
                                resultados += arr[i].telefone+"<br>";
                                resultados += arr[i].email+"<br>";
                                resultados += "</center></td></tr>";
                            
                                num = i;
                                numero++;
                            }
                            resultados += "<tr>";
                            resultados += "<td class='align-middle'><center>";
                            resultados += "<div class='float-left'><span class='badge badge-secondary'>"+ arr[i]._nivel+"</span></div>";
                            resultados += "<button class='btn btn-link linkColor' title='"+arr[i].tipo+"'";
                            resultados += "data-toggle='modal' data-target='#exampleModalScrollable' onclick='infoEntidadeCurso("+arr[i].idEntidade+", "+arr[i].idCurso+")'>";
                            resultados += arr[i].nome ;
                            resultados += "</button></center>";
                            resultados += "</td>";
                            resultados += "</tr>";
                        }else{
                            resultados += "<tr>";
                            if(numero == 0 || arr[num].idEntidade != arr[i].idEntidade){
                                //_fillMap(arr[i].latitude, arr[i].longitude, arr[i].escola, arr[i].link, arr[i].email, arr[i].telefone, arr[i].morada);
                                resultados += "<td rowspan='"+arrEscolas[numero].numCursos+"' class='align-middle' style='background-color:white'><center><a class='linkColor' href='"+arr[i].link+"' target='blank'>"+arr[i].entidade+"</a><br>";
                                resultados += arr[i].morada+"<br>";
                                resultados += arr[i].telefone+"<br>";
                                resultados += arr[i].email+"<br>";
                                resultados += "</center></td>";
                            
                                num = i;
                                numero++;
                            }
                        
                            //let color = addBackgroundColorByTipoCurso(arr[i].idTipoCurso);
                            if(numero2 == 0 || arr[num2].tipo == arr[i].tipo){
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
                            resultados += "<div class='float-left'><span class='badge badge-secondary'>"+ arr[i]._nivel+"</span></div>";
                            //resultados += "<td class='align-middle' style='background-color:"+color+"'><center>";
                            resultados += "<button class='btn btn-link linkColor' title='"+arr[i].tipo+"'";
                            resultados += "data-toggle='modal' data-target='#exampleModalScrollable' onclick='infoEntidadeCurso("+arr[i].idEntidade+", "+arr[i].idCurso+")'>";
                            resultados += arr[i].nome ;
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
        }
    });

});

function getEntidades()
{       
    if($('#entidade')[0].length > 2){
        $('#entidade').find('option').not(':first').remove();
        $('#entidade').append('<option value="todasEscolas">Todas</option>'); 
    }

    let url = 'db/gerirOfertaFormativa.php?getEntidades';
   
    $.post(url, function(data)
    {      
        let arr = JSON.parse(data);
        for(let i = 0; i<arr.length; i++)
        {
            $('#entidade').append(`<option value="`+arr[i].id+`">`+arr[i].entidade+`</option>`); 
        }
    });        
    $('#entidade').val("default");    
    $( "#entidade" ).prop( "disabled", false );
}

function infoEntidadeCurso(idEntidade, idCurso){
    var num = 0;
    let cursos = "";
    let url = 'db/gerirOfertaFormativa.php?getEntidadeCursoInfo='+idEntidade+'&idCurso='+idCurso;
    $.post(url, function(data)
    {      
        console.log(data)
        let arr = JSON.parse(data)[0];
        console.log(arr)
        
        //let modalHead = "<h5 class='modal-title'> <i class='"+arr.icone+"'></i> "+arr.tipo+"</h5>";
        let modalHead = "<h5 class='modal-title'> "+arr.entidade+"</h5>";
        cursos += "<div class='card'>";
            cursos += "<div id='heading1'>";
                cursos += "<h5 align='center' class='mb-0' style='color: #04d107;'>";
                        cursos += arr.entidade;
                cursos += "</h5>";
                
            cursos += "</div>";
            cursos += "<div id='collapse1' class='collapse show' aria-labelledby='heading1' data-parent='#accordionExample'>";
                cursos += "<div class='card-body'>";

                cursos += "<h6>Formação</h6>";
                cursos += arr.curso+"</br>";    

                if(arr.descricao != ""){
                    cursos += "<br/><h6>Descrição</h6>";
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
                if(arr.modalidade != ""){
                    cursos += "<br><h6>Modalidade</h6>";
                    cursos += arr.modalidade+"<br>";
                }else{
                    num++;
                }
                if(arr.nivel != ""){
                    cursos += "<br><h6>Nível</h6>";
                    cursos += arr.nivel+"<br>";
                }else{
                    num++;
                }
                
                if(arr.info != "" && arr.info != null){
                    cursos += "<br/><h6>Outras informações</h6> ";
                    cursos += arr.info+"</br>";
                }else{
                    num++;
                }

                if(arr.link != ""){
                    cursos += "<br/>";
                    cursos += "<a target='_blank' href='"+arr.link+"'>"+arr.link+"</a></br>";
                }else{
                    num++;
                }

                if(arr.filename != "" && arr.filename != null){
                    cursos += "<br/><a target='_blank' href='formacoesAdultosPDFs/"+arr.filename+"'>Clique para fazer download de PDF informativo</a>";
                }else{
                    num++;
                }

                if(num == 7){
                    cursos += "Ainda não existem informações para este curso."
                }
                cursos += "</div>";
            cursos += "</div>";
        cursos += "</div>";
   
        
        cursos += "</div>";
        $('#modalHead').html(modalHead);
        $('#divResultados').html(cursos);
    });
}

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
}