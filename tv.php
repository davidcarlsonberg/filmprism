<?php
  $pageTitle = 'TV Shows | FilmPrism';
  $bodyId = 'media';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="filters">
  <div class="inner">
    <p>Sort by <a href="tv.php">Release Date</a> <a href="tv.php">Title</a></p>
    <div class="select-box">
      <span>Filter by Genre</span>
      <select>
        <option>- Filter by Genre -</option>
        <option>Comedy</option>
        <option>Drama</option>
        <option>Horror</option>
        <option>Romance</option>
      </select>
    </div>
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