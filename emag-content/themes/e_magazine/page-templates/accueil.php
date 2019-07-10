<?php

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

$derniers_emagazine = CMagazine::getBy(array('numberposts' => 10));



?>
<div id="primary">
   <div class="content">

   <!-- Banniere -->
      <section class="banner-wrapper">
         <div class="banner d-flex justify-content-center align-items-center" style="background-image: url(<?php echo get_template_directory_uri(); ?>/images/data/wall_home.jpg)">
            <div class="container">
               <div class="text-center">
                  <h2>lorem ipsum dolor sit amet consectetuer</h2>
                  <a href="#" class="btn btn-primary btn-pub">Publiez-maintenant</a>
               </div>
            </div>
         </div>
      </section>
    <!-- /Banniere -->

    <!-- Slider -->


      <section class="slide-wrapper-gallery">



            <div class="item">
               <div class="images">
                  <a href="#" class="item-action">
                     <div class="image-container cover-0" style="z-index: 49;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
                  <a href="#" class="item-action">
                     <div class="image-container cover-1" style="z-index: 48;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
                  <a href="#" class="item-action">
                     <div class="image-container cover-2" style="z-index: 47;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
               </div>
               <div class="caption">lorem ipsum dolor</div>
            </div>

            <div class="item">
               <div class="images">
                  <a href="#" class="item-action">
                     <div class="image-container cover-0" style="z-index: 49;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
                  <a href="#" class="item-action">
                     <div class="image-container cover-1" style="z-index: 48;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
                  <a href="#" class="item-action">
                     <div class="image-container cover-2" style="z-index: 47;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
               </div>
               <div class="caption">lorem ipsum dolor</div>
            </div>

            <div class="item">
               <div class="images">
                  <a href="#" class="item-action">
                     <div class="image-container cover-0" style="z-index: 49;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
                  <a href="#" class="item-action">
                     <div class="image-container cover-1" style="z-index: 48;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
                  <a href="#" class="item-action">
                     <div class="image-container cover-2" style="z-index: 47;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
               </div>
               <div class="caption">lorem ipsum dolor</div>
            </div>

            <div class="item">
               <div class="images">
                  <a href="#" class="item-action">
                     <div class="image-container cover-0" style="z-index: 49;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
                  <a href="#" class="item-action">
                     <div class="image-container cover-1" style="z-index: 48;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
                  <a href="#" class="item-action">
                     <div class="image-container cover-2" style="z-index: 47;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
               </div>
               <div class="caption">lorem ipsum dolor</div>
            </div>

            <div class="item">
               <div class="images">
                  <a href="#" class="item-action">
                     <div class="image-container cover-0" style="z-index: 49;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
                  <a href="#" class="item-action">
                     <div class="image-container cover-1" style="z-index: 48;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
                  <a href="#" class="item-action">
                     <div class="image-container cover-2" style="z-index: 47;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
               </div>
               <div class="caption">lorem ipsum dolor</div>
            </div>


            <div class="item">
               <div class="images">
                  <a href="#" class="item-action">
                     <div class="image-container cover-0" style="z-index: 49;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
                  <a href="#" class="item-action">
                     <div class="image-container cover-1" style="z-index: 48;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
                  <a href="#" class="item-action">
                     <div class="image-container cover-2" style="z-index: 47;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
               </div>
               <div class="caption">lorem ipsum dolor</div>
            </div>
            <div class="item">
               <div class="images">
                  <a href="#" class="item-action">
                     <div class="image-container cover-0" style="z-index: 49;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
                  <a href="#" class="item-action">
                     <div class="image-container cover-1" style="z-index: 48;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
                  <a href="#" class="item-action">
                     <div class="image-container cover-2" style="z-index: 47;">
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="" class="image">
                     </div>
                  </a>
               </div>
               <div class="caption">lorem ipsum dolor</div>
            </div>

      </section>
      <!-- /Slider -->

      <!-- Gallery -->
      <section class="book-list">
         <div class="container">
            <h2 class="text-center">Explorez les dernières publications</h2>
            <ul class="row">
               <li class="col-md-6 col-lg-3">
                  <a href="#">
                     <figure>
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/boss.jpg" alt="">
                        <figcaption>lorem ipsum dolor</figcaption>
                     </figure>
                  </a>
               </li>
               <li class="col-md-6 col-lg-3">
                  <a href="#">
                     <figure>
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="">
                        <figcaption>lorem ipsum dolor</figcaption>
                     </figure>
                  </a>
               </li>
               <li class="col-md-6 col-lg-3">
                  <a href="#">
                     <figure>
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/barea.jpg" alt="">
                        <figcaption>lorem ipsum dolor</figcaption>
                     </figure>
                  </a>
               </li>
               <li class="col-md-6 col-lg-3">
                  <a href="#">
                     <figure>
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/essentielle.jpg" alt="">
                        <figcaption>lorem ipsum dolor</figcaption>
                     </figure>
                  </a>
               </li>
               <li class="col-md-6 col-lg-3">
                  <a href="#">
                     <figure>
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/lagazette.jpg" alt="">
                        <figcaption>lorem ipsum dolor</figcaption>
                     </figure>
                  </a>
               </li>
               <li class="col-md-6 col-lg-3">
                  <a href="#">
                     <figure>
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/gotomada.jpg" alt="">
                        <figcaption>lorem ipsum dolor</figcaption>
                     </figure>
                  </a>
               </li>
               <li class="col-md-6 col-lg-3">
                  <a href="#">
                     <figure>
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/tribune.jpg" alt="">
                        <figcaption>lorem ipsum dolor</figcaption>
                     </figure>
                  </a>
               </li>
               <li class="col-md-6 col-lg-3">
                  <a href="#">
                     <figure>
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/madagascar.jpg" alt="">
                        <figcaption>lorem ipsum dolor</figcaption>
                     </figure>
                  </a>
               </li>
               <li class="col-md-6 col-lg-3">
                  <a href="#">
                     <figure>
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/boss.jpg" alt="">
                        <figcaption>lorem ipsum dolor</figcaption>
                     </figure>
                  </a>
               </li>
               <li class="col-md-6 col-lg-3">
                  <a href="#">
                     <figure>
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/zay.jpg" alt="">
                        <figcaption>lorem ipsum dolor</figcaption>
                     </figure>
                  </a>
               </li>
               <li class="col-md-6 col-lg-3">
                  <a href="#">
                     <figure>
                        <img src="<?php echo get_template_directory_uri(); ?>/images/data/barea.jpg" alt="">
                        <figcaption>lorem ipsum dolor</figcaption>
                     </figure>
                  </a>
               </li>
            </ul>
            <div class="btn-list-addon d-flex align-items-center justify-content-center">
               <button class="btn btn-plus">Charger plus...</button>
            </div>
         </div>
      </section>
      <!-- /Gallery -->

   </div>
   <!-- #content -->
</div>
<!-- #primary -->
<?php get_footer(); ?>