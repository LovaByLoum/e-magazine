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

    <div id="primary " class="bg-details" >
        <div class="container">
            <div id="canvas">
                <div class="zoom-icon zoom-icon-in"></div>
                <div class="bar">
                    <div class="share">
                        <i class="fa fa-search-plus fa-2x zoom-in" aria-hidden="true" title="Zoom in" data-toggle="tooltip"></i>
                        <i class="fa fa-bars fa-2x liste"  title="Liste" data-toggle="tooltip"></i>
                        <!--<a href="#popupMenu" data-rel="popup" data-transition="slideup" class="ui-btn ui-corner-all ui-shadow ui-btn-inline ui-icon-gear ui-btn-icon-left ui-btn-a">
                            Liste des magazines
                        </a>


                        <!--<i class="fa fa-folder-o fa-2x" title="Publications" data-toggle="tooltip"></i>
                        <i class="fa fa-download fa-2x" title="Téléchager" data-toggle="tooltip"></i>
                        <i class="fa fa-arrows-alt fa-2x" title="Plein écran" data-toggle="tooltip"></i>-->
                    </div>
                    <a class="icon quit"></a>
                </div>
                <div class="flipbook-viewport">
                        <div class="flipbook" name="flipbook">

                            <?php foreach ($emag->images as $magazine):?>
                                <div style="background-image:url(<?php echo $magazine; ?>) "></div>
                            <?php endforeach;?>

                            <!-- Next button -->
                            <div ignore="1" class="next-button"></div>
                            <!-- Previous button -->
                            <div ignore="1" class="previous-button"></div>
                        </div>

                    <div class="bottom">
                        <div id="slider-bar" class="turnjs-slider">
                            <div id="slider"></div>
                        </div>
                    </div>
                </div>
                <div data-role="popup" id="popupMenu" data-theme="b" style="display: none;">
                    <ul data-role="listview" data-inset="true" style="min-width: 210px;">
                        <li data-role="list-divider">Choose an action</li>
                        <li><a href="#">View details</a></li>
                        <li><a href="#">Edit</a></li>
                        <li><a href="#">Disable</a></li>
                        <li><a href="#">Delete</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>



<?php get_footer(pdf); ?>