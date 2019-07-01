<?php
/*
 * fonctions personnalistion de l'interface admin
 * @package WordPress
 * @subpackage e_magazine
 * @since e_magazine 1.0
 * @author : Pulse
 */

add_action( 'admin_enqueue_scripts', 'emagazine_admin_enqueue_scripts', 999 );
function emagazine_admin_enqueue_scripts(){
	wp_enqueue_style( 'admin-style', get_template_directory_uri() . '/css/admin/styles.css' );
}
