<div class="related-module related_<?= $uqid; ?>">
  <h2 class="text-center target-heading">
    <?= $heading_title; ?>
  </h2>
  <div class="related section relative" style="opacity: 0;">
    <div id="related_slider_<?= $uqid; ?>" class="related-products">
      <?php foreach ($products as $product) { ?>
        <?= html($product); ?>
      <?php } ?>
    </div>
    <script type="text/javascript">

      $(window).load(function(){
        setTimeout(function () {
          related_product_slick<?= $uqid; ?>();
          AOS.init();
        }, 250);
      });

      function related_product_slick<?= $uqid; ?>(){
        $("#related_slider_<?= $uqid; ?>").on('init', function (event, slick) {
          $('#related_slider_<?= $uqid; ?>').parent().removeAttr('style');
        });

        $("#related_slider_<?= $uqid; ?>").slick({
          dots: false,
          infinite: false,
          speed: 300,
          slidesToShow: 4,
          slidesToScroll: 1,
          responsive: [
            {
              breakpoint: 1201,
              settings: {
                slidesToShow: 4,
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
                slidesToShow: 2,
                arrows: false,
                autoplay: true,
                autoplaySpeed: 5000
              }
            },
            {
              breakpoint: 415,
              settings: {
                slidesToShow: 2,
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


      }
    </script>
  </div>
</div>
