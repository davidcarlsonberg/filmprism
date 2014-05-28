<?php
  $pageTitle = 'Film Title | Film Prism';
  $bodyId = 'film';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="main">
  <div class="inner">
    <h1 class="title">Film Title</h1>
    <aside class="film-details">
      <figure>
        <img src="http://placehold.it/210x270.jpg" />
      </figure>
      <ul>
        <li><strong>Released:</strong> May 28, 2014</li>
        <li><strong>Director:</strong> Direcotr's Name</li>
        <li><strong>Writer:</strong> Writer's Name</li>
      </ul>
    </aside>
    <article>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae purus ut magna semper dictum tincidunt sit amet lectus. Vestibulum ac odio nunc. Vivamus ut arcu nec dolor porttitor tincidunt eu nec massa. Vestibulum erat nulla, sagittis non auctor in, dictum nec orci. Phasellus at facilisis nisi, id tincidunt enim. Aliquam vel felis feugiat, mollis orci tristique, hendrerit justo. Morbi mi dui, fringilla a ante eget, sollicitudin cursus nibh. Sed ut felis turpis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer volutpat tempus porttitor. Nulla ut ligula condimentum, fermentum neque vel, accumsan sapien. Nulla facilisi. Morbi bibendum id elit id vulputate. Nulla a commodo ante, et porttitor arcu. Vivamus suscipit nibh lectus, et commodo dui vehicula ac.</p>
      <p class="tags"><strong>Tags:</strong> <a href="javascript:void(0)">Tag</a>,  <a href="javascript:void(0)">Tag</a>,  <a href="javascript:void(0)">Tag</a>
    </article>
    <aside>
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