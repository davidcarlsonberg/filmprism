<?php
  $pageTitle = 'Films | Film Prism';
  $bodyId = 'media';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="filters">
  <p>Sort by <a href="films.php">Release Date</a> <a href="films.php">Title</a></p>
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