function initMap() {
	
	var isDraggable;
	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
		isDraggable = false;
	} else {
		isDraggable = true;
	}

	var moscow = {lat:55.841166, lng: 37.484638};
	
	myMap = new google.maps.Map(document.getElementById('map'), {
		center: moscow,
		zoom: 13,
		disableDefaultUI: true,
		draggable: isDraggable,
		styles: [{"featureType": "administrative", "elementType": "labels.text.fill", "stylers": [{"color": "#444444"}]},{"featureType": "landscape","elementType": "all","stylers": [{"color": "#f2f2f2"}]},{"featureType": "poi","elementType": "all","stylers": [{"visibility": "off"}]},{"featureType": "road", "elementType": "all", "stylers": [{"saturation": -100},{"lightness": 45}]},{"featureType":"road.highway","elementType": "all","stylers": [{"visibility": "simplified"}]},{"featureType": "road.arterial", "elementType": "labels.icon", "stylers": [{"visibility": "off"}]},{"featureType":"transit","elementType": "all","stylers": [{"visibility": "off"}]},{"featureType": "water","elementType": "all","stylers": [{"color": "#46bcec"},{"visibility": "on"}]}]
	});

	var markerMoscow = new google.maps.Marker({

	    position: moscow,
	    map: myMap,
	    title: 'Москва',
	    icon: '../../../usercontent/maps/pin-green.png'

	});

	var contentStringMoscow = '<div id="content">'+
	      '<div id="siteNotice">'+
	      '</div>'+
	      '<h1 id="firstHeading" class="firstHeading">г. Москва</h1>'+
	      '<div id="bodyContent">'+
	      'метро Водный стадион</p>'+
	      '</div>'+
	      '</div>';
	
	var infowindowMoscow = new google.maps.InfoWindow({
		content: contentStringMoscow,
		maxWidth: 400
	});

	markerMoscow.addListener('click', function() {
		infowindowMoscow.open(myMap, markerMoscow);
	});

}

