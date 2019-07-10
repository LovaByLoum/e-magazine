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
global $e_magazine_options;
?>

	</div><!-- #main -->

	<footer id="colophon" role="contentinfo" class="footer">
		<div class="container">
			<div class="d-flex justify-content-center align-items-center">
				<div class="copyright"><?php echo $e_magazine_options['copyright'];?></div>
			</div>
		</div>
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>