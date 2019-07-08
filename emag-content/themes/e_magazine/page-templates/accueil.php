<?php
/**
 * Template Name: Accueil
 *
 *
 * @package WordPress
 * @subpackage e_magazine
 * @since e_magazine 1.0
 * @author : Pulse
 */

get_header(); ?>

  <div id="primary">
    <div id="content" role="main">

      <?php while ( have_posts() ) : the_post(); ?>

        <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
          <header class="entry-header">
            <h1 class="entry-title"><?php the_title(); ?></h1>
          </header><!-- .entry-header -->

          <div class="entry-content">
            <?php the_content(); ?>
          </div><!-- .entry-content -->
          <footer class="entry-meta">
            <?php edit_post_link( __( 'Edit', 'e_magazine' ), '<span class="edit-link">', '</span>' ); ?>
          </footer><!-- .entry-meta -->
        </article><!-- #post-<?php the_ID(); ?> -->

      <?php endwhile; // end of the loop. ?>

    </div><!-- #content -->
  </div><!-- #primary -->

    <div id="flipbook">
        <div class="hard"> Turn.js </div>
        <div class="hard"></div>
        <div> Page 1 </div>
        <div> Page 2 </div>
        <div> Page 3 </div>
        <div> Page 4 </div>
        <div class="hard"></div>
        <div class="hard"></div>
    </div>

    <script type="text/javascript">
        $("#flipbook").turn({
            width: 400,
            height: 300,
            autoCenter: true
        });
    </script>

<?php get_sidebar(); ?>

<?php get_footer(); ?>