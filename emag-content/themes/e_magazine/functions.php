<?php
/**
 * e_magazine functions and definitions
 *
 * Sets up the theme and provides some helper functions. Some helper functions
 * are used in the theme as custom template tags. Others are attached to action and
 * filter hooks in WordPress to change core functionality.
 *
 * The first function, e_magazine_setup(), sets up the theme by registering support
 * for various features in WordPress, such as post thumbnails, navigation menus, and the like.
 *
 * When using a child theme (see http://codex.wordpress.org/Theme_Development and
 * http://codex.wordpress.org/Child_Themes), you can override certain functions
 * (those wrapped in a function_exists() call) by defining them first in your child theme's
 * functions.php file. The child theme's functions.php file is included before the parent
 * theme's file, so the child theme functions would be used.
 *
 * Functions that are not pluggable (not wrapped in function_exists()) are instead attached
 * to a filter or action hook. The hook can be removed by using remove_action() or
 * remove_filter() and you can attach your own function to the hook.
 *
 * We can remove the parent theme's hook only after it is attached, which means we need to
 * wait until setting up the child theme:
 *
 * <code>
 * add_action( 'after_setup_theme', 'my_child_theme_setup' );
 * function my_child_theme_setup() {
 *     // We are providing our own filter for excerpt_length (or using the unfiltered value)
 *     remove_filter( 'excerpt_length', 'e_magazine_excerpt_length' );
 *     ...
 * }
 * </code>
 *
 * For more information on hooks, actions, and filters, see http://codex.wordpress.org/Plugin_API.
 *
 * @package WordPress
 * @subpackage e_magazine
 * @since e_magazine 1.0
 * @author : Pulse
 */

require_once( get_template_directory() . '/inc/constante.inc.php' );
require_once( get_template_directory() . '/inc/default.config.php' );
require_once( get_template_directory() . '/inc/utils/functions.php' );
require_once( get_template_directory() . '/login.php' );

//classes de service
require_once_files_in( get_template_directory() . '/inc/classes/posttype' );
require_once_files_in( get_template_directory() . '/inc/classes/taxonomy' );
require_once_files_in( get_template_directory() . '/inc/classes/user' );

if (is_admin()){
  require_once( get_template_directory() . '/admin-functions.php' );

  /*** Theme Option ***/
  if ( is_dir( get_template_directory() . '/theme-options' ) ){
    require get_template_directory() . '/theme-options/theme-options.php';
  }
}

//lib
require_once( get_template_directory() . '/lib/cssmin.php' );
require_once( get_template_directory()  . '/lib/jsmin.php' );

global $e_magazine_options;
$e_magazine_options = get_option( 'e_magazine_theme_options' );

/**
 * Tell WordPress to run e_magazine_setup() when the 'after_setup_theme' hook is run.
 */
add_action( 'after_setup_theme', 'e_magazine_setup' );

if ( ! function_exists( 'e_magazine_setup' ) ):
function e_magazine_setup() {

    require_once_files_in( get_template_directory() . '/inc/extends/custom-sidebar' );
    require_once_files_in( get_template_directory() . '/inc/extends/custom-fields/acf' );
    require_once_files_in( get_template_directory() . '/inc/extends/custom-metaboxes' );
    require_once_files_in( get_template_directory() . '/inc/extends/custom-rules' );
    require_once_files_in( get_template_directory() . '/inc/extends/custom-role' );
    require_once_files_in( get_template_directory() . '/inc/extends/custom-mce-tools' );
    require_once_files_in( get_template_directory() . '/inc/extends/custom-shortcodes' );
    require_once_files_in( get_template_directory() . '/inc/extends/custom-sidebar' );
    require_once_files_in( get_template_directory() . '/inc/extends/custom-types' );
    require_once_files_in( get_template_directory() . '/inc/extends/custom-taxonomies' );
    require_once_files_in( get_template_directory() . '/inc/extends/custom-widgets' );

	/* Make e_magazine available for translation.
	 * Translations can be added to the /languages/ directory.
	 * If you're building a theme based on e_magazine, use a find and replace
	 * to change 'e_magazine' to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'e_magazine', get_template_directory() . '/languages' );

	// This theme styles the visual editor with editor-style.css to match the theme style.
	//add_editor_style();

	// Add default posts and comments RSS feed links to <head>.
	add_theme_support( 'automatic-feed-links' );

	// This theme uses wp_nav_menu() in one location.
	register_nav_menu( 'primary', __( 'Primary Menu', 'e_magazine' ) );

	// This theme uses Featured Images (also known as post thumbnails) for per-post/per-page Custom Header images
	add_theme_support( 'post-thumbnails' );

	add_image_size( IMAGE_SIZE_ACTUS_VIGNETTE, 100, 100, true );
	add_image_size( IMAGE_SIZE_ACTUS_MEDIUM, 500, 300 );

}
endif; // e_magazine_setup


//enqueue scripts and styles
add_action( 'wp_enqueue_scripts', 'magazine_scripts' );
function magazine_scripts(){
    //style css
    wp_enqueue_style('style-bo', get_template_directory_uri() . '/css/e_magazine.css');
    wp_enqueue_style('style-bootstrap', get_template_directory_uri() . '/css/bootstrap.css');
    wp_enqueue_style('style-font-open-sans', get_template_directory_uri() . '/css/open-sans.css');
    wp_enqueue_style('style-font-awesome', get_template_directory_uri() . '/css/font-awesome.css');
    wp_enqueue_style('style-owl-carousel', get_template_directory_uri() . '/css/owl.carousel.css');
    wp_enqueue_style('style-turn', get_template_directory_uri() . '/css/turn.css');
    wp_enqueue_style('style-custom-e-magazine', get_template_directory_uri() . '/css/styles.css');

    //script js
   #wp_enqueue_script('jquery', get_template_directory_uri() .'/js/library/jquery-1.9.min.js', array('jquery'), '1.0',true);
    #wp_enqueue_script('popper', get_template_directory_uri() .'/js/library/popper.min.js', array('jquery'), '1.0',true);
    wp_enqueue_script('bootstrap', get_template_directory_uri() .'/js/library/bootstrap.min.js', array('jquery'), '1.0',true);
    wp_enqueue_script('owl-carousel', get_template_directory_uri() .'/js/library/owl.carousel.js', array('jquery'), '1.0',true);
    wp_enqueue_script('modernizr', get_template_directory_uri() .'/js/library/modernizr.2.5.3.min.js', array('jquery'), '1.0',true);
    wp_enqueue_script('turn', get_template_directory_uri() .'/js/library/turn.js', array('jquery'), '1.0',true);
    #wp_enqueue_script('zoom', get_template_directory_uri() .'/js/library/zoom.js', array('jquery'), '1.0',true);
    wp_enqueue_script('global', get_template_directory_uri() .'/js/global.js', array('jquery'), '1.0',true);
 
}