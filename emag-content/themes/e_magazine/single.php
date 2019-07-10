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
global $post;
$emag = CMagazine::getById($post->ID);

get_header(); ?>

    <div id="primary">
        <div class="container">


            <div id="canvas">

                <div class="zoom-icon zoom-icon-in"></div>
                <div class="flipbook-viewport">
                    <div class="">
                        <div class="flipbook">
                            <?php foreach ($emag->images as $magazine):?>
                                <div style="background-image:url(<?php echo $magazine; ?>) "></div>
                            <?php endforeach;?>

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


<?php get_footer(); ?>