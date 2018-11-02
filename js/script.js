// define variables
limitPlacesAmount = 9; // 10 or over results in over_query_limit error
distances = new Array();
getCoordinatesFromAddress = new Array();
getDistanceBetweenGeolocation = new Array();
openMenuCall = "";
openMenuCallSearch = "";
openMenuCallCity = "toronto";
openMenuCallCountry = "CA";
workingOpenMenuCall = "https://openmenu.com/api/v2/search.php?key=994e8105-5926-11e8-8dcc-525400552a35&s=five%20guys&city=toronto&country=CA"
restaurantData = {};
userCoordinates = new Array();
userAddress = "";
distanceRadius = 250; // metres
nearbyPlaces = new Array();
jumbotronPosition = 0;

// on page load
$(document).ready(function() {
	console.log("Page is ready");

	// set default colour mode to light mode
	if (!localStorage.getItem('colourState')) {
		localStorage.setItem("colourState", 'blackOnWhite');
	}

	// set default font to sans-serif
	if (!localStorage.getItem('fontState')) {
		localStorage.setItem('fontState', 'sans-serif');
	}
	set_font()

	colour_set();
});

// Get and track user geo coordinates
function watch_user_location() {
	geocodeToggle = 0;
	console.log("watch_user_location()");
	$("#index-tracking-p").html("MenuVox is tracking your location.");
	// if location was found
	if (navigator.geolocation) {
		navigator.geolocation.watchPosition(show_user_position);
	} else {
		console.log("Geolocation is not supported by this browser.");
	}
} // end of watch_user_location()

// display user geo coordinates and save to variable
function show_user_position(position) {
	userCoordinates.push(position.coords.latitude);
	userCoordinates.push(position.coords.longitude);
	// display user coordinates
	console.log("userCoordinates: " + userCoordinates[0] + "," + userCoordinates[1]);
	// $("#index-user-coordinates-label").html(userCoordinates[0] + "," + userCoordinates[1]);
	// show every time the watch location updates
	$("#index-geocode-toggle").html(geocodeToggle);
	geocodeToggle++;
	// when the location was initially found and every 10 toggles
	if ((geocodeToggle == 1) || (geocodeToggle % 10 == 0)) {
		// wait 2 seconds (for location accuracy) then call next function
		setTimeout(get_user_geolocation(), 2000);
	}
} // end of show_user_position()

// stop tracking user geo coordinates
function stop_watch_user_location() {
	navigator.geolocation.clearWatch(show_user_position);
	console.log("TRACKING STOPPED");
	$("#index-tracking-p").html("MenuVox is not tracking your location.");
} // end of stop_watch_user_location()

// reverse geocode user geo coordinates
function get_user_geolocation() {
	$("#index-geocode-toggle").html("RESET");
	console.log("get_user_geolocation()");
	// initialize google maps geocoder
	var geocoder = new google.maps.Geocoder;
	// construct object on geolocation coordinates
	var latlng = {
		lat: parseFloat(userCoordinates[0]),
		lng: parseFloat(userCoordinates[1])
	};
	// execute google maps reverse geocode function
	geocoder.geocode({'location': latlng}, function(results, status) {
		// if status is ok
		if (status === 'OK') {
			// if there are results
			if (results[0]) {
				// save results to variable
				userAddress = results[0].formatted_address;
				console.log("userAddress: " + userAddress);
				// display user address
				$("#index-user-geocode-label").html(userAddress);
				// execute function to get nearby restaurants
				get_nearby_places("restaurant", distanceRadius);
			} else {
				// alert error message
				window.alert('No results found.');
			}
		} else {
			// alert error message
			window.alert('Geocoder failed due to: ' + status);
		}
	}); // end of geocode()
} // end of get_user_geolocation

