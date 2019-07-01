<?php
/**
 * login form customisation
 *
 * @package WordPress
 * @subpackage axiancorpv2
 * @since axiancorpv2 1.0
 * @author : aits
 */

add_action('login_head', 'axiancorpv2_logo_head');
function axiancorpv2_logo_head(){
  echo '
  <link rel="shortcut icon" href="' . get_template_directory_uri(). '/images/design/favicon.ico" type="image/x-icon" />
  <style>
			.login h1 a {
				background-image: url("' . get_template_directory_uri().  '/images/design/logo-Axian-group.svg");
				background-size: contain;
				background-position: top center;
				background-repeat: no-repeat;
				width: auto;
				height: 100px;
				text-indent: -9999px;
				overflow: hidden;
				padding-bottom: 15px;
				display: block;
				}
				.login #nav a, .login #backtoblog a {
                  color: #fff;
                }
                .login #nav a:hover, .login #backtoblog a:hover {
                  color: #fff;
                  text-decoration:underline;
                }
                body {
                    background:#c80f2d;
                }
                .wp-core-ui .button-primary{
                    background: #c80f2d;
                    border-color: #c80f2d #c80f1d #c00f2d;
                    box-shadow: 0 1px 0 #c80f2d;
                    color: #fff;
                    text-decoration: none;
                    text-shadow: 0 -1px 1px #c80f1d, 1px 0 1px #c80f1d, 0 1px 1px #c80f1d, -1px 0 1px #c80f1d;
                }
                .wp-core-ui .button-primary:hover, .wp-core-ui .button-primary:focus {
                    background: #b80f2d;
                    border-color: #c80f2d #c80f1d #c00f2d;
                    box-shadow: 0 1px 0 #c80f2d;
                    color: #fff;
                    text-decoration: none;
                    text-shadow: 0 -1px 1px #c80f1d, 1px 0 1px #c80f1d, 0 1px 1px #c80f1d, -1px 0 1px #c80f1d;
                }
		</style>';
}
