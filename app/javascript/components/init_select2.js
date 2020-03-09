import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2();
};

const refreshSearch = () => {
  const select = document.querySelector('#specialty');
  console.log(select);

  $('#specialty').on('select2:select', function (e) {
    // Do something
    console.log(e)

  });
};

export { initSelect2, refreshSearch };



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


