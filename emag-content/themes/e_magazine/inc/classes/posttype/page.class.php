<?php

/**
 * classe de service pour ...
 *
 * @package    WordPress
 * @subpackage telmarh
 * @since      telmarh 1.0
 * @author     : Netapsys
 */
class CPage
{

	private static $_elements;

	public function __construct()
	{

	}

	/**
	 * fonction qui prend les informations son Id.
	 *
	 * @param type $pid
	 */
	public static function getById( $pid )
	{
		$pid = intval( $pid );

		//On essaye de charger l'element
		if ( !isset( self::$_elements[$pid] ) ) {
			self::_load( $pid );
		}
		//Si on a pas réussi à chargé l'article (pas publiée?)
		if ( !isset( self::$_elements[$pid] ) ) {
			return false;
		}

		return self::$_elements[$pid];
	}

	/**
	 * fonction qui charge toutes les informations dans le variable statique $_elements.
	 *
	 * @param type $pid
	 */
	private static function _load( $pid )
	{
		$pid = intval( $pid );
		$p = get_post( $pid );

		if ( $p->post_type == "page" ) {
			$element = new stdClass();

			$element->title = $p->post_title;
			$element->description = $p->post_content;

			if (get_page_template_slug($pid->ID) == 'page-templates/accueil.php') {
				//traitement des données
				list($element->banniere_image) = wp_get_attachment_image_src(get_field( 'banniere_image', $p->ID ), 'full');
				$element->texte_introduction = get_field( 'texte_introduction', $p->ID );
				$element->libelle_bouton = get_field( 'libelle_bouton', $p->ID );
				$element->lien_bouton = get_field( 'lien_bouton', $p->ID );
			}



			//stocker dans le tableau statique
			self::$_elements[$pid] = $element;
		}
	}

	/**
	 * fonction qui retourne une liste filtrée
	 *
	 */
	public static function getBy()
	{
		$args = array(
			'post_type'   => 'page',
			'post_status' => 'publish',
			'numberposts' => -1,
			'offset'      => 0,
			'order'       => 'DESC',
			'orderby'     => 'date',
			'fields'      => 'ids'
		);


		$elements = get_posts( $args );
		$elts = array();
		foreach ( $elements as $id ) {
			$elt = self::getById( intval( $id ) );
			$elts[] = $elt;
		}

		return $elts;

	}

}


?>