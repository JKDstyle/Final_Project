$(document).on("ready", function() {
	function geolocation(){
			if("geolocation" in navigator){
				console.log("available")
				navigator.geolocation.getCurrentPosition(onLocation, onError);

			}else{
				console.log("no avaiable")
			}
		};
		$('document').on('ready', geolocation());
	
})


	function onLocation(position) {
		console.log(position.coords.latitude)
		console.log(position.coords.longitude)
	}
		
	function onError() {
		console.log(error)
	}


// 		function onLocation(position) {
// 			console.log('you lat is ' + position.coords.latitude);
// 			console.log('your lon is ' + position.coords.longitude);
			
// 			// $('#locations').text('Lat' + position.coords.latitude + 'Lon' +  position.coords.longitude);
// 			var access_token = 'pk.eyJ1Ijoiamtkc3R5bGUiLCJhIjoiY2llbXN0aWdsMDAyZXRqbTV5bnUyd3l2dSJ9.I560ydyKGSSMgF3vu3SBug'
// 			var map_id = 'mapbox.streets-satellite'
// 			var zoom = '20'
// 			var format = 'jpg90'
// 			var width = '640'
// 			var height = '640'
// 			var lon = position.coords.longitude
// 			var lat = position.coords.latitude
// 			var url ='https://api.mapbox.com/v4/' + map_id + '/' + lon + ',' + lat + ',' + zoom + '/' + width + 'x' + height + '.' + format + '?access_token=' + access_token;
// 			$('#position').after('<img src=' + url + '>');
// 			saveLocation(position);
// 		}

// 		function saveLocation(location){
// 			var lon = location.coords.longitude
// 			var lat = location.coords.latitude
// 			var position = lon + ',' + lat;
// 			console.log(position);
// 			var i = window.sessionStorage.setItem("position", position);
// 			console.log(i)
// 		}
			


// 		function onError(error){
// 			console.error(error);
// 		}

// 		var options = {
// 			enableHighAccuracy: true
// 		};

// 		$('button#I_was_here').on('click', function(event){
// 			var savePosition = window.sessionStorage.getItem('position').split(",")
// 			console.log(savePosition)
// // ;			navigator.geolocation.getCurrentPosition(saveLocation, onError, options)
// 		})


// 		$('button#Where_was_I').on('click', function(event){
// 			var where = window.localStorage.getItem("position");
// 			console.log(where)
// 			$('#where').append(where)

		// })