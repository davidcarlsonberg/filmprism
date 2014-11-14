<?php
  $pageTitle = 'Question Title | Film Prism';
  $bodyId = 'thoughts';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="main">
  <div class="content single thoughts qanda">
    <article>
      <header>
        <h1><span>Q:</span> This is the Question?</h1>
      </header>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>
      <h1>H1 Headline</h1>
      <p>Etiam dapibus ultrices lacus nec posuere. Praesent blandit velit dolor, eu viverra nibh pulvinar ut. Nulla convallis nibh at varius sollicitudin. Phasellus porttitor mollis risus et porta. Phasellus mauris sem, porttitor quis risus quis, fringilla gravida justo. Praesent magna quam, elementum eu rhoncus ac, vestibulum ut nulla. Duis sit amet mattis felis. Maecenas laoreet dictum sapien commodo imperdiet. Donec mattis mi nisi, euismod vulputate magna vulputate quis. Integer semper interdum feugiat. Fusce quis aliquam turpis. Nullam luctus tortor non turpis tincidunt, eu faucibus orci laoreet. Donec rutrum mi leo, quis condimentum lacus sodales et.</p>
      <h2>H2 Headline</h2>
      <p>Duis ac leo id quam ornare tincidunt vestibulum quis purus. Vivamus eleifend est lacus, ac auctor nunc feugiat mollis. Integer eget tempor risus, id rutrum mauris. Suspendisse potenti. Nullam nec tristique orci, at lobortis arcu. Sed id blandit enim, vitae luctus velit. Cras blandit magna a justo feugiat condimentum.</p>
      <h3>H3 Headline</h3>
      <p>Nullam quam leo, blandit vel venenatis ac, lobortis quis enim. Donec id tristique ligula. Nam ut gravida elit. Nunc viverra metus et venenatis mollis. In eu nunc et diam iaculis volutpat ut at ligula. Morbi vulputate justo commodo diam convallis blandit. Curabitur lacinia suscipit turpis nec aliquam. Donec iaculis nunc vitae enim auctor, id viverra sapien fringilla.</p>
      <footer>
        <ul class="tags">
          <li><a href="#">Tag</a></li>
          <li><a href="#">Tag</a></li>
          <li><a href="#">Tag</a></li>
          <li><a href="#">Tag</a></li>
        </ul>
      </footer>
    </article>
    <aside>
      <?php
        include '_partials/share-links.php';
        include '_partials/related-articles.php';
      ?>
    </aside>
    <?php include '_partials/discussion.php'; ?>
  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>