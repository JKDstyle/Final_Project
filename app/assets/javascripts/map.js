
$('.trigger-map').on('click', function(event){
	console.log("hey")
	event.preventDefault();
	geolocation();
});

function geolocation(){
	if("geolocation" in navigator){
		console.log("available")
		navigator.geolocation.getCurrentPosition(onLocation, onError);

	}else{
		console.log("no avaiable")
	}
}

// function onLocation(position) {
// 	console.log(position.coords.latitude)
// 	console.log(position.coords.longitude)
// }
		
function onError() {
	console.log(error)
}


		function onLocation(position) {
			console.log('you lat is ' + position.coords.latitude);
			console.log('your lon is ' + position.coords.longitude);
			
			// $('#locations').text('Lat' + position.coords.latitude + 'Lon' +  position.coords.longitude);
			var access_token = 'pk.eyJ1Ijoiamtkc3R5bGUiLCJhIjoiY2llbXN0aWdsMDAyZXRqbTV5bnUyd3l2dSJ9.I560ydyKGSSMgF3vu3SBug'
			var map_id = 'mapbox.streets-satellite'
			// var lon = position.coords.longitude
			// var lat = position.coords.latitude
			var lat = $("p.lon").text();
			var lon = $("p.lat").text();
			var gims_location = lon+','+lat
			var gim_marker = 'pin-l-park+482(' + gims_location + ')';
			var user_marker = 'pin-l-star+482('+position.coords.longitude+','+position.coords.latitude+')';
			var zoom = '16'
			var format = 'jpg90'
			var width = '640'
			var height = '640';
			// var url ='https://api.mapbox.com/v4/' + map_id + '/' + gim_marker + ',' + user_marker + '/' + lon + ',' + lat + ',' + zoom + '/' + width + 'x' + height + '.' + format + '?access_token=' + access_token;
			var url ='https://api.mapbox.com/v4/' + map_id + '/' + gim_marker + ',' + user_marker + '/' + lon + ',' + lat + ',' + zoom + '/' + width + 'x' + height + '.' + format + '?access_token=' + access_token;
			console.log(url)
			$('#map').html('<img src=' + url + '>');
			saveLocation(position);
			
			// $('#map').on(click, function(event)){
			// 	event.preventDefault()
			// 	https:api.mapbox.com/v4/directions/mapbox.walking/-user_marker;-gim_marker.json?access_token=access_token
			// 	$('#map').html('<img src=' + url + '>');


		}

		function saveLocation(location){
			var lon = location.coords.longitude
			var lat = location.coords.latitude
			var position = lon + ',' + lat;
			console.log(position);
			var i = window.sessionStorage.setItem("position", position);
			console.log(i)
		}
			



		$('.trigger-map').on('click', function(event){
			event.preventDefault();
			var savePosition = window.sessionStorage.getItem('position').split(",")
			console.log(savePosition)
// ;			navigator.geolocation.getCurrentPosition(saveLocation, onError, options)
		})

// 		var options = {
// 			enableHighAccuracy: true
// 		};




// 		$('button#Where_was_I').on('click', function(event){
// 			var where = window.localStorage.getItem("position");
// 			console.log(where)
// 			$('#where').append(where)

		// })