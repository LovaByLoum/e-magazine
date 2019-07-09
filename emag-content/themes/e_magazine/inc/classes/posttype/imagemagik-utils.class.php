<?php
//class utilitaire pdf / imagemagik

class PDFFLIP{
	public $filename;
	public $relative_path;
	public $pdf_path;
	public $url;
	public $id;
	public $path;
	public $nombre_de_page;
	public $imagemagikpath;
	
	function __construct($aid){
		$this->id = $aid;


		$relative_path = get_post_meta ($this->id, '_wp_attached_file', true);
		$this->relative_path = $relative_path;

		$this->imagemagikpath = "/usr/local/bin/";

//		$this->url = $pdfURL;


		$this->pdf_path = $this->getPdfPath();

		$this->path = $this->getImagesPath();

		//$this->nombre_de_page = $this->getNumberPage();
		

	}
	
	/**
	 * obtenir le path du pdf
	 *
	 */
	function getPdfPath(){
		$uploadUrl = wp_upload_dir();
		$path = $uploadUrl['basedir'];
		$urlinfo = pathinfo($this->relative_path);
		$path = $path . DIRECTORY_SEPARATOR . $urlinfo['dirname'] . DIRECTORY_SEPARATOR . $urlinfo['basename'];
		return $path;
	}

	/**
	 * obtenir le path du pdf
	 *
	 */
	function getImagesPath(){
		$uploadUrl = wp_upload_dir();
		$path = $uploadUrl['basedir'];
		$urlinfo = pathinfo($this->relative_path);
		$path = $path . DIRECTORY_SEPARATOR . $urlinfo['dirname'] . DIRECTORY_SEPARATOR . $urlinfo['filename'];
		return $path;
	}
	
	/**
	 * obtenir le nombre de page
	 *
	 */
	function getNumberPage(){
		$files = glob($this->path . DIRECTORY_SEPARATOR . '*.jpg' );
		return count($files);
	}
	

	function prepareDir(){
		if ( !is_dir( $this->path ) ) {
			mkdir($this->path, 0775);
		}
	}
	
	/**
	 * convertit un pdf en image
	 *
	 */
	function convertPdf(){

		//create dir if not exists
		$this->prepareDir();

		if( file_exists($this->path) ){
			exec($this->imagemagikpath . "convert -density 100 -quality 100 ".$this->pdf_path." " . $this->path . "/%0d.jpg");
			$this->doVignette();
		}
	}
	
	/**
	 * generer les vignettes
	 *
	 */
	function doVignette(){
		exec($this->imagemagikpath . "convert ". $this->pdf_path ." -resize 100x100 " . $this->path . "/%0d-vignette.jpg");
	}
	
	function removeImages(){
		if( file_exists($this->path)){
			//exec("rm -R ". $this->path);
			unlink($this->path);
		}
	}
}

?>