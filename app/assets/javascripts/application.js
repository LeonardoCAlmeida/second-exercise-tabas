// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= popper
//= bootstrap-sprockets
//= require_tree .

$(document).ready(function(){
  $('.owl-carousel').owlCarousel({
    loop:false,
    margin:0,
    nav:true,
    navText : ['<i class="fa fa-angle-left" aria-hidden="true"></i>','<i class="fa fa-angle-right" aria-hidden="true"></i>'],
    dots: true,
    dotsEach: 1,
    responsive:{
        0:{
            items:3
        },
        600:{
            items:3
        },
        1000:{
            items:3
        }
    }
  })
});

$(document).ready(function(){
  if($(window).scrollTop() == 0 ){
    $('#index-nav').addClass('navbar-dark bg-dark text-light')
    $('#site-logo').prop('src', '/assets/diamond-gem.svg')

  } else {
    $('#index-nav').removeClass('navbar-dark bg-dark text-light')
  }
})

$(window).scroll(function () {
  if ($(this).scrollTop()  <= 0 || $(window).scrollTop() == $(document).height()- $(window).height()) {
    $('#index-nav').addClass('navbar-dark bg-dark text-light')
    $('#state-select').removeClass('d-none')
    $('#state-select-image-body').addClass('d-none')
    $('#site-logo').prop('src', '/assets/diamond-gem.svg')
  } else {
    $('#index-nav').removeClass('navbar-dark bg-dark text-light')
    $('#state-select').addClass('d-none')
    $('#state-select-image-body').removeClass('d-none')
    $('#site-logo').prop('src', '/assets/diamond.svg')
  }
});
