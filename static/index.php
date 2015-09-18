<?php
  $pageTitle = 'ScreenPrism | Film & TV Decoded';
  $bodyId = 'home';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="callout">
  <p>where all of your film and tv related questions are explained</p>
</section>

<section class="popular">
  <div class="inner">
    <article class="featured">
      <a href="qanda.php">
        <figure>
          <img src="assets/img/photos/under-the-skin-poster.jpg" />
        </figure>
        <div class="summary">
          <h3>Q: The Question Will Go Here?</h3>
          <p>A short summary of the article. This only needs to be a few lines long. Just a brief description to catch the reader's attention.</p>
          <p class="meta">Q &amp; A <span class="divider">|</span> <svg viewBox="0 0 20 20" class="icon comment-icon"><use xlink:href="#comment-icon"></use></svg> 36</p>
        </div>
      </a>
    </article>
    <ol class="article-list">
      <?php
        include '_partials/features-card.php';
        include '_partials/features-card.php';
        include '_partials/features-card.php';
        include '_partials/features-card.php';
      ?>
    </ol>
  </div> <!-- end .inner -->
</section>

<section class="new-releases">
  
  <div class="inner">

      <div class="col col-1 col-top">

        <h5 class="section-heading">New in Theaters</h5>        
        <ul>
          <?php
            include '_partials/new-card.php';
            include '_partials/new-card.php';
            include '_partials/new-card.php';
            include '_partials/new-card.php';
          ?>
        </ul>
      </div>

      <div class="col col-2 col-top">

        <h5 class="section-heading">New on TV</h5>        
        <ul>
          <?php
            include '_partials/new-card.php';
            include '_partials/new-card.php';
            include '_partials/new-card.php';
            include '_partials/new-card.php';
          ?>
        </ul>        
      </div>


      <div class="col col-1">

        <h5 class="section-heading">New on NetFlix, Amazon and DVD</h5>        
        <ul>
          <?php
            include '_partials/new-card.php';
            include '_partials/new-card.php';
            include '_partials/new-card.php';
            include '_partials/new-card.php';
          ?>
        </ul>
      </div>

      <div class="col col-2">

        <h5 class="section-heading">Classics</h5>        
        <ul>
          <?php
            include '_partials/new-card.php';
            include '_partials/new-card.php';
            include '_partials/new-card.php';
            include '_partials/new-card.php';
          ?>
        </ul>        
      </div>      

  </div>

</section>

<section class="recent">
  <div class="inner">
    <h5 class="section-heading">Recent Articles</h5>
    <ol class="article-list">
      <?php
        include '_partials/article-listing.php';
        include '_partials/article-listing.php';
        include '_partials/article-listing.php';
        include '_partials/article-listing.php';
        include '_partials/article-listing.php';
        include '_partials/article-listing.php';
        include '_partials/article-listing.php';
        include '_partials/article-listing.php';
        include '_partials/article-listing.php';
        include '_partials/article-listing.php';
        include '_partials/article-listing.php';
        include '_partials/article-listing.php';
      ?>
    </ol>
    <a href="#" class="button load">Load More</a>
  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>