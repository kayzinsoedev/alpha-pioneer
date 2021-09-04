<div class="membership-section">
    <h1><?=$heading;?></h1>
    <img src="image/<?=$image;?>" alt="membership">
    <div class="membership-title main"><?=$title;?></div>
    <div class="membership-desc"><?=$description;?></div>
</div>

<div class="membership-sub-main">

<div class="works-main-container">
<div class="membership-title"><?=$works_title;?></div>
      <div class="works-container">
      <?php foreach($works_contents as $works) { ?>
              <div class="works-content">
                    <div class="works-sub-content">
                          <img src="image/<?=$works['image'];?>" alt="how-it-works">
                          <div class="works-title"><?=$works['title'];?></div>
                    </div>
              </div>
      <?php }?>
      </div>
</div>



<div class="works-main-container">
<div class="membership-title"><?=$benefits_title;?></div>
      <div class="benefits-container">
      <?php foreach($benefits_contents as $benefits) { ?>
              <div class="benefits-content">
                    <div class="works-sub-content">
                          <img src="image/<?=$benefits['image'];?>" alt="how-it-works">
                          <div class="works-title"><?=$benefits['title'];?></div>
                    </div>
              </div>
      <?php }?>
      </div>
</div>



<div class="membership-btn-section">
    <a href="<?=$membership_link;?>" class="membership-btn"><?=$membership_btn;?></a>
</div>

</div>
