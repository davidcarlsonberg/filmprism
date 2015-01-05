<?php
  $pageTitle = 'Trending | Film Prism';
  $bodyId = 'thoughts';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="filters">
  <div class="inner">
    <p>Filter by Category <a href="trending.php">Q &amp; A</a> <a href="trending.php">Articles</a></p>
  </div>
</section>

<section class="main thoughts-feed">
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
    <a href="#" class="button load">Load More</a>
  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>