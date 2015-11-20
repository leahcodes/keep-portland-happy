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

});