// get nearby places based on user geolocation (radius is in metres)
function get_nearby_places(category, radius) {
	// initialize google maps places
	var service = new google.maps.places.PlacesService($('#google-places-service').get(0));
	// construct object on geolocation coordinates
	var latlng = {
		lat: parseFloat(userCoordinates[0]),
		lng: parseFloat(userCoordinates[1])
	};
	// search for nearby places
	service.nearbySearch({
		location: latlng,
		// radius: radius, // must have rankBy removed when using radius
		type: category,
		rankBy: google.maps.places.RankBy.DISTANCE // must have radius removed when using rankBy
	}, get_nearby_places_callback);
} // end of get_nearby_places(category, radius)

// call back for get nearby places function
function get_nearby_places_callback(results, status) {
	// if status is ok
	if (status === google.maps.places.PlacesServiceStatus.OK) {
		// loop through results
		console.log(results.length);
		for (var i = 0; i < results.length; i++) {
			// save nearby places results to array
			nearbyPlaces.push([results[i].name, results[i].vicinity]);
		}
		console.log(nearbyPlaces);
		// display restaurant
		setTimeout(function() {
			after_geolocation_results();
		}, 2000);
	} else {
		// alert error message
		alert('Get nearby places was not successful for the following reason: ' + status);
	}
} // get_nearby_places_callback(results, status)

// after geolocation results, code can continue here
function after_geolocation_results() {
	// $('.jumbotron').removeClass('display-none');
	// console.log(nearbyPlacesSorted);
	$(".jumbotron").removeClass('display-none');
	display_restaurant();
}

// display restaurant name to page
function display_restaurant() {
	// display restaurant
	$("#modal-description").html("Attention. Are you dining at " + nearbyPlaces[jumbotronPosition][0] +
	"? Select Yes to view menu. Select No for another restaurant prompt. Select Reset to reset your location.");
	$("#modal-div").show().delay(500);
	$("#modal-description").focus();
	// $("#modal-div").focus();
}

// call openmenu api
function call_openmenu() {
	// save api call variable
	openMenuCall = "https://openmenu.com/api/v2/search.php?key=994e8105-5926-11e8-8dcc-525400552a35"; // base url
	openMenuCallSearch = nearbyPlaces[jumbotronPosition][0].replace(/ /g,"%20"); // replace all spaces with %20
	openMenuCall += "&s=" + openMenuCallSearch;
	openMenuCall += "&city=" + openMenuCallCity;
	openMenuCall += "&country=" + openMenuCallCountry;

	console.log(openMenuCall);

	// call open menu api
	$.getJSON(openMenuCall, function(data) { // workingOpenMenuCall
		// save json object to global variable
		restaurantData = data;
		// begin building alert div
		alertDiv = '<div class="alert alert-';
		// if api response is not ok
		if (restaurantData.response.api.status != 200) {
			// build error alert div
			alertDiv += 'danger" role="alert">';
			alertDiv += '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
			alertDiv += '[Error Code ' + restaurantData.response.api.status + '] OpenMenu: ' + restaurantData.response.result.errors[0];
		} else {
			// build success alert div
			alertDiv += 'success" role="alert">';
			alertDiv += '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>';
			alertDiv += '[Success Code ' + restaurantData.response.api.status + '] OpenMenu: Successful call';
		}
		// end alert build
		alertDiv += '</div>';
		// display alert div
		$('#index-alert-div').html(alertDiv);
		// hide alert div after delay
		// setTimeout(function() { $('#index-alert-div').html(""); }, 5000);
		console.log(restaurantData);
	});
}

// open page url
function open_page(url) {
	document.location.href = url;
	console.log(url);
}

// toggle invert
function toggle_invert(type) {
	if (type == 'colour') {
		if (localStorage.getItem('colourState') == 'blackOnWhite') {
			localStorage.setItem('colourState', 'whiteOnBlack');
		} else  {
			localStorage.setItem('colourState', 'blackOnWhite');
		}
		colour_set();
	} else if (type == 'font') {
		if (localStorage.getItem('fontState') == 'sans-serif') {
			localStorage.setItem('fontState', 'serif');
		} else  {
			localStorage.setItem('fontState', 'sans-serif');
		}
		set_font();
	}
}

