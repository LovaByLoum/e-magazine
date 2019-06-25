<?php
/**
 * Created by PhpStorm.
 * User: narisoa.andria
 * Date: 25/06/2019
 * Time: 08:55
 */
define( 'TABLE_MAGAZINE', 'trace_magazine' );
add_action('init', 'htds_init_post', 1);
function htds_init_post(){
    global $wpdb;
    //remove tags in post
    unregister_taxonomy_for_object_type( 'post_tag', 'post' );
    add_post_type_support('post','thumbnail', 'revisions');

    //rename label
    global $wp_post_types;
    $labels = &$wp_post_types['post']->labels;
    $labels->name = "Magazine";
    $labels->name_admin_bar = "Magazine";
    $labels->menu_name = "Magazine";
    $wp_post_types['post']->menu_icon = 'dashicons-book-alt';

    //insert table
    $trace_magazine_table = $wpdb->prefix . TABLE_MAGAZINE;
    if($wpdb->get_var("show tables like '$trace_magazine_table'") != $trace_magazine_table){
        $sql = "CREATE TABLE " . $trace_magazine_table . " (
              `mag_id` INT (11) UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
              `mag_postid` INT (11) NOT NULL,
              `mag_order` INT (11) NOT NULL,
              `hub_id_sociaux` VARCHAR (225) NOT NULL,
              `hub_image` VARCHAR (225) NOT NULL,
              `hub_like` VARCHAR (225) NOT NULL,
              `hub_comment` VARCHAR (225) NOT NULL,
              `hub_timestamp` INT (11) NOT NULL
            ) ;";

        require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
        dbDelta($sql);

    }


}