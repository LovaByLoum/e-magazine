<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="main">
 *
 * @package WordPress
 * @subpackage e_magazine
 * @since e_magazine 1.0
 * @author : Pulse
 */
?><!DOCTYPE html>
<!--[if IE 6]>
<html id="ie6" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 7]>
<html id="ie7" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 8]>
<html id="ie8" <?php language_attributes(); ?>>
<![endif]-->
<!--[if !(IE 6) | !(IE 7) | !(IE 8)  ]><!-->
<html <?php language_attributes(); ?>>
<!--<![endif]-->
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta name="viewport" content="width=device-width" />
<title><?php
	/*
	 * Print the <title> tag based on what is being viewed.
	 */
	global $page, $paged;

	wp_title( '|', true, 'right' );

	// Add the blog name.
	bloginfo( 'name' );

	// Add the blog description for the home/front page.
	$site_description = get_bloginfo( 'description', 'display' );
	if ( $site_description && ( is_home() || is_front_page() ) )
		echo " | $site_description";

	// Add a page number if necessary:
	if ( $paged >= 2 || $page >= 2 )
		echo ' | ' . sprintf( __( 'Page %s', 'e_magazine' ), max( $paged, $page ) );

	?></title>
<link rel="profile" href="http://gmpg.org/xfn/11" />
<link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />
<link rel="stylesheet" type="text/css" media="all" href="<?php echo get_template_directory_uri();?>/css/e_magazine.css" />
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
<!--[if lt IE 9]>
<script src="<?php echo get_template_directory_uri(); ?>/js/html5.js" type="text/javascript"></script>
<![endif]-->
<?php
	/* We add some JavaScript to pages with the comment form
	 * to support sites with threaded comments (when in use).
	 */
	if ( is_singular() && get_option( 'thread_comments' ) )
		wp_enqueue_script( 'comment-reply' );

	/* Always have wp_head() just before the closing </head>
	 * tag of your theme, or you will break many plugins, which
	 * generally use this hook to add elements to <head> such
	 * as styles, scripts, and meta tags.
	 */
	wp_head();
?>
</head>

<body <?php body_class(); ?>>

<div class="page">

	<!-- Menu mobile -->
    <div class="nav-mobile d-lg-none">
        <ul>
           <li><a href="#">Fonctionnalité</a></li>
           <li><a href="#">Tarif</a></li>
           <li><a href="#">Inscrivez-vous</a></li>
        </ul>
        <!-- Recherche -->
			<div class="only-search<?php if ( $header_image ) : ?> with-image<?php endif; ?>">
				<?php get_search_form(); ?>
			</div>
		<!-- /Recherche -->
    </div>
  	<!-- /Menu mobile -->


	<header class="header" id="branding" role="banner">
			<nav role="navigation">
				<div class="container">
					<div class="d-flex align-items-center">
						<h1 class="logo"><a href="#"><img src="<?php echo get_template_directory_uri(); ?>/images/design/logo.png" alt=""></a></h1>

						<button id="nav-icon" class="navbar-toggle d-lg-none" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
	                        <span></span>
	                        <span></span>
	                        <span></span>
	                    </button>

					
						<div class="skip-link"><a class="assistive-text" href="#content" title="<?php esc_attr_e( 'Skip to primary content', 'e_magazine' ); ?>"><?php _e( 'Skip to primary content', 'e_magazine' ); ?></a></div>
						<div class="skip-link"><a class="assistive-text" href="#secondary" title="<?php esc_attr_e( 'Skip to secondary content', 'e_magazine' ); ?>"><?php _e( 'Skip to secondary content', 'e_magazine' ); ?></a></div>
						<?php /* Our navigation menu. If one isn't filled out, wp_nav_menu falls back to wp_page_menu. The menu assigned to the primary location is the one used. If one isn't assigned, the menu with the lowest ID is used. */ ?>
						<?php wp_nav_menu( array( 'theme_location' => 'primary' ) ); ?>

						<!-- Recherche -->
						<div class="only-search<?php if ( $header_image ) : ?> with-image<?php endif; ?>">
							<?php get_search_form(); ?>
						</div>
						<!-- /Recherche -->


					</div>
				</div>
			</nav><!-- #access -->
	</header><!-- #branding -->


	<div id="main">

	
