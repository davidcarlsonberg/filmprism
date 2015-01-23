<?php
  $pageTitle = 'TV Shows | FilmPrism';
  $bodyId = 'media';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="filters">
  <div class="inner">
    <p class="sort-toggles">Sort by <a href="tv.php">Release Date</a> <a href="tv.php">Title</a></p>
    <select data-placeholder="Filter by Genre" class="chosen-select">
      <option></option>
      <option>Comedy</option>
      <option>Drama</option>
      <option>Horror</option>
      <option>Romance</option>
    </select>
  </div>
</section>

<section class="main films-list">
  <div class="inner">
    <ol>
      <?php
        include '_partials/film-card.php';
        include '_partials/film-card.php';
        include '_partials/film-card.php';
        include '_partials/film-card.php';
        include '_partials/film-card.php';
        include '_partials/film-card.php';
        include '_partials/film-card.php';
        include '_partials/film-card.php';
        include '_partials/film-card.php';
        include '_partials/film-card.php';
        include '_partials/film-card.php';
        include '_partials/film-card.php';
      ?>
    </ol>
    <a href="films.php" class="button load">Load More</a>
  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>