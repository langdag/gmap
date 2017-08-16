//$(document).ready(function(){
     // function initMap() {
     //   var uluru = {lat: -25.363, lng: 131.044};
     //   var map = new google.maps.Map(document.getElementById('map'), {
     //     zoom: 4,
     //     center: uluru
     //   });
     //   var marker = new google.maps.Marker({
     //     position: uluru,
     //     map: map
     //   });
     // }

  //$(window).on('load',function(){
      //var lat = $('#map').data('lat');
      //var lon = $('#map').data('lon');
    function initMap() {
      var lat = $('#map').data('lat');
      var lon = $('#map').data('lon');
      console.log(lat);
      var center = new google.maps.LatLng(lat,lon)
      var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 16,
      center: center,
      });
      var marker = new google.maps.Marker({
        position: center,
        map: map
      });
 
 // google.maps.event.addDomListener(window, 'load', initializer (<%= @store.lat %>, <%= @store.lng %>));

    };

  //});

//});