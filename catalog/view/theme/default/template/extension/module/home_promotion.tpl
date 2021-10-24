<h2 class="main-heading">
  <?php echo $main_title; ?>
</h2>
<div class="home-promotion">
  <?php foreach ($row_contents as $item) { ?>
    <!-- <?php debug($item);?> -->
        <div>
          <?php $opacity = ($item['text_color'] == "black") ? 0.6 : 1; ?>
          <div class="home-promo-img" style="background-image:url('image/<?php echo $item['image']; ?>'); opacity:<?=$opacity;?> " > </div>
          <div class="promotion-content">
                <p class="promotion-title" style="color:<?=$item['text_color'];?> !important"><?=$item['title'];?></p>
                <p class="promotion-desc" style="color:<?=$item['text_color'];?> !important"><?=$item['description'];?></p>
                <div class="promotion-btn-section"><a href="<?=$item['button_link'];?>" class="home-promotion-btn"><?=$item['button_lbl'];?></a></div>
          </div>
       </div>
  <?php } ?>
</div>
<!-- <div id="ToTop" style="display: inline;">
  <div class="back-text">Back to Top</div>
</div> -->

    <div class="bk-top" onclick="scrollToTop()">
        <img src="image/catalog/general/top.png" alt="top" class="top-img img-responsive">
        <div class="back-text">Back to Top</div>
    </div>



<script>

function scrollToTop() {
          $("html, body").animate({ scrollTop: 0 }, 1000);
      }


    jQuery(document).ready(function ($) {
          $(".home-promotion").slick({
          dots: true,
          infinite: false,
          speed: 300,
          arrows:true,
          slidesToShow: 2,
          slidesToScroll: 1,
          responsive: [
            {
              breakpoint: 1401,
              settings: {
                slidesToShow: 2,
              }
            },
            {
              breakpoint: 1201,
              settings: {
                slidesToShow: 2,
              }
            },
            {
              breakpoint: 993,
              settings: {
                slidesToShow: 2,
              }
            },
            {
              breakpoint: 769,
              settings: {
                slidesToShow: 1,
              }
            },
            {
              breakpoint: 541,
              settings: {
                slidesToShow: 1,
                arrows: false,
                autoplay: false,
                autoplaySpeed: 5000
              }
            },
            {
              breakpoint: 415,
              settings: {
                slidesToShow: 1,
                arrows: false,
                autoplay: false,
                autoplaySpeed: 5000
              }
            },
            {
              breakpoint: 376,
              settings: {
                slidesToShow: 1,
                arrows: false,
                autoplay: true,
                autoplaySpeed: 5000
              }
            }
          ],
          prevArrow: "<div class='pointer slick-nav left prev absolute'><div class='absolute position-center-center'>
          <img src='image/catalog/general/left.png' alt='left-arrow' class='arrow-img'>
          </div></div>",
          nextArrow: "<div class='pointer slick-nav right next absolute'><div class='absolute position-center-center'>
          <img src='image/catalog/general/right.png' alt='right-arrow' class='arrow-img'>
          </div></div>",
        });
      });
</script>
