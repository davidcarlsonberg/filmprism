<?php
  $pageTitle = 'ScreenPrism | Film & TV Decoded';
  $bodyId = 'home';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="popular">
  <div class="inner">
    <h5 class="section-heading">Popular Articles</h5>
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

        <h5 class="section-heading">New Cinema Releases</h5>        
        <ul>
          <li>
            <figure>
              <img src="assets/img/photos/grand-budapest-square.jpg" />
            </figure>
          </li>
          <li>
            <figure>
              <img src="assets/img/photos/grand-budapest-square.jpg" />
            </figure>
          </li>
          <li>
            <figure>
              <img src="assets/img/photos/grand-budapest-square.jpg" />
            </figure>
          </li>
          <li>
            <figure>
              <img src="assets/img/photos/grand-budapest-square.jpg" />
            </figure>
          </li>
        </ul>
      </div>

      <div class="col col-2 col-top">

        <h5 class="section-heading">New TV Releases</h5>        
        <ul>
          <li>
            <figure>
              <img src="assets/img/photos/grand-budapest-square.jpg" />
            </figure>
          </li>
          <li>
            <figure>
              <img src="assets/img/photos/grand-budapest-square.jpg" />
            </figure>
          </li>
          <li>
            <figure>
              <img src="assets/img/photos/grand-budapest-square.jpg" />
            </figure>
          </li>
          <li>
            <figure>
              <img src="assets/img/photos/grand-budapest-square.jpg" />
            </figure>
          </li>
        </ul>        
      </div>


      <div class="col col-1">

        <h5 class="section-heading">New on NetFlix and Amazon</h5>        
        <ul>
          <li>
            <figure>
              <img src="assets/img/photos/grand-budapest-square.jpg" />
            </figure>
          </li>
          <li>
            <figure>
              <img src="assets/img/photos/grand-budapest-square.jpg" />
            </figure>
          </li>
          <li>
            <figure>
              <img src="assets/img/photos/grand-budapest-square.jpg" />
            </figure>
          </li>
          <li>
            <figure>
              <img src="assets/img/photos/grand-budapest-square.jpg" />
            </figure>
          </li>
        </ul>
      </div>

      <div class="col col-2">

        <h5 class="section-heading">Classics and Film Festival Darlings</h5>        
        <ul>
          <li>
            <figure>
              <img src="assets/img/photos/grand-budapest-square.jpg" />
            </figure>
          </li>
          <li>
            <figure>
              <img src="assets/img/photos/grand-budapest-square.jpg" />
            </figure>
          </li>
          <li>
            <figure>
              <img src="assets/img/photos/grand-budapest-square.jpg" />
            </figure>
          </li>
          <li>
            <figure>
              <img src="assets/img/photos/grand-budapest-square.jpg" />
            </figure>
          </li>
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