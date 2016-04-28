// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//** Step Carousel Viewer- (c) Dynamic Drive DHTML code library: http://www.dynamicdrive.com
//** Script Download/ http://www.dynamicdrive.com/dynamicindex4/stepcarousel.htm
//** Usage Terms: http://www.dynamicdrive.com/notice.htm
//** Current version 1.91 (Aug 15th, 11'): See http://www.dynamicdrive.com/dynamicindex4/stepcarouselchangelog.txt for details

 //**this is a portfolio slideshow**//
 
 var myImage=document.getElementById("myPhoto");
 var imageArray=["/assets/newborn/newborn1.jpg", "/assets/newborn/newborn2.jpg"];
 var imageIndex=0;

function changeImage(){
	
	if (imageIndex>=imageArray.length){
	imageIndex=0
	}
}

var intervalHandle = setInterval(changeImage, 2000);

	myPhoto.onclick=function(){
	clearInterval(intervalHandle);
}

