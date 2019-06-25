<?php
/**
 * Déclaration des profils users
 *
 * @package WordPress
 * @subpackage e_magazine
 * @since e_magazine 1.0
 * @author : Pulse
 */

add_action('init', 'e_magazine_init_role');
function e_magazine_init_role(){
  add_role( USER_PROFILE_ADMIN, 'Administrateur');
  add_role( USER_PROFILE_WEBMASTER, 'Webmaster');
  add_role( USER_PROFILE_MEMBRE, 'Membre');
}