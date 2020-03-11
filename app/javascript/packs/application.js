import "bootstrap";
import 'select2/dist/css/select2.css';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import '../init_places';
import "../map_listener";
import "../timer.js";
import 'select2/dist/css/select2.css';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initSelect2 } from '../components/init_select2';
import { initMapbox } from '../components/init_mapbox';


initSelect2();
initMapbox();
// rangeSlider();
// import { rangeSlider } from "../radius_slider";





