<?php
  $pageTitle = 'Film Title | Film Prism';
  $bodyId = 'film';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="main">
  <div class="content">
    <header>
      <h1>Film Title</h1>
    </header>
    <aside class="film-details">
      <figure>
        <img src="http://placehold.it/210x270.jpg" />
      </figure>
      <ul>
        <li><strong>Released:</strong> May 28, 2014</li>
        <li><strong>Directed By:</strong> Director's Name</li>
        <li><strong>Written By:</strong> Writer's Name</li>
      </ul>
    </aside>

    <div class="article-body">

      <article>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>
        <p><strong><a href="javascript:void(0)">Read More</a></strong></p>
      </article>

      <div class="questions">
        <h2>Q &amp; A</h2>
        <ol>
          <li>
            <a href="q-and-a.php">
              <h3>Q: Lorem ipsum dolor sit amet, consectetur adipiscing elit?</h3>
              <p><i><img src="assets/img/graphics/bubble-dark.png" /></i> 36</p>
            </a>
          </li>
          <li>
            <a href="q-and-a.php">
              <h3>Q: Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus?</h3>
              <p><i><img src="assets/img/graphics/bubble-dark.png" /></i> 36</p>
            </a>
          </li>
        </ol>
      </div>

      <div class="related-links">
        <h2>Related Links</h2>
        <ul>
          <li>
            <a href="article.php">
              <h3>Article Title</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa.</p>
            </a>
          </li>
          <li>
            <a href="article.php">
              <h3>Another Article Title</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa.</p>
            </a>
          </li>
          <li>
            <a href="article.php">
              <h3>Article Title</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa.</p>
            </a>
          </li>
          <li>
            <a href="article.php">
              <h3>Another Article Title</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa.</p>
            </a>
          </li>
        </ul>
      </div>

      <div class="submit-question">
        <h2>Submit a Question</h2>
        <p>Have a question about this film or want to start a discussion? Use the form below to submit a question and get the converstion started.</p>
        <form>
          <textarea></textarea>
          <input type="submit" value="Submit" />
        </form>
      </div>

    </div>

    <aside class="related-films">
      <h4>Related Films</h4>
      <ul>
        <?php include '_partials/film-card.php'; ?>
        <?php include '_partials/film-card.php'; ?>
        <?php include '_partials/film-card.php'; ?>
        <?php include '_partials/film-card.php'; ?>
      </ul>
    </aside>

  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>