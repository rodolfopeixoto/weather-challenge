function initialize() {
  var input = document.getElementById('city');
  var input_favorite_city = document.getElementById('favorite_city_name');

  options = {
    types: ['(cities)']
  }
  new google.maps.places.Autocomplete(input, options);
  new google.maps.places.Autocomplete(input_favorite_city, options);
}
google.maps.event.addDomListener(window, 'load', initialize);
