
$('.trigger-map').on('click', function(event){
	
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
// // <div class="row">
// // 		<iframe src=https://api.mapbox.com/v4/mapbox.streets/zoompan.html?access_token=pk.eyJ1Ijoiamtkc3R5bGUiLCJhIjoiY2llbXN0aWdsMDAyZXRqbTV5bnUyd3l2dSJ9.I560ydyKGSSMgF3vu3SBug#12/38/-77
// 	</div>
	
function onError() {
	console.log(error)
}

function onLocation(position) {
	console.log('you lat is ' + position.coords.latitude);
	console.log('your lon is ' + position.coords.longitude);
	
	// $('#locations').text('Lat' + position.coords.latitude + 'Lon' +  position.coords.longitude);
	var access_token = 'pk.eyJ1Ijoiamtkc3R5bGUiLCJhIjoiY2llbXN0aWdsMDAyZXRqbTV5bnUyd3l2dSJ9.I560ydyKGSSMgF3vu3SBug'
	var map_id = 'mapbox.streets'
	// var lon = position.coords.longitude
	// var lat = position.coords.latitude
	var lat = $("p.lon").text();
	var lon = $("p.lat").text();
	var gims_location = lon+','+lat
	var users_location = position.coords.longitude+','+position.coords.latitude
	var gim_marker = 'pin-l-pitch+482(' + gims_location + ')';
	var user_marker = 'pin-l-marker+482('+ users_location +')';
	var zoom = '14'
	var format = 'jpg90'
	var width = '640'
	var height = '640';
	var url ='https://api.mapbox.com/v4/' + map_id + '/' + gim_marker + ',' + user_marker + '/' + lon + ',' + lat + ',' + zoom + '/' + width + 'x' + height + '.' + format + '?access_token=' + access_token;
	// var url = 'https://api.mapbox.com/v4/'+ map_id + '/zoompan.html?access_token='+access_token +'#' + lat + lon;
// 	
	// $('#map').fadeIn("slow");
	$('#map').html('<img src=' + url + '>');
	// $(".trigger-map").on('click',function(){
    	console.log('hola')
    $("#map").fadeToggle("slow");
   


	saveLocation(position);
	
	// $('#map').on("click", function(event){
	// 	event.preventDefault()
	// 	'https:api.mapbox.com/v4/directions/mapbox.walking/-'+ users_location+";-"+gims_location.json + '?access_token=' + access_token
	// 	$('#map').html('<img src=' + url + '>');


	// });
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
	// var savePosition = window.sessionStorage.getItem('position').split(",")
	// console.log(savePosition);
// 			navigator.geolocation.getCurrentPosition(saveLocation, onError, options)
});

// 		var options = {
// 			enableHighAccuracy: true
// 		};



