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
