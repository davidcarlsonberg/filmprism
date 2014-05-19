<?php
  include '_partials/vars.php';
  $pageTitle = 'Film Prism';
  $pageFile = 'index.php';
  $bodyId = 'home';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="featured">
  <article>
    <a href="topic.php">
      <figure>
        <img src="http://placehold.it/800x800.jpg" />
      </figure>
      <div class="summary">
        <h4 class="title">Topic Article Title</h4>
        <p class="byline">Author Name</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eget libero quis velit ornare tincidunt. Praesent lobortis semper odio hendrerit gravida. Phasellus id pretium nibh.</p>
        <p"stats"><i class="discussion">Discussion</i> 20 Comments</p>
      </div>
    </a>
  </article>
</section>

<section class="recent-films cards">
  <h5 class="heading">Recently Added Films</h5>
  <?php
    include '_partials/film-card.php';
    include '_partials/film-card.php';
    include '_partials/film-card.php';
    include '_partials/film-card.php';
  ?>
</section>

<section class="discussions cards">
  <h5 class="heading">Popular Discussions</h5>
  <?php
    include '_partials/topic-card.php';
    include '_partials/topic-card.php';
    include '_partials/topic-card.php';
    include '_partials/topic-card.php';
  ?>
</section>
  
<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>