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

}