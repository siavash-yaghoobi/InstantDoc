if (document.querySelector('#address-input')) {
  var places = require('places.js');
  var placesAutocomplete = places({
    appId: process.env['YOUR_PLACES_APP_ID'],
    apiKey: process.env['YOUR_PLACES_API_KEY'],
    container: document.querySelector('#address-input')
  });
}
