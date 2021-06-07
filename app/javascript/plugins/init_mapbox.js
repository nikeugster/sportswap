import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 }); 
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v11'
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window);
      new mapboxgl.Marker({ "color": "#EF767A" })
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    });

    map.on('mouseenter', 'places', function (e) {
    map.getCanvas().style.cursor = 'pointer';
     
    var coordinates = e.features[0].geometry.coordinates.slice();
    var description = e.features[0].properties.description;
     
    while (Math.abs(e.lngLat.lng - coordinates[0]) > 180) {
    coordinates[0] += e.lngLat.lng > coordinates[0] ? 360 : -360;
    }
     
    popup.setLngLat(coordinates).setHTML(description).addTo(map);
    });
     
    map.on('mouseleave', 'places', function () {
    map.getCanvas().style.cursor = '';
    popup.remove();
    });

    fitMapToMarkers(map, markers);
    setTimeout(() => {
      map.resize();
      fitMapToMarkers(map, markers);
    }, 500)

    setTimeout(() => {
        map.resize();
        fitMapToMarkers(map, markers);
      }, 1000)
    }
}

export { initMapbox };
