<?php
  $pageTitle = 'Insights | Film Prism';
  $bodyId = 'thoughts';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="filters">
  <div class="inner">
    <p class="sort-toggles">Filter by Type <a href="insights.php">Q &amp; A</a> <a href="insights.php">Articles</a></p>
    <select data-placeholder="Filter by Category" class="chosen-select">
      <option></option>
      <option>Comedy</option>
      <option>Drama</option>
      <option>Horror</option>
      <option>Romance</option>
    </select>
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