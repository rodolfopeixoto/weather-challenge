function initialize() {
  var input = document.getElementById('city');
  options = {
    types: ['(cities)']
  }
  new google.maps.places.Autocomplete(input, options);
}
google.maps.event.addDomListener(window, 'load', initialize);
