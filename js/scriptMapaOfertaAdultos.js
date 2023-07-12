
var markers = [];
var map;
function initMapEntidades() {    
    map = new google.maps.Map(document.getElementById('map'), {
      center: {lat: 38.651007, lng: -9.022961},
      zoom: 12
    });    

    let url = 'db/gerirOfertaFormativa.php?getEntidadesMap';
    $.post(url, function(data)
    {
        let arr = JSON.parse(data);
        console.log(arr)
        for(i = 0; i < arr.length; i++){
            _fillMapEntidades(arr[i].latitude, arr[i].longitude, arr[i].entidade, arr[i].link, arr[i].email, arr[i].telefone, arr[i].morada);
        }
    });
}
    
function setMapOnAllEntidades(map) {
for (var i = 0; i < markers.length; i++) {
    markers[i].setMap(map);
}
}

// Removes the markers from the map, but keeps them in the array.
function clearMarkersEntidades() {
    setMapOnAllEntidades(null);
}

function addMarkerEntidades(props){

    var marker = new google.maps.Marker({
      position:props.coords,
      map:map
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

function _fillMapEntidades(latitude, longitude, escola, link, email, telefone, morada){    
    var lat = parseFloat(latitude);
    var lng = parseFloat(longitude);
    var obj = {
        coords: {lat: lat, lng: lng},
        content:'<div id="iw-container" >' +
        '<div class="iw-content">'
            +'<a href="'+link+'" target="_blank">'+escola+'</a><br/>'
            +email+'</br>'
            +telefone+'</br>'
            +morada+'</br>'            
        +'</div>' +
        '<div class="iw-bottom-gradient"></div>' +
        '</div>'
    };  
    markers.push(obj);
    for(var i = 0;i < markers.length;i++){
        // Add marker
        addMarkerEntidades(markers[i]);
    }
}


    
