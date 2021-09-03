<?php echo $header; ?>
<div class="container-fluid custom-brand-container">
  <?php echo $content_top; ?>
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li> <a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?> </a> </li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="brand_listing_<?=$brand_listing_layout;?> <?php echo $class; ?>">
      <h2><?php echo $heading_title; ?></h2>
        <?php if (isset($manufacturers) && $manufacturers) { ?>
          <div class="flex four-col-row gutter-row">
              <?php foreach ($manufacturers as $manufacturer) { ?>
                  <div class="brand text-center">
                      <div class="fcategory-section">
                      <a href="<?php echo $manufacturer['href']; ?>">
                        <?php if(isset($manufacturer['image']) && $manufacturer['image'] ) {?>
                         <div class="image transition">
                          <!-- <img src="<?=$manufacturer['image'];?>" class="img-responsive"/> -->
                          <div class="brand-img" style="background-image:url('<?=$manufacturer['image'];?>')"> </div>
                         </div>
                        <?php } ?>
                        <div class="overlay">
                            <div class="fcat-text">View</div>
                        </div>
                      </a>
                      </div>
                        <div class="brand-name"><?=$manufacturer['name'];?></div>
                  </div>

              <?php } ?>

          </div>
          <div class="pagination_container"><?= $pagination ?></div>
      <?php } else { ?>
      <div class="text-center"><?php echo $text_empty; ?></div>
      <div class="buttons text-center clearfix">
        <div class=""><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      </div>
    <?php echo $column_right; ?></div>
    <?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>
