// NavBar //

$(document).ready(function () {
    $('.navbar-light .dmenu').click(function () {
            $(this).find('.sm-menu').first().stop(true, true).slideDown(200);
        }, function () {
            $(this).find('.sm-menu').first().stop(true, true).slideUp(0)
        });
    }); 
     
        $(document).ready(function() {
        $(".megamenu").on("click", function(e) {
            e.stopPropagation();
        });
    });
    
//NavBar//

//Product counter//
var num;

$('.button-count:first-child').click(function(){
  num = parseInt($('input:text').val());
  if (num > 1) {
    $('input:text').val(num - 1);
  }
  if (num == 2) {
    $('.button-count:first-child').prop('disabled', true);
  }
  if (num == 10) {
    $('.button-count:last-child').prop('disabled', false);
  }
});

$('.button-count:last-child').click(function(){
  num = parseInt($('input:text').val());
  if (num < 10) {
    $('input:text').val(num + 1);
  }
  if (num > 0) {
    $('.button-count:first-child').prop('disabled', false);
  }
  if (num == 9) {
    $('.button-count:last-child').prop('disabled', true);
  }
});
//Product counter//

//SLider//

window.addEventListener('DOMContentLoaded', function(e) {
    $('.carousel').slick({
      dots: true,
      autoplay: true,
      autoplaySpeed: 7000,
      prevArrow: '<button class="previous-button is-control">' +
                 '  <span class="fas fa-angle-left" aria-hidden="true"></span>' +
                 '  <span class="sr-only">Previous slide</span>' +
                 '</button>',
      nextArrow: '<button class="next-button is-control">' +
                 '  <span class="fas fa-angle-right" aria-hidden="true"></span>' +
                 '  <span class="sr-only">Next slide</span>' +
                 '</button>'
    });
  });



//Slider//

//Mini cart//
 $( ".Shopping-cart" ).click(function() {
  $( ".MiniCart" ).fadeToggle();
}); 

//sidemessage


//shipping box
$(document).ready(function () {
  if (window.innerWidth > 1000){
  $("#ShippingBox").animate({right: '65px'}, 2000);
  }
  $( window ).resize(function() {
    if (window.innerWidth > 1000){
      $("#ShippingBox").animate({right: '65px'});
      }
    else if (window.innerWidth < 1000){
      $("#ShippingBox").animate({right: '0px'});
      } 
      });
      $("#Close_Shipping_Box").click(function() { 
        $("#ShippingBox").animate({right: '-500px'}, 2000);
      });
      
});




// $(".User-Icon").click(function(){
//   $(".User-Menu").fadeToggle();
// });


$('.User-avtar').click(function(){
  if( $(".User-Dropdown").hasClass( "U-open" ) ){
          $('.User-Dropdown').removeClass("U-open");
  }
  else {
          $('.User-Dropdown').addClass("U-open");
  }
});