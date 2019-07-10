
jQuery( document ).ready( function () {

	jQuery('#nav-icon').click(function(){
        jQuery(this).toggleClass('open');
        jQuery(".nav-mobile").toggleClass('showmenu');
    });



	jQuery('.slide-wrapper-gallery .owl-carousel').owlCarousel({
	        loop:false,
	        nav:true,
	        margin:70,
	        responsive:{
	            0:{
	                items:1,
	                center:true,
	                stagePadding: 70,
	                margin:0
	            },
	            768:{
	                items:3
	            },
	            1000:{
	                items:6
	            }
	        }
	    })



	jQuery('.flipbook').turn({
		elevation: 50,
		gradients: true,
		autoCenter: true
	});

	


    
});




	
		



