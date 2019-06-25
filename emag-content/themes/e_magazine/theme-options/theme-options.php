<?php
/**
 * Theme options
 *
 * @package WordPress
 * @subpackage e_magazine
 * @since e_magazine 1.0
 * @author : Pulse
 */
global $e_magazine_options;
require_once get_template_directory() . '/theme-options/options.php';
$e_magazine_options = get_option( 'e_magazine_theme_options' );

add_action( 'admin_init', 'e_magazine_options_init' );
function e_magazine_options_init(){
 register_setting( 'e_magazine_options', 'e_magazine_theme_options','e_magazine_options_validate');
} 

function e_magazine_options_validate($input)
{
   $allfields_settings = e_magazine_get_all_settings();

   foreach ( $input as $i ){
     if ( isset($allfields_settings[$i]) ){
        switch ( $allfields_settings[$i]['type'] ){
          case 'text':
            $input[$i] = sanitize_text_field( $input[$i] );
            break;
          case 'select':
            break;
          case 'date':
            break;
          case 'url':
            $input[$i] = esc_url_raw( $input[$i] );
            break;
          case 'textarea':
            $input[$i] = sanitize_text_field( $input[$i] );
            break;
          case 'image':
            $input[$i] = e_magazine_image_validation(esc_url_raw( $input[$i]));
            break;
          default:
        }
     }
   }

	  return $input;
}
function e_magazine_image_validation($e_magazine_imge_url){
	$e_magazine_filetype = wp_check_filetype($e_magazine_imge_url);
	$e_magazine_supported_image = array('gif','jpg','jpeg','png','ico');
	if (in_array($e_magazine_filetype['ext'], $e_magazine_supported_image)) {
		return $e_magazine_imge_url;
	} else {
	return '';
	}
}
function e_magazine_get_all_settings(){
  global $e_magazine_options_settings;
  $allfields = array();
  foreach ( $e_magazine_options_settings as $tab) {
      $allfields = array_merge( $allfields, $tab );
  }
  return $allfields;
}

add_action( 'admin_enqueue_scripts', 'e_magazine_framework_load_scripts' );
function e_magazine_framework_load_scripts(){
	wp_enqueue_media();
	wp_enqueue_style( 'e_magazine_framework', get_template_directory_uri(). '/theme-options/css/theme-options.css' ,false, '1.0.0');
	// Enqueue custom option panel JS
	wp_enqueue_script( 'options-custom', get_template_directory_uri(). '/theme-options/js/theme-options.js', array( 'jquery' ) );
	wp_enqueue_script( 'media-uploader', get_template_directory_uri(). '/theme-options/js/media-uploader.js', array( 'jquery') );		
}

add_action( 'admin_menu', 'e_magazine_options_add_page' );
function e_magazine_options_add_page() {
	add_theme_page( 'e_magazine Options', 'Theme Options', 'edit_theme_options', 'e_magazine_framework', 'e_magazine_framework_page');
}

function e_magazine_framework_page(){
  include 'admin-page.php';
}

//compatibilité WPML, rendre les options translatables
if ( function_exists('icl_register_string')){
  add_action('wp_ajax_icl_tl_rescan', 'e_magazine_options_wpml_translate');
  function e_magazine_options_wpml_translate(){
    $theme_options = get_option( 'e_magazine_theme_options' );
    foreach ( $theme_options as $key => $option ){
      if ( intval($option)>0 ) continue;
      if ( !is_string($option) ) continue;
      icl_register_string( 'e_magazine_options', $key, apply_filters('widget_text', $option));
    }
  }
}