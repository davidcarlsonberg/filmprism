<?php
  $pageTitle = 'Films | Film Prism';
  $bodyId = 'films-list';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="filters">
  <p>Sort by: <a href="films.php">Release Date</a> <a href="films.php">Title</a></p>
</section>

<section class="main">
  <div class="inner">
    <ol class="films-list">
      <?php
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
      ?>
    </ol>
    <a href="films.php" class="button">See More Films</a>
  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>