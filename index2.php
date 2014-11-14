<?php
  $pageTitle = 'Film Prism';
  $bodyId = 'home';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="topics">
  <div class="inner">
    <header>
      <h4>Features</h4>
    </header>
    <article class="featured">
      <a href="q-and-a.php">
        <figure>
          <img src="http://placehold.it/720x405.jpg" />
        </figure>
        <div class="summary">
          <h3>Q: Lorem ipsum dolor sit amet?</h3>
          <p>Short summary of the topic. It should only be two or three lines long. Just a brief description.</p>
          <ul class="meta">
            <li>Q &amp; A</li>
            <li><i><img src="assets/img/graphics/bubble-light.png" /></i> 36</li>
          </ul>
        </div>
      </a>
    </article>
    <ol class="recent-topics">
      <?php
        include '_partials/features-card.php';
        include '_partials/features-card.php';
        include '_partials/features-card.php';
        include '_partials/features-card.php';
      ?>
    </ol>
    <a href="features.php" class="button">More Features</a>
  </div>
</section>

<section class="films">
  <div class="inner">
    <h4 class="title">Featured Films</h4>
    <ol class="recent-films">
      <?php
        include '_partials/film-card.php';
        include '_partials/film-card.php';
        include '_partials/film-card.php';
        include '_partials/film-card.php';
      ?>
    </ol>
    <a href="films.php" class="button">More Films</a>
  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>