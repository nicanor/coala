// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-min
//= require bootstrap-material-design

ready = function(){
  $.material.checkbox();

  alerts = $('.flash-alert');
  if (alerts.length ) {
    //var options = { timeout: 0 };
    //alerts.snackbar(options);
    alerts.snackbar('show');
  }
};

$(document).ready(ready);

$(document).on('page:load', ready);