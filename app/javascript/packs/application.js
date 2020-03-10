import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import 'select2/dist/css/select2.css';
import '../init_places';
import "../map_listener";
import "../timer.js";
// import { rangeSlider } from "../radius_slider";
import 'select2/dist/css/select2.css';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../components/init_mapbox';
import { initSelect2 } from '../components/init_select2';


initMapbox();
initSelect2();
// rangeSlider();
// import { rangeSlider } from "../radius_slider";





