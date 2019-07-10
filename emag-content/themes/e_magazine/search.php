<?php
/**
 * The template for displaying Search Results pages.
 *
 * @package WordPress
 * @subpackage e_magazine
 * @since e_magazine 1.0
 * @author : Pulse
 */

get_header(); ?>

    <div id="primary">
    <div class="content">
        <section class="book-list">
            <div class="container">
                <h2 class="text-center">Résultat de votre recherche pour "<?php echo get_query_var('s'); ?>"</h2>

                <ul class="row">
	                <?php while ( have_posts() ) : the_post();

		                global $post;
		                $emag = CMagazine::getById($post->ID);
		                ?>

                        <li class="col-md-6 col-lg-3">
                            <a href="<?php echo get_permalink($emag->id);?>">
                                <figure>
                                    <img src="<?php echo $emag->vignette;?>" alt="<?php echo esc_attr($emag->title);?>">
                                    <figcaption><?php echo $emag->title;?></figcaption>
                                </figure>
                            </a>
                        </li>

	                <?php endwhile; ?>


                </ul>

            </div>
        </section>
        <!-- /Gallery -->

    </div>
        <!-- #content -->
    </div>


<?php get_footer(); ?>