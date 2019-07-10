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
			$element->id = $pid;
			$element->pdf_id = get_post_meta($pid,'pdf_magazine', true);

			//pdf flig object
			$pdfflip = new PDFFLIP($element->pdf_id);
			$element->images = $pdfflip->getImagesList();

			$thumbnail_id = get_post_meta($pid,'_thumbnail_id', true);
			if ( $thumbnail_id > 0 ){
				list($element->vignette) = wp_get_attachment_image_src($thumbnail_id, 'thumbnail');
			} else {
				$element->vignette = isset($element->images[0]) ? $element->images[0] : '';
			}

			$element->title = $p->post_title;
			$element->extrait = !empty($p->post_excerpt) ? $p->post_excerpt : wp_limite_text($p->post_content, 200);
			$element->description = $p->post_content;
			$element->date_publication = $p->post_date;

			//stocker dans le tableau statique
			self::$_elements[$pid] = $element;
		}
	}

	/**
	 * fonction qui retourne une liste filtrée
	 *
	 */
	public static function getBy($args = array()) {
		$default_args = array (
			'post_type' => 'post',
			'post_status' => 'publish',
			'numberposts' => -1,
			'offset' => 0,
			'order' => 'DESC',
			'orderby' => 'date',
			'fields' => 'ids'
		);

		/*if(!is_null($tax)) {
			$args['tax_query'][] = array (
				'taxonomy' => 'category',
				'field' => 'id',
				'terms' => $tax
			);
		}*/

		$args = wp_parse_args($args, $default_args);

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
			$pdf_id = get_post_meta($post_ID, 'pdf_magazine', true);

			$pdf = new PDFFLIP($pdf_id);
			$pdf->convertPdf();

		}
	}


	public static function getItemsCallback( $offset, $limit, $filters, $sorting ){
		$paged =  intval($offset/$limit +1);
		$args = array(
			'post_type'      => 'post',
			'post_status'    => 'publish',
			'posts_per_page' => $limit,
			'paged'          => $paged,
			'order'          => 'DESC',
			'orderby'        => 'date',
			'fields'         => 'ids',
		);


		$posts = query_posts($args);
		global $wp_query;
		return array('posts' => $posts, 'count'=> $wp_query->found_posts);
	}

	public static function renderItemCallback( $pid ){
		$emag = self::getById($pid);

		ob_start();
		?>
			<a href="<?php echo get_permalink($pid); ?>">
				<figure>
					<img src="<?php echo $emag->vignette ?>" alt="">
					<figcaption><?php echo $emag->title ?></figcaption>
				</figure>
			</a>
		<?php
		return ob_get_clean();

	}

}

global $cmagazine;
$cmagazine = new CMagazine();

add_action( 'save_post', array('CMagazine', 'process_pdf_to_image'), 10, 1000 );
?>