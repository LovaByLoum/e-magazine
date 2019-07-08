
jQuery( document ).ready( function () {

	jQuery('.slide-wrapper-gallery .owl-carousel').owlCarousel({
	        loop:false,
	        nav:true,
	        margin:70,
	        responsive:{
	            0:{
	                items:1
	            },
	            768:{
	                items:1
	            },
	            1000:{
	                items:6
	            }
	        }
	    })
    
});