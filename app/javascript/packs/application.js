import "bootstrap";
import '../init_places';
import "../map_listener";
import "../radius_slider";
import 'select2/dist/css/select2.css';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../components/init_mapbox';
import { initSelect2, refreshSearch } from '../components/init_select2';


initSelect2();
refreshSearch();
initMapbox();




