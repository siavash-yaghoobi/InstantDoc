(function() {
  const toggleMap = document.getElementById('toggle-map');

  if (toggleMap) {

    function mapToggleEvent() {
      const map = document.getElementById('map');
      map.style.visibility = map.style.visibility === 'hidden' ? 'visible' : "hidden";

      const list = document.getElementById('doctor-list');
      list.style.display = list.style.display === 'none' ? 'block' : "none";

      this.classList.toggle('show-map-text');
      this.classList.toggle('show-list-text');
    }

    toggleMap.addEventListener('click', mapToggleEvent);
  }
})();
