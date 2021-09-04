<h2 class="main-heading">
  <?php echo $main_title; ?>
</h2>
<div class="logo-slider">
  <?php foreach ($items as $item) { ?>
    <div class="item">
      <img src="image/<?php echo $item['image']; ?>" class="img-responsive"/>
    </div>
  <?php } ?>
</div>

<div class="view-all-btn ">
        <a href="<?=$link;?>" class="btn-primary btn-gradient">View All</a>
</div>


<script>
    jQuery(document).ready(function ($) {
          $(".logo-slider").slick({
          dots: true,
          infinite: true,
          speed: 300,
          arrows:true,
          slidesToShow: 3,
          slidesToScroll: 1,
          centerMode :true,
          centerPadding:'80px',
          responsive: [
            {
              breakpoint: 1401,
              settings: {
                slidesToShow: 3,
              }
            },
            {
              breakpoint: 1201,
              settings: {
                slidesToShow: 3,
              }
            },
            {
              breakpoint: 993,
              settings: {
                slidesToShow: 3,
              }
            },
            {
              breakpoint: 769,
              settings: {
                slidesToShow: 2,
              }
            },
            {
              breakpoint: 541,
              settings: {
                slidesToShow: 1,
                arrows: false,
                autoplay: true,
                autoplaySpeed: 5000
              }
            },
            {
              breakpoint: 415,
              settings: {
                slidesToShow: 1,
                arrows: false,
                autoplay: true,
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
          <img src='image/catalog/general/left.png' alt='left-arrow'>
          </div></div>",
          nextArrow: "<div class='pointer slick-nav right next absolute'><div class='absolute position-center-center'>
          <img src='image/catalog/general/right.png' alt='right-arrow'>
          </div></div>",
        });
      });
</script>
