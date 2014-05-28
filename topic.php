<?php
  $pageTitle = 'Topic Title | Film Prism';
  $bodyId = 'topic';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="top">
  <figure>
    <img src="http://placehold.it/1080x540.jpg" />
    <figcaption>
      <h1>Topic Title</h1>
      <h3>Author Name</h3>
    </figcaption>
  </figure>
</section>

<section class="main">
  <div class="inner">
    <article>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>
      <h1>H1 Headline</h1>
      <p>Etiam dapibus ultrices lacus nec posuere. Praesent blandit velit dolor, eu viverra nibh pulvinar ut. Nulla convallis nibh at varius sollicitudin. Phasellus porttitor mollis risus et porta. Phasellus mauris sem, porttitor quis risus quis, fringilla gravida justo. Praesent magna quam, elementum eu rhoncus ac, vestibulum ut nulla. Duis sit amet mattis felis. Maecenas laoreet dictum sapien commodo imperdiet. Donec mattis mi nisi, euismod vulputate magna vulputate quis. Integer semper interdum feugiat. Fusce quis aliquam turpis. Nullam luctus tortor non turpis tincidunt, eu faucibus orci laoreet. Donec rutrum mi leo, quis condimentum lacus sodales et.</p>
      <h2>H2 Headline</h2>
      <p>Duis ac leo id quam ornare tincidunt vestibulum quis purus. Vivamus eleifend est lacus, ac auctor nunc feugiat mollis. Integer eget tempor risus, id rutrum mauris. Suspendisse potenti. Nullam nec tristique orci, at lobortis arcu. Sed id blandit enim, vitae luctus velit. Cras blandit magna a justo feugiat condimentum.</p>
      <h3>H3 Headline</h3>
      <p>Nullam quam leo, blandit vel venenatis ac, lobortis quis enim. Donec id tristique ligula. Nam ut gravida elit. Nunc viverra metus et venenatis mollis. In eu nunc et diam iaculis volutpat ut at ligula. Morbi vulputate justo commodo diam convallis blandit. Curabitur lacinia suscipit turpis nec aliquam. Donec iaculis nunc vitae enim auctor, id viverra sapien fringilla.</p>
      <p class="tags"><strong>Tags:</strong> <a href="javascript:void(0)">Tag</a>,  <a href="javascript:void(0)">Tag</a>,  <a href="javascript:void(0)">Tag</a>
    </article>
    <aside>
      <h4>Share this article</h4>
      <ul class="share-links">
        <li><a href="javascript:void(0)">Share on Facebook</a></li>
        <li><a href="javascript:void(0)">Share on Pinterest</a></li>
        <li><a href="javascript:void(0)">Share on Twitter</a></li>
        <li><a href="javascript:void(0)">E-Mail this Page</a></li>
      </ul>
      <h4>Related Topics</h4>
      <ul class="related-topics">
        <li>
          <a href="topic.php">
            <h4>Topic Title</h4>
            <p>Short description of the article. Duis ac leo id quam ornare tincidunt vestibulum quis purus. Vivamus eleifend est lacus, ac auctor nunc feugiat mollis.</p>
            <p><i><img src="assets/img/graphics/bubble-dark.png" /></i> 36</p>
          </a>
        </li>
        <li>
          <a href="topic.php">
            <h4>Topic Title</h4>
            <p>Short description of the article. Duis ac leo id quam ornare tincidunt vestibulum quis purus. Vivamus eleifend est lacus, ac auctor nunc feugiat mollis.</p>
            <p><i><img src="assets/img/graphics/bubble-dark.png" /></i> 36</p>
          </a>
        </li>
        <li>
          <a href="topic.php">
            <h4>Topic Title</h4>
            <p>Short description of the article. Duis ac leo id quam ornare tincidunt vestibulum quis purus. Vivamus eleifend est lacus, ac auctor nunc feugiat mollis.</p>
            <p><i><img src="assets/img/graphics/bubble-dark.png" /></i> 36</p>
          </a>
        </li>
      </ul>
    </aside>
    <div class="discussion">
      <h1>Discussion</h1>
      
      <div id="disqus_thread"></div>
      <script type="text/javascript">
        var disqus_shortname = 'filmprism';
        (function() {
          var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
          dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
          (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
        })();
      </script>
      <noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
      <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
      
    </div>
  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>