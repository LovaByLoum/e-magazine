<?php
/**
 * Template Name: Détails
 *
 *
 * @package WordPress
 * @subpackage e_magazine
 * @since e_magazine 1.0
 * @author : Pulse
 */

get_header(); ?>

    <div id="primary">
        <div class="container">


            <div id="canvas">

                <div class="zoom-icon zoom-icon-in"></div>
                <div class="flipbook-viewport">
                    <div class="container">
                        <div class="flipbook">
                            <div style="background-image:url(<?php echo get_template_directory_uri(); ?>/images/pages/1.jpg)"></div>
                            <div style="background-image:url(<?php echo get_template_directory_uri(); ?>/images/pages/2.jpg)"></div>
                            <div style="background-image:url(<?php echo get_template_directory_uri(); ?>/images/pages/3.jpg)"></div>
                            <div style="background-image:url(<?php echo get_template_directory_uri(); ?>/images/pages/4.jpg)"></div>
                            <div style="background-image:url(<?php echo get_template_directory_uri(); ?>/images/pages/5.jpg)"></div>
                            <div style="background-image:url(<?php echo get_template_directory_uri(); ?>/images/pages/6.jpg)"></div>
                            <div style="background-image:url(<?php echo get_template_directory_uri(); ?>/images/pages/7.jpg)"></div>
                            <div style="background-image:url(<?php echo get_template_directory_uri(); ?>/images/pages/8.jpg)"></div>
                            <div style="background-image:url(<?php echo get_template_directory_uri(); ?>/images/pages/9.jpg)"></div>
                            <div style="background-image:url(<?php echo get_template_directory_uri(); ?>/images/pages/10.jpg)"></div>
                            <div style="background-image:url(<?php echo get_template_directory_uri(); ?>/images/pages/11.jpg)"></div>
                            <div style="background-image:url(<?php echo get_template_directory_uri(); ?>/images/pages/12.jpg)"></div>

                            <!-- Next button -->
                            <div ignore="1" class="next-button"></div>
                            <!-- Previous button -->
                            <div ignore="1" class="previous-button"></div>


                        </div>
                    </div>

                    <div class="bottom">
                        <div id="slider-bar" class="turnjs-slider">
                            <div id="slider"></div>
                        </div>
                    </div>

                </div>


            </div>
        </div>
    </div>


<?php get_footer('pdf'); ?>