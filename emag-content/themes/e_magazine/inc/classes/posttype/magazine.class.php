<?php
/**
 * classe de service pour ...
 *
 * @package WordPress
 * @subpackage e_magazine
 * @since e_magazine 1.0
 * @author : Pulse
 */
class CMagazine {

	private static $_elements;



	public function __construct() {

	}

	/**
	 * fonction qui prend les informations son Id.
	 *
	 * @param type $pid
	 */
	public static function getById($pid) {
		$pid = intval($pid);

		//On essaye de charger l'element
		if(!isset(self::$_elements[$pid])) {
			self::_load($pid);
		}
		//Si on a pas réussi à chargé l'article (pas publiée?)
		if(!isset(self::$_elements[$pid])) {
			return FALSE;
		}

		return self::$_elements[$pid];
	}

	/**
	 * fonction qui charge toutes les informations dans le variable statique $_elements.
	 *
	 * @param type $pid
	 */
	private static function _load($pid) {
		$pid = intval($pid);
		$p = get_post($pid);

		if($p->post_type == "post"){
			$element = new stdClass();

			//traitement des données


			//stocker dans le tableau statique
			self::$_elements[$pid] = $element;
		}
	}

	/**
	 * fonction qui retourne une liste filtrée
	 *
	 */
	public static function getBy($tax = null) {
		$args = array (
			'post_type' => 'post',
			'post_status' => 'publish',
			'numberposts' => -1,
			'offset' => 0,
			'order' => 'DESC',
			'orderby' => 'date',
			'fields' => 'ids'
		);

		if(!is_null($tax)) {
			$args['tax_query'][] = array (
				'taxonomy' => 'category',
				'field' => 'id',
				'terms' => $tax
			);
		}

		$elements = get_posts($args);
		$elts = array();
		foreach ($elements as $id) {
			$elt = self::getById(intval($id));
			$elts[]=$elt;
		}
		return $elts;

	}

	// creation du dossier au même nom que le fichier uploadé


	/**
	 * @param $meta_id
	 * @param $object_id
	 * @param $meta_key
	 * @param $_meta_value
	 */
	public static function process_pdf_to_image(  $post_ID, $post, $update ){

		if ( $post->post_status == 'publish' && $post->post_type == 'post' && is_admin()) {
			$post_meta = get_post_meta($post_ID, 'pdf_magazine', true);
			$pdfData = get_attached_file($post_meta);
			$dir = explode('.', $pdfData)[0];

			if ( !is_dir($dir) ) {
				mkdir($dir, 0777);
			}

			$pdf = new PDFFLIP($pdfData, $post_meta);
			$pdf->convertPdf();
			$pdf->doVignette();

		}

	}

}

global $cmagazine;
$cmagazine = new CMagazine();

add_action( 'save_post', array('CMagazine', 'process_pdf_to_image'), 10, 1000 );
?>