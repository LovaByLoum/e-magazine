<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package WordPress
 * @subpackage e_magazine
 * @since e_magazine 1.0
 * @author : Pulse
 */

get_header(); ?>

		<div id="primary">
			<div role="main">
                <div class="container">
	                <?php while ( have_posts() ) : the_post(); ?>

                        <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                            <header class="entry-header">
                                <h1 class="entry-title"><?php the_title(); ?></h1>
                            </header><!-- .entry-header -->

                            <div class="entry-content">
				                <?php the_content(); ?>
				                <?php wp_link_pages( array( 'before' => '<div class="page-link"><span>' . __( 'Pages:', 'e_magazine' ) . '</span>', 'after' => '</div>' ) ); ?>
                            </div><!-- .entry-content -->
                            <footer class="entry-meta">
				                <?php edit_post_link( __( 'Edit', 'e_magazine' ), '<span class="edit-link">', '</span>' ); ?>
                            </footer><!-- .entry-meta -->
                        </article><!-- #post-<?php the_ID(); ?> -->



	                <?php endwhile; // end of the loop. ?>

                </div>


			</div><!-- #content -->
		</div><!-- #primary -->


<?php get_footer(); ?>