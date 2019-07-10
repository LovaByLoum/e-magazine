<?php
/**
 * The template for displaying search forms in e_magazine
 *
 * @package WordPress
 * @subpackage e_magazine
 * @since e_magazine 1.0
 * @author : Pulse
 */
?>
	<form method="get" id="searchform" action="<?php echo esc_url( home_url( '/' ) ); ?>">
		<div class="search">
			<label for="searchId" class="assistive-text"><?php _e( 'Search', 'e_magazine' ); ?></label>
			<div class="input-group">
				<input type="text" class="field form-control" name="s" id="searchId" placeholder="<?php esc_attr_e( 'Search', 'e_magazine' ); ?>" />
				<div class="input-group-append">
					<button class="btn btn-secondary" type="button">
						<i class="fa fa-search"></i>
					</button>
				</div>
		    </div>
		</div>
	</form>
