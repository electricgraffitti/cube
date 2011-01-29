(function($) {
	
	$.fn.elasticNav = function(options) {
		
		options = $.extend({
			overlap : 2,
			speed : 500,
			reset : 2500,
			color : "#000000",
			opacity : 0.2,
			easing : "easeOutExpo"
		}, options);
		
		
		
		return this.each(function() {
			var nav = $(this),
					currentNav = $('#selected', nav),
					hoverCursor,
					reset;
			
			$('<li id="hoverCursor"></li>').css({
				width : currentNav.outerWidth(),
				height : currentNav.outerHeight() + options.overlap,
				left : currentNav.position().left,
				top : currentNav.position().top - options.overlap / 2,
				backgroundColor : options.color,
				opacity : options.opacity
			}).appendTo(this);
			
			hoverCursor = $("#hoverCursor");
			
			$('li.nav:not(#hoverCursor)', nav).hover(function() {
				clearTimeout(reset);
				hoverCursor.stop().animate({
					left : $(this).position().left,
					width : $(this).width()
				},
				{
					duration : options.speed,
					easing : options.easing,
				});
			}, function() {
				 reset = setTimeout(function() {
					hoverCursor.animate({
						left : currentNav.position().left,
						width : currentNav.outerWidth()
					}, options.speed);
				}, options.reset);
				
			})
			
		});
	};
	
})(jQuery);