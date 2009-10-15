$(document).ready(function() {
	var pc1 = "videos/don.f4v";
	var pc2 = "videos/jim.f4v";
	var pc3 = "videos/gavin.f4v";
	var pc4 = "videos/barbara.f4v";
	var pc5 = "videos/michelle.f4v";
	var pc6 = "videos/part1.f4v";


 // sets up first player var
 var player = $f("player", "swfs/flowplayer-3.1.3.swf", {
 	version:[9, 115],
 	bgcolor: "#000000",

 	canvas: {
 		background: '#000000',
 		backgroundGradient: 'none'
 	},

 	screen: {
 		backgroundColor: '#000000',
 		backgroundGradient: 'none'
 	},

 	plugins: {

 		content: {
 			// the only required property for dynamic loading
 			url: 'swfs/flowplayer.content-3.1.0.swf',

 			// some display properties
 			height: 80,
 			color: '#ffffff',
 			// padding:10,
 			backgroundColor: '#000000',
 			backgroundGradient: [0.0, 0.0, 0.0],
 			border: "none",
 			opacity: 0.0,
 			zIndex: 10
 		},

 		controls: {

 			tooltips: {
 				buttons: true,
 				play: 'Play',
 				pause: 'Pause',
 				fullscreen: 'Full Screen'
 			},

 			backgroundGradient: 'none',
 			buttonColor: '#333333',
 			buttonOverColor: '#ffb800',
 			timeColor: '#ffb800',
 			all:true,
 			scrubber:true,
 			mute:true,
 			height:30,
 			progressColor: '#ffb800',
 			bufferColor: '#0006CA',
 			tooltipColor: '#333333',
 			tooltipTextColor: '#ffffff'
 		}

 	},

 	clip: {
 		// url: "videos/Thurs_web.mp4",
 		autoPlay: false,
 		autoBuffering: true,
 		fadeInSpeed: 5000,
 		scaling: "orig",
 		backgroundColor: '#000000'
 	},
	
	playlist: []
	
});

	$("#don_clip").click( function() {
	 	return false;
	 })
	.overlay({ 
		// custom expose settings
	 expose: {
	  color: '#000',
	  opacity: 0.85,
	  closeSpeed: 700
	 },
	
	 onLoad: function() {
	 	player.load().play(pc1);
	 },
	
	 onClose: function() {
	  player.unload();
	 }
	});
	
	$("#jim_clip").click( function() {
	 	return false;
	 }).overlay({ 
		// custom expose settings
	 expose: {
	  color: '#000',
	  opacity: 0.85,
	  closeSpeed: 700
	 },
	
	 onLoad: function() {
	 	player.load().play(pc2);
	 },
	
	 onClose: function() {
	  player.unload();
	 }
	});
	
	$("#gavin_clip").click( function() {
	 	return false;
	 }).overlay({ 
		// custom expose settings
	 expose: {
	  color: '#000',
	  opacity: 0.85,
	  closeSpeed: 700
	 },
	
	 onLoad: function() {
	 	player.load().play(pc3);
	 },
	
	 onClose: function() {
	  player.unload();
	 }
	});
	
	$("#barbara_clip").click( function() {
	 	return false;
	 }).overlay({ 
		// custom expose settings
	 expose: {
	  color: '#000',
	  opacity: 0.85,
	  closeSpeed: 700
	 },
	
	 onLoad: function() {
	 	player.load().play(pc4);
	 },
	
	 onClose: function() {
	  player.unload();
	 }
	});
	
	$("#michelle_clip").click( function() {
	 	return false;
	 }).overlay({ 
		// custom expose settings
	 expose: {
	  color: '#000',
	  opacity: 0.85,
	  closeSpeed: 700
	 },
	
	 onLoad: function() {
	 	player.load().play(pc5);
	 },
	
	 onClose: function() {
	  player.unload();
	 }
	});
	
	$("#tami_clip").click( function() {
	 	return false;
	 }).overlay({ 
		// custom expose settings
	 expose: {
	  color: '#000',
	  opacity: 0.85,
	  closeSpeed: 700
	 },
	
	 onLoad: function() {
	 	player.load().play(pc6);
	 },
	
	 onClose: function() {
	  player.unload();
	 }
	});
	
});







