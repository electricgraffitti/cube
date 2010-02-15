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
  $('#contact_nav a').append('<span class="hover" />').each(function(){
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
$(document).ready(function() {
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
});


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
// Sets up the RTE
// HTMLBox
// $(document).ready(function() {
// 	$("#code_blog_content").htmlbox({
// 		toolbars:[
// 		["separator","cut","copy","paste","separator","bold","italic","underline"]
// 		]
// 	});
// });
// markupSettings = {
//     nameSpace:       "html", // Useful to prevent multi-instances CSS conflict
//     onShiftEnter:    {keepDefault:false, replaceWith:'<br />\n'},
//     onCtrlEnter:     {keepDefault:false, openWith:'\n<p>', closeWith:'</p>\n'},
//     onTab:           {keepDefault:false, openWith:'     '},
//     markupSet:  [
//         {name:'Heading 1', key:'1', openWith:'<h1(!( class="[![Class]!]")!)>', closeWith:'</h1>', placeHolder:'Your title here...' },
//         {name:'Heading 2', key:'2', openWith:'<h2(!( class="[![Class]!]")!)>', closeWith:'</h2>', placeHolder:'Your title here...' },
//         {name:'Heading 3', key:'3', openWith:'<h3(!( class="[![Class]!]")!)>', closeWith:'</h3>', placeHolder:'Your title here...' },
//         {name:'Heading 4', key:'4', openWith:'<h4(!( class="[![Class]!]")!)>', closeWith:'</h4>', placeHolder:'Your title here...' },
//         {name:'Heading 5', key:'5', openWith:'<h5(!( class="[![Class]!]")!)>', closeWith:'</h5>', placeHolder:'Your title here...' },
//         {name:'Heading 6', key:'6', openWith:'<h6(!( class="[![Class]!]")!)>', closeWith:'</h6>', placeHolder:'Your title here...' },
//         {name:'Paragraph', openWith:'<p(!( class="[![Class]!]")!)>', closeWith:'</p>'  },
//         {separator:'---------------' },
//         {name:'Bold', key:'B', openWith:'<strong>', closeWith:'</strong>' },
//         {name:'Italic', key:'I', openWith:'<em>', closeWith:'</em>'  },
//         {name:'Stroke through', key:'S', openWith:'<del>', closeWith:'</del>' },
//         {separator:'---------------' },
//         {name:'Ul', openWith:'<ul>\n', closeWith:'</ul>\n' },
//         {name:'Ol', openWith:'<ol>\n', closeWith:'</ol>\n' },
//         {name:'Li', openWith:'<li>', closeWith:'</li>' },
//         {separator:'---------------' },
//         {name:'Picture', key:'P', replaceWith:'<img src="[![Source:!:http://]!]" alt="[![Alternative text]!]" />' },
//         {name:'Link', key:'L', openWith:'<a href="[![Link:!:http://]!]"(!( title="[![Title]!]")!)>', closeWith:'</a>', placeHolder:'Your text to link...' },
//         {separator:'---------------' },
//         {name:'Clean', replaceWith:function(h) { return h.selection.replace(/<(.*?)>/g, "") } },
//         {name:'Preview', call:'preview', className:'preview' }
//     ]
// }
// // Markitup
// $(document).ready(function() {
// 	$("#code_blog_content").markItUp(markupSettings);
// });

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

// Sets up the return tweets in the footer
$(document).ready(function() {
	$("#twitter_feed").getTwitter({
		userName: "devengine",
		numTweets: 1,
		loaderText: "Loading tweets...",
		slideIn: true,
		showHeading: true,
		headingText: "Recent Tweet",
		showProfileLink: true
	});
});










