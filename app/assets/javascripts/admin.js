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
//= require bootstrap
//= require bootstrap-material-design

ready = function(){

  $.material.options = {
    "withRipples": ".btn:not(.btn-link), .card-image, .navbar a:not(.withoutripple), .nav-tabs a:not(.withoutripple), .withripple",
    "inputElements": "input.form-control, textarea.form-control, select.form-control",
    "togglebuttonElements": ".togglebutton > label > input[type=checkbox], .togglebuttoned > span",
    "checkboxElements": ".checkbox > label > input[type=checkbox], .checkboxed",
    "radioElements": ".radio > label > input[type=radio]"
  }

  $.material.checkbox();
  $.material.togglebutton();

  alerts = $('.flash-alert');
  if (alerts.length ) {
    //var options = { timeout: 0 };
    //alerts.snackbar(options);
    alerts.snackbar('show');
  }
};

$(document).ready(ready);

$(document).on('page:load', ready);