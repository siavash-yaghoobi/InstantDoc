import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2({
      placeholder: "Choose a specialty",
      allowClear: true
    });

  // on page load, choose whichever specialty was selected
  document.addEventListener("DOMContentLoaded", function(event) {
    const currSpecialty = getQueryParameterByName('specialties');
    $('#specialty').val(currSpecialty).trigger('change');
  });

  // on specialty select
  $("#specialty")
    .on('select2:select', function (e) {
    // Do something
      const selectedSpecialtyId = e.params.data.id;
      window.location.href = updateQueryStringParameter(window.location.href, 'specialties', selectedSpecialtyId);
    });
};



function getQueryParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, '\\$&');
    var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, ' '));
}

function updateQueryStringParameter(uri, key, value) {
  var re = new RegExp("([?&])" + key + "=.*?(&|$)", "i");
  var separator = uri.indexOf('?') !== -1 ? "&" : "?";
  if (uri.match(re)) {
    return uri.replace(re, '$1' + key + "=" + value + '$2');
  }
  else {
    return uri + separator + key + "=" + value;
  }
}

    $(document).ready(function() {
      $('select#placeholder-example')
    });



export { initSelect2 };



// put an event listener on the speciality select tag
// select.addEventListener('change', (event) => {
//   event.preventDefault();



// });

// if the input changes

//   function call


//     get  the params of the url

//     get the speciality

//     make a fetch get request with the params and the speciality

//     https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API/Using_Fetch


