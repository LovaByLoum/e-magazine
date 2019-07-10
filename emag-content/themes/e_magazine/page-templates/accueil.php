<?php
global $post;
?>

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
<?php
//$magaz = CMagazine::getById(168);

$page = CPage::getById($post->ID);

$derniers_emagazine = CMagazine::getBy(array('numberposts' => 10));



?>
<div id="primary">
   <div class="content">

   <!-- Banniere -->
      <section class="banner-wrapper">
         <div class="banner d-flex justify-content-center align-items-center" style="background-image: url(<?php echo $page->banniere_image?>)">
            <div class="container">
               <div class="text-center">
                  <h2><?php echo $page->texte_introduction?></h2>
                  <a href="<?php echo $page->lien_bouton?>" class="btn btn-primary btn-pub"><?php echo $page->libelle_bouton?></a>
               </div>
            </div>
         </div>
      </section>
    <!-- /Banniere -->

    <!-- Slider -->


      <section class="slide-wrapper-gallery">

          <div class="owl-carousel">
              <?php foreach ( $derniers_emagazine as $emag ):?>
                  <div class="item">
                       <div class="images">
                          <a href="#" class="item-action">
                             <div class="image-container cover-0" style="z-index: 49;">
                                <img src="<?php echo $emag->vignette;?>" alt="" class="image">
                             </div>
                          </a>
                          <!--a href="#" class="item-action">
                             <div class="image-container cover-1" style="z-index: 48;">
                                <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                             </div>
                          </a>
                          <a href="#" class="item-action">
                             <div class="image-container cover-2" style="z-index: 47;">
                                <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                             </div>
                          </a-->

                       </div>
                       <div class="caption"><?php echo $emag->title;?></div>
                  </div>
              <?php endforeach;?>
          </div>

      </section>
      <!-- /Slider -->

      <!-- Gallery -->
      <section class="book-list">
         <div class="container">
            <h2 class="text-center">Explorez les dernières publications</h2>

             <?php
             $object = new WP_Infinite_Loading('emagazine-infinite-box');
             //configuration
             //set list or table view
             $object->setListView('list');
             //number of item on first load
             $object->setItemNumberOnLoad(2);
             //number of item on clicking load button
             $object->setItemNumberToLoad(2);
             //container class
             $object->setContainerClasses('row');
             //item classes
             $object->setItemClasses('item col-md-6 col-lg-3');
             //id an template of infinite load button
             $object->setInfiniteLoadButton(
	             array(
		             'id'=>'load-more',
		             'tpl'=>'<div class="footer" id="load-more"><button class="btn btn-plus more-link">Charger plus...</button></div>'
	             ),
	             array(
		             'id'=>'no-load-more',
		             'tpl'=>'<div id="no-load-more" class="footer-hide-button"></div>'
	             )
             );
             //set function callback for customize item template
             $object->setRenderItemCallback(array(CMagazine, 'renderItemCallback'));
             //set function callback for getting items by offset, limit, filter and sort
             $object->setGetItemsCallback(array(CMagazine, 'getItemsCallback'));
             //add class to retrieve sorting element
             //$object->addSorting('product-sort-date');
             //add class to retrieve filter element
             //$object->addFilter('product-filtre-category');

             //display infinite loading box
             $object->displayItems();
             ?>

             <style>
                 #wpil_item_container_emagazine-infinite-box{
                     display: flex!important;
                 }
             </style>
            <div class="btn-list-addon d-flex align-items-center justify-content-center">
               <?php
                //display the infinite loading button
                $object->displayInfiniteLoadButton();
                ?>
            </div>
         </div>
      </section>
      <!-- /Gallery -->

   </div>
   <!-- #content -->
</div>
<!-- #primary -->
<?php get_footer(); ?>