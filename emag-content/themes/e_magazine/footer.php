<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the id=main div and all content after
 *
 * @package WordPress
 * @subpackage e_magazine
 * @since e_magazine 1.0
 * @author : Pulse
 */
?>

	</div><!-- #main -->

	<footer id="colophon" role="contentinfo">


			<div id="site-generator">
				<?php do_action( 'e_magazine_credits' ); ?>
				<a href="<?php echo esc_url( __( 'http://wordpress.org/', 'e_magazine' ) ); ?>" title="<?php esc_attr_e( 'Semantic Personal Publishing Platform', 'e_magazine' ); ?>" rel="generator"><?php printf( __( 'Proudly powered by %s', 'e_magazine' ), 'WordPress' ); ?></a>
			</div>
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>