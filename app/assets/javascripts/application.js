// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
// require jquery_ujs
//= require adequate_bootstrap
//= require_self

$(document).ready(function(){

  $('a[href*=#]').on('click', function(event){
    event.preventDefault();
    $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
  });

  var to_top = $(".totop");

  to_top.hide();

  $(window).scroll(function(){
    if (($(this).scrollTop() > 500) && ($(this).scrollTop() < 1000)) {
      to_top.fadeIn();
    } else {
      to_top.fadeOut();
    }
  });

  $('#navbar').on('activate.bs.scrollspy', function () {
    var element = $(this).find('.active').find('a').attr('href');
    ga('send', 'event', 'section', 'scrollspy', element);
  })

});