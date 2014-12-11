<?php
  $pageTitle = 'Thoughts | Film Prism';
  $bodyId = 'thoughts';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="main home-feed">
  <div class="inner">
    <?php
      include '_partials/article-card.php';
      include '_partials/qanda-card.php';
      include '_partials/article-card.php';
      include '_partials/qanda-card.php';
      include '_partials/qanda-card.php';
      include '_partials/article-card.php';
      include '_partials/article-card.php';
      include '_partials/qanda-card.php';
    ?>
    <a href="topics.php" class="button load">Load More</a>
  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>