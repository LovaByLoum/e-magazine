<?php
/**
 * Initialisation des custom sidebars
 *
 * @package WordPress
 * @subpackage e_magazine
 * @since e_magazine 1.0
 * @author : Pulse
 */
function e_magazine_widgets_init() {

    register_sidebar( array(
        'name' => __( 'Main Sidebar', 'e_magazine' ),
        'id' => 'sidebar-1',
        'before_widget' => '<aside id="%1$s" class="widget %2$s">',
        'after_widget' => "</aside>",
        'before_title' => '<h3 class="widget-title">',
        'after_title' => '</h3>',
    ) );

    //register other sidebar
    //http://generatewp.com/sidebar/
}
add_action( 'widgets_init', 'e_magazine_widgets_init' );