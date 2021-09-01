<div id="slideshow<?= $module; ?>" class="relative owl-carousel"  style="opacity: 1; width: 100%;">
  <?php foreach ($banners as $banner) { ?>
    <div class="relative <?= $banner['theme']; ?> h100">
      <img data-src="<?= $banner['image']; ?>" alt="<?= $banner['title']; ?>" class="img-responsive hidden-xs owl-lazy" />
      <img data-src="<?= $banner['mobile_image']; ?>" alt="<?= $banner['title']; ?>" class="img-responsive visible-xs owl-lazy" />
      <?php if($banner['description']){ ?>
        <div class="slider-slideshow-description w100 absolute position-center-center background-type-<?= $banner['theme']; ?>">
          <div class="container">
            <div class="slider-slideshow-description-texts">
              <div class="line"></div>
              <span class="banner-title"><?=$banner['title'];?></span>
              <span class="banner-desc"><?= $banner['description']; ?></span>

              <?php if ( $banner['link'] && $banner['link_text'] ) { ?>
              <div class="slider-slideshow-description-link">
                <a href="<?= $banner['link']; ?>" class="btn btn-primary">
                  <?= $banner['link_text']; ?>
                </a>
              </div>
              <!--class:slider-slideshow-description-link-->
              <?php } ?>
            </div>
            <!--class:slider-slideshow-description-texts-->
          </div>
          <!--class:container-->
        </div>
        <!--class:slider-slideshow-description-->
      <?php } ?>

      <?php if($banner['link']){ ?>
        <a href="<?= $banner['link']; ?>" class="block absolute position-left-top w100 h100"></a>
      <?php } ?>
      <div class="banner-overlay"></div>
    </div>
  <?php } ?>
</div>
<?php //include('slideshow_script_slick.tpl'); ?>
<?php include('slideshow_script_owl.tpl'); ?>

<?php if($config_parallax_slider) { ?>
  <style>
        body .section-space.slideshow +  .section-space{
            margin-top: calc((<?=$parallax_margin;?> /19.2) * 1vw);
        }
        @media (max-width: 767px){
          body .section-space.slideshow +  .section-space{
              margin-top: calc((<?=$mobile_parallax_margin;?> /7.67) * 1vw)!important;
          }
        }
  </style>
  <?php } ?>
