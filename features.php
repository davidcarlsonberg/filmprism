<?php
  $pageTitle = 'Features | Film Prism';
  $bodyId = 'features';
  include '_partials/head.php';
  include '_partials/header.php';
?>
<section class="filters">
  <p>Filter by Category: <a href="features.php">Q &amp; A</a> <a href="features.php">Articles</a></p>
</section>

<section class="main">
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
    <a href="topics.php" class="button">See More Features</a>
  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>