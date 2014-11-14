<?php
  $pageTitle = 'Easter Eggs | Film Prism';
  $bodyId = 'easter-eggs';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="main easter-eggs-feed">
  <div class="inner">
    <?php
      include '_partials/easter-egg-card.php';
      include '_partials/easter-egg-card.php';
      include '_partials/easter-egg-card.php';
      include '_partials/easter-egg-card.php';
      include '_partials/easter-egg-card.php';
      include '_partials/easter-egg-card.php';
      include '_partials/easter-egg-card.php';
      include '_partials/easter-egg-card.php';
    ?>
    <a href="topics.php" class="button load">Load More</a>
  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>