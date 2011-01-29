/*jslint white: false, onevar: false, browser: true, devel: true, undef: true, nomen: true, laxbreak: true, eqeqeq: true, plusplus: true, bitwise: true, regexp: true, strict: false, newcap: true, immed: true, laxbreak: true */
/*global jQuery, $, Raphael */

var flash = {

	injectFlashBox: function() {
		$('#flash').addClass("flash_wrap");
		$("#flash").hide();
	},

	setFlash: function() {
		var flash_message = $("#flash").html();
		var msg = $.trim(flash_message);
		if (msg !== "") {
			flash.activateNotice(flash_message);
		}
	},

	activateNotice: function(flash_message) {
		var $flash_div = $("#flash");
		$flash_div.html(flash_message);
		$flash_div.show("slide", {
			direction: 'up'
		});
		// Set the fadeout
		setTimeout(function() {
			$flash_div.hide("slide", {
				direction: 'up'
			},
			function() {
				$flash_div.html("");
				$flash_div.hide();
			});
		},
		2500);
	}

};

var app = {
	
	twitterFeed: function() {
		$("#twitter_feed").getTwitter({
			userName: "devengine",
			numTweets: 1,
			loaderText: "Loading tweets...",
			slideIn: true,
			showHeading: true,
			headingText: "Recent Tweet",
			showProfileLink: true
		});
	},
	
	navHoverSlider: function() {
		var url = location.pathname;
	  var current_link = $('#main_nav ul li a[href$="' + url + '"]');
	  if (url == "/") {
	     current_link.removeClass('active');
	     $('#home').addClass('active');
	   } else {
	   current_link.addClass('active');
	   }
	},
	
	elasticNav: function() {
		$("#nav").elasticNav({
			reset : 1000
		});
	},
	
	mainNav: function() {
		var links = $('ul.nav_ul li a'),
				lis = links.parents("li");
	  lis.removeClass('highlight');
	  links.append('<span class="hover" />').each(function(){
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
	        links.removeClass('active');
	        $(this).addClass('active');
	      });
	  });
	},
	
	getQuoteButton: function() {
		var links = $('#get_quote_btn_big a'),
				wrap = links.parent("#get_quote_btn_big");
				topLink = $("#quote"),
				topWrap = topLink.parent("li");
				
				
				
	  wrap.removeClass('highlight');
	  links.append('<span class="hover" />').each(function() {
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
	        links.removeClass('active');
	        $(this).addClass('active');
	      });
	  });
	
		topLink.append('<span class="hover" />').each(function() {
	        $(this).css({fontSize : 0});
	        var $span3 = $('> span.hover', this).css({opacity : 0});
	        $(this).hover(function() {
	          if ($(this).hasClass('active')) {
	            $span3.stop().fadeTo(500, 0);
	          } else {
	           $span3.stop().fadeTo(500, 1); 
	          }
	        }, function() {
	          $span3.stop().fadeTo(500, 0);
	      });
	      $(this).click( function() {
	        $span3.fadeTo(200, 0);
	        topWrap.removeClass('active');
	        $(this).addClass('active');
	      });
	  });
	},
	
	subNav: function() {
		var timeout = null,
				subNav = $("#services_nav"),
				subNavlis = subNav.find("li");
				link = $("#services_link");
				mainNavs = $("#main_nav ul li.nav").not('.secondary_nav');
				
		link.click(function(e) {
			e.preventDefault();
		});
		
		mainNavs.mouseover(function() {
			app.closeMenu(timeout);
		});
		
		
		link.mouseover(function() {
			if (timeout) clearTimeout(timeout);
			subNav.slideDown('fast').show();
    });

    // sub menu mouseovers keep dropdown open
    subNavlis.mouseover(function() {
    	if (timeout) clearTimeout(timeout);
    }).mouseout(function() {
    	timeout = setTimeout(app.closeMenu, 500);
    });
	},
	
	closeMenu: function(timeout) {
		$("#services_nav").hide();
    if (timeout) clearTimeout(timeout); 
	}
	
}

var admin = {
	
	yuiTextEditor: function() {
		var codeBlog = new YAHOO.widget.Editor('code_blog_content', {
		    height: '300px',
		    width: '715px',
		    dompath: true, //Turns on the bar at the bottom
		    animate: true //Animates the opening, closing and moving of Editor windows
		});
		codeBlog.render();
		
		//Inside an event handler after the Editor is rendered
		YAHOO.util.Event.on('code_blog_submit', 'click', function() {
		    //Put the HTML back into the text area
		    codeBlog.saveHTML();
		 
		    //The var html will now have the contents of the textarea
		    var html = codeBlog.get('code_blog_content').value;
		});
		
		var cubeBlog = new YAHOO.widget.Editor('blog_content', {
		    height: '300px',
		    width: '715px',
		    dompath: true, //Turns on the bar at the bottom
		    animate: true //Animates the opening, closing and moving of Editor windows
		});
		cubeBlog.render();
		
		//Inside an event handler after the Editor is rendered
		YAHOO.util.Event.on('blog_submit', 'click', function() {
		    //Put the HTML back into the text area
		    cubeBlog.saveHTML();
		 
		    //The var html will now have the contents of the textarea
		    var html = cubeBlog.get('blog_content').value;
		});
	},
	
	adminDatatables: function() {
		blogsTable = $('#blogs_table').dataTable({
	    "bJQueryUI": true,
	    "sPaginationType": "full_numbers"
	  });
	  clientsTable = $('#clients_table').dataTable({
	    "bJQueryUI": true,
	    "sPaginationType": "full_numbers"
	  });
	  codeBlogsTable = $('#code_blogs_table').dataTable({
	    "bJQueryUI": true,
	    "sPaginationType": "full_numbers"
	  });
	  servicesTable = $('#services_table').dataTable({
	    "bJQueryUI": true,
	    "sPaginationType": "full_numbers"
	  });
	  employeeTable = $('#employee_table').dataTable({
	    "bJQueryUI": true,
	    "sPaginationType": "full_numbers"
	  });
	}
	
};


//**********Initialize Document**********//
$(document).ready(function() {

	// injects flash div into dom
	flash.injectFlashBox();
	flash.setFlash();
	app.twitterFeed();
	app.mainNav();
	app.navHoverSlider();
	app.getQuoteButton();
	app.subNav();
	app.elasticNav();
});







