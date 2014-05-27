<?php
  $pageTitle = 'Film Prism';
  $bodyId = 'topics';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="filters">
  <div class="inner">
    <h4>Filter by:</h4>
    <ol>
      <li>
        <select>
          <option> - Topic - </option>
          <option>Comedy</option>
          <option>Drama</option>
          <option>Romance</option>
        </select>
      </li>
      <li>
        <select>
          <option> - Genre - </option>
          <option>Comedy</option>
          <option>Drama</option>
          <option>Romance</option>
        </select>
      </li>
      <li>
        <select>
          <option> - Genre - </option>
          <option>Comedy</option>
          <option>Drama</option>
          <option>Romance</option>
        </select>
      </li>
    </ol>
  </div>
</section>

<section class="main">
  <div class="inner">
    <ol class="topic-list">
      <?php
        include '_partials/topic-card-2.php';
        include '_partials/topic-card-2.php';
        include '_partials/topic-card-2.php';
        include '_partials/topic-card-2.php';
        include '_partials/topic-card-2.php';
        include '_partials/topic-card-2.php';
        include '_partials/topic-card-2.php';
        include '_partials/topic-card-2.php';
        include '_partials/topic-card-2.php';
        include '_partials/topic-card-2.php';
        include '_partials/topic-card-2.php';
        include '_partials/topic-card-2.php';
      ?>
    </ol>
    <a href="topics.php" class="button">See More Topics</a>
  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>