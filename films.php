<?php
  $pageTitle = 'Films | Film Prism';
  $bodyId = 'films';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="filters">
  <div class="inner">
    <h4>Filter by:</h4>
    <ol>
      <li>
        <select>
          <option> - Title - </option>
          <option>A to Z</option>
          <option>Z to A</option>
        </select>
      </li>
      <li>
        <select>
          <option> - Genre - </option>
          <option>Genre 1</option>
          <option>Genre 2</option>
          <option>Genre 3</option>
        </select>
      </li>
      <li>
        <select>
          <option> - Topic - </option>
          <option>Author 1</option>
          <option>Author 2</option>
          <option>Author 3</option>
        </select>
      </li>
      <li>
        <select>
          <option> - Year Released - </option>
          <option>2014</option>
          <option>2013</option>
          <option>2012</option>
        </select>
      </li>
    </ol>
  </div>
</section>

<section class="main">
  <div class="inner">
    <ol class="films-list">
      <?php
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
        include '_partials/film-card-2.php';
      ?>
    </ol>
    <a href="films.php" class="button">See More Films</a>
  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>