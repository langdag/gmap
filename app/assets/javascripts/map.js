function initMap(lat,lon) {
  var center = new google.maps.LatLng(lat, lon)
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 4,
    center: center
   });
  var marker = new google.maps.Marker({
    position: center,
    map: map
  });
  //google.maps.addDomListener(window, 'load', initialize(<%= @event.lat %>, <%= event.lon %>));
}