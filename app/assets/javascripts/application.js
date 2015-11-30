// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery.turbolinks
//= require turbolinks
//= require refile
//= require underscore
//= require gmaps/google
//= require_tree .

$(function() {
  $("#hide_eat_form").hide();
  $(".menu").hide();
  $(".menuShow").click(function(event) {
    $(".menu").fadeToggle();
    $(".menu-caret").toggleClass('rotate-180');
  });

  $(".main-logo").mouseover(function(){
    var newSrc = $(this).attr("src").replace("/images/logo-blue.png", "/images/logo-happy-green.png" );
    $(this).attr("src", newSrc);
  });
  $(".main-logo").mouseout(function(){
    var newSrc = $(this).attr("src").replace("/images/logo-happy-green.png", "/images/logo-blue.png" );
    $(this).attr("src", newSrc);
  });

  $(".search-results").hide();
  $(".search-button").click(function() {
    (".search-results").show();
  });

  $('#top-carousel').carousel({
	interval: 10000
	})
  $('#top-carousel').on('slid.bs.carousel', function() {
    	//alert("slid");
	});

  // $('#newest-carousel').carousel({
  // interval: 10000
  // })
  // $('#newest-carousel').on('slid.bs.carousel', function() {
  //     alert("slid");
  // });

 //  handler = Gmaps.build('Google');
 //  handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
 //   markers = handler.addMarkers([
 //     {
 //       "lat": 0,
 //       "lng": 0,
 //       "picture": {
 //         "url": "http://people.mozilla.com/~faaborg/files/shiretoko/firefoxIcon/firefox-32.png",
 //         "width":  32,
 //         "height": 32
 //       },
 //       "infowindow": "hello!"
 //     }
 //   ]);
 //   handler.bounds.extendWith(markers);
 //   handler.fitMapToBounds();
 // });

//  var handler = Gmaps.build('Google');
// handler.buildMap({ internal: {id: 'map'} }, function(){
//   if(navigator.geolocation)
//     navigator.geolocation.getCurrentPosition(displayOnMap);
// });
//
// function displayOnMap(position){
//   var marker = handler.addMarker({
//     lat: position.coords.latitude,
//     lng: position.coords.longitude
//   });
//   handler.map.centerOn(marker);
// };

// var directionsDisplay = new google.maps.DirectionsRenderer();
// var directionsService = new google.maps.DirectionsService();
//
// function calcRoute() {
//   var origin      = new google.maps.LatLng(gon.user.latitude, gon.user.longitude);
//   var destination = new google.maps.LatLng(gon.nearby_eats[0].latitude, gon.nearby_eats[0].longitude);
//   var request = {
//       origin:      origin,
//       destination: destination,
//       travelMode:  google.maps.TravelMode.DRIVING
//   };
//   directionsService.route(request, function(response, status) {
//     if (status == google.maps.DirectionsStatus.OK) {
//       directionsDisplay.setDirections(response);
//     }
//   });
// }
//
// calcRoute();
//
// var handler = Gmaps.build('Google');
// handler.buildMap({ internal: {id: 'map'}}, function(){
//   directionsDisplay.setMap(handler.getMap());
// });

// var handler = Gmaps.build('Google');
// handler.buildMap({ internal: {id: 'map'}}, function(){
//   var marker, i;
//   for (i = 0; i < gon.nearby_eats.length; i++) {
//   marker = new google.maps.Marker({
//     position: new google.maps.LatLng(gon.nearby_eats[i].latitude, gon.nearby_eats[i].longitude),
//   });
//
//   handler.bounds.extendWith(markers);
//   handler.fitMapToBounds();
// }
// });


var map = new google.maps.Map(document.getElementById('map'), {
      zoom: 14,
      center: new google.maps.LatLng(gon.user.latitude, gon.user.longitude),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    });

var userContentString = "<h4>Your Location:</h4>" +
                            "<p>" + gon.user.address + "</p>"
    ;


    var userInfoWindow = new google.maps.InfoWindow({
      content: userContentString
    });
    for (i = 0; i < gon.nearby_eats.length; i++) {
      var eatContentString = "<a href='/eats/" + gon.nearby_eats[i].id + "'>" + "<h4>" + gon.nearby_eats[i].name + "</h4>" + "</a>" +
                              "<p>" + gon.nearby_eats[i].address + "</p>" +
                              "<p>" + gon.nearby_eats[i].distance.toFixed(2) + " miles away</p>"
      ;
      var eatinfowindow = new google.maps.InfoWindow({
        content: eatContentString
      });
      var eatMarker = new google.maps.Marker({
        position: new google.maps.LatLng(gon.nearby_eats[i].latitude, gon.nearby_eats[i].longitude),
        map: map,
        icon: "/images/blue-marker.png",
        info: eatContentString
      });
      google.maps.event.addListener(eatMarker, 'click', function() {
        eatinfowindow.setContent( this.info );
        eatinfowindow.open(map, this);
      });
    };
      var userMarker = new google.maps.Marker({
        position: new google.maps.LatLng(gon.user.latitude, gon.user.longitude),
        map: map,
        icon: "/images/green-marker.png"
      });
      userMarker.addListener('click', function() {
        userInfoWindow.open(map, userMarker);
      });






});
