
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
	    });


	ww = jQuery(window).innerWidth();
	if ( ww <= 992 ){
        jQuery('.flipbook').turn({
            elevation: 50,
            gradients: true,
            autoCenter: true,
            display: 'single'
        });
	} else {
        jQuery('.flipbook').turn({
            elevation: 50,
            gradients: true,
            autoCenter: true,
            display: 'double'
        });
	}

    
});

jQuery(window).resize(function(){
    ww = jQuery(window).innerWidth();
    if ( ww <= 992 ){
    	if ( jQuery('.flipbook').turn('display') == 'double' ){
            jQuery('.flipbook').turn("display", "single");
		}
        _fw = jQuery('.flipbook').parents('.container').innerWidth();
        jQuery('.flipbook').turn("size", _fw - 50, 600);
    } else {
        if ( jQuery('.flipbook').turn('display') == 'single' ){
            jQuery('.flipbook').turn("display", "double");
            jQuery('.flipbook').turn("size", 922, 600);
        }
    }
});

jQuery(document).ready(function () {
    jQuery('[data-toggle="tooltip"]').tooltip({
        placement : 'bottom'
    });
});

jQuery(".flipbook-viewport").zoom({
    flipbook: jQuery(".flipbook"),
    max: 3
});




	
		



