 // This is the IE6 Js hack for submit button rollovers
$(document).ready(function() {
  $('form .submitbtn').hover(function() {
    $(this).css({"background": "url('../images/submit_button.png') 0px 0px no-repeat"});
    $(this).css({"background": "url('../images/submit_button.png') 0px -42px no-repeat"});
  },
  function() {
    $(this).css({"background": "url('../images/submit_button.png') 0px -42px no-repeat"});
    $(this).css({"background": "url('../images/submit_button.png') 0px 0px no-repeat"});
  });
});

// Sets up the fade on the Main nav buttons
$(document).ready(function() {
  $('ul.nav_ul li').removeClass('highlight');
  $('ul.nav_ul a').append('<span class="hover" />').each(function(){
        $(this).css({fontSize : 0});
        var $span2 = $('> span.hover', this).css({opacity : 0});
        $(this).hover(function() {
          if ($(this).hasClass('active')) {
            $span2.stop().fadeTo(500, 0);
          } else {
           $span2.stop().fadeTo(500, 1); 
          }
        }, function() {
          $span2.stop().fadeTo(500, 0);
      });
      $(this).click( function() {
        $span2.fadeTo(200, 0);
        $('ul.nav_ul a').removeClass('active');
        $(this).addClass('active');
      });
  });
});


// Sets the Main Nav Current Page Selection Tab
$(document).ready(function() {
  var url = location.pathname;
  var current_link = $('#main_nav ul li a[href$="' + url + '"]');
  if (url == "/") {
     current_link.removeClass('active');
     $('#home').addClass('active');
   } else {
   current_link.addClass('active');
   }
});

// Sets up the contact banner button
$(document).ready(function() {
  $('#contact_nav').removeClass('highlight');
  $('#contact_nav').append('<span class="hover" />').each(function(){
        $(this).css({fontSize : 0});
        var $span2 = $('> span.hover', this).css({opacity : 0});
        $(this).hover(function() {
          if ($(this).hasClass('active')) {
            $span2.stop().fadeTo(500, 0);
          } else {
           $span2.stop().fadeTo(500, 1); 
          }
        }, function() {
          $span2.stop().fadeTo(500, 0);
      });
      $(this).click( function() {
        $span2.fadeTo(200, 0);
        $('#contact_nav a').removeClass('active');
        $(this).addClass('active');
      });
  });
});


// Sets up the crossfade
$(document).ready(function() {
	
	var $list = $('ul.cube_crossfade');
	var $first_li = $list.children("li:first");
	var $i_width = $first_li.width();
	var $i_height = $first_li.height();
	
	$list.cube_crossfade({
		speed : 2000,
		pause : 5000
	});
});

// Event Calendar Popups
// $(document).ready(function() {
//   $('#event_start_date').datepicker({
// 		showButtonPanel: true
// 	});
// 	
// 	$('#event_end_date').datepicker({
// 		showButtonPanel: true
// 	});
// });

// Data Tables
// $(document).ready(function() {
// 	categoriesTable = $('#categories_table').dataTable({
// 		"bJQueryUI": true,
// 		"sPaginationType": "full_numbers"
// 	});
// 	productsTable = $('#products_table').dataTable({
// 		"bJQueryUI": true,
// 		"sPaginationType": "full_numbers"
// 	});
// });


function notify(flash_message) {

 var flash_div = $("#flash");
 flash_div.html(flash_message);
 flash_div.fadeIn(400);

 setTimeout(function() {
  flash_div.fadeOut(2000,
  function() {
   flash_div.html("");
   flash_div.hide()})},
 1400);
}

$(document).ready(function() {
	$("#flash").hide();
	var flash_message = $("#flash").html();
	msg = $.trim(flash_message);
 	if(msg != "") {
		notify(flash_message);
	}
});
// 
// $(function() {
//     $(".media_image_carousel").jCarouselLite({
//         btnNext: ".next",
//         btnPrev: ".prev"
//     });
// });












