<?php
  $pageTitle = 'Film Prism';
  $bodyId = 'home';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="topics">
  <div class="inner">
    <h4 class="title">Recent Topics</h4>
    <article class="featured">
      <a href="topic.php">
        <figure>
          <img src="http://placehold.it/720x405.jpg" />
        </figure>
        <div class="summary">
          <h3>Topic Title</h3>
          <p>Short summary of the topic. It should only be two or three lines long. Just a brief description.</p>
          <p><i><img src="assets/img/graphics/bubble-light.png" /></i> 36</p>
        </div>
      </a>
    </article>
    <ol class="recent-topics">
      <?php
        include '_partials/topic-card.php';
        include '_partials/topic-card.php';
        include '_partials/topic-card.php';
        include '_partials/topic-card.php';
      ?>
    </ol>
    <a href="topics.php" class="button">See More Topics</a>
  </div>
</section>

<section class="films">
  <div class="inner">
    <h4 class="title">Recently Added Films</h4>
    <ol class="recent-films">
      <?php
        include '_partials/film-card.php';
        include '_partials/film-card.php';
        include '_partials/film-card.php';
        include '_partials/film-card.php';
        include '_partials/film-card.php';
        include '_partials/film-card.php';
      ?>
    </ol>
    <a href="films.php" class="button">See More Films</a>
  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>