// change colour mode
function colour_set() {
	if (localStorage.getItem("colourState") == "blackOnWhite") {
		// button text
		$('#invert-button').html('Dark Mode');
		// sitewide
		$('body').css('color', 'var(--text-off-black)');
		$('body').css('background-color', 'var(--white)');
		$('#invert-button').removeClass('btn-light').addClass('btn-dark');
		$('#toggle-font').removeClass('btn-outline-light').addClass('btn-outline-dark');
		// index
		$('#index-yes-button').removeClass('btn-outline-light').addClass('btn-outline-dark');
		$('#index-no-button').removeClass('btn-outline-light').addClass('btn-outline-dark');
		$('#index-reset-button').removeClass('btn-outline-light').addClass('btn-outline-dark');
		$('#index-stop-tracking-button').removeClass('btn-outline-light').addClass('btn-outline-dark');
		$('#index-yes-button').removeClass('btn-outline-light').addClass('btn-outline-dark');
		// menu
		$('#menu-back-to-home').removeClass('btn-outline-light').addClass('btn-outline-dark');
		$('.menu-category-list li').css('background-color', 'var(--white)').css('color', 'var(--text-off-black)').css('border', '1px solid var(--text-off-black)');
		$('.menu-category-list a').css('color', 'var(--text-off-black)');
		$('#menu-back-to-main-menu').removeClass('btn-outline-light').addClass('btn-outline-dark');
		$('.menu-back-to-category-menu').removeClass('btn-outline-light').addClass('btn-outline-dark');
		// menu item
		$('#menu-item-page').removeClass('background-color-off-black');
		$('#menu-item-page').css('border', 'none');
		$('#menu-item-hr').removeClass('border-1-white');
	} else  {
		// button text
		$('#invert-button').html('Light Mode');
		// sitewide
		$('body').css('color', 'var(--white)');
		$('body').css('background-color', 'var(--text-off-black)');
		$('#invert-button').removeClass('btn-dark').addClass('btn-light');
		$('#toggle-font').removeClass('btn-outline-dark').addClass('btn-outline-light');
		// index
		$('#index-yes-button').removeClass('btn-outline-dark').addClass('btn-outline-light');
		$('#index-no-button').removeClass('btn-outline-dark').addClass('btn-outline-light');
		$('#index-reset-button').removeClass('btn-outline-dark').addClass('btn-outline-light');
		$('#index-stop-tracking-button').removeClass('btn-outline-dark').addClass('btn-outline-light');
		$('#index-yes-button').removeClass('btn-outline-dark').addClass('btn-outline-light');
		// menu
		$('#menu-back-to-home').removeClass('btn-outline-dark').addClass('btn-outline-light');
		$('.menu-category-list li').css('background-color', 'var(--text-off-black)').css('color', 'var(--white)').css('border', '1px solid var(--white)');
		$('.menu-category-list a').css('color', 'var(--white)');
		$('#menu-back-to-main-menu').removeClass('btn-outline-dark').addClass('btn-outline-light');
		$('.menu-back-to-category-menu').removeClass('btn-outline-dark').addClass('btn-outline-light');
		// menu item
		$('#menu-item-page').addClass('background-color-off-black');
		$('#menu-item-page').css('border', '1px solid var(--white)');
		$('#menu-item-hr').addClass('border-1-white');
	}
}

// toggle font
function set_font() {
	$('body').css('font-family', localStorage.getItem('fontState'));
}

// when no button is selected
$('#index-no-button').click(function() {
	// increase variable by 1
	jumbotronPosition++;
	// if variable equals nearby restaurant count
	if (jumbotronPosition == nearbyPlaces.length) {
		// reset variable to 0
		jumbotronPosition = 0;
	}
	// execute display restaurant function
	display_restaurant();
});

// when no button is selected
$('#index-yes-button').click(function() {
	// stop_watch_user_location();
	// document.location.href = 'menu.php?restaurant=' + nearbyPlaces[jumbotronPosition][0];
	document.location.href = "menu.php?restaurant=Jack Astor's";
	stop_watch_user_location();
});
