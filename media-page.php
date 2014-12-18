<?php
  $pageTitle = 'Film Title | Film Prism';
  $bodyId = 'media';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="main">
  <div class="content media-article">
    <header>
      <h1>The Hobbit: The Battle of the Five Armies</h1>
    </header>
    <aside class="details">
      <figure>
        <img src="assets/img/covers/hobbit-movie-poster-02.jpg" alt="The Hobbit">
      </figure>
      <ul>
        <li><strong>Released:</strong> <span>May 28, 2014</span></li>
        <li><strong>Directed By:</strong> <span>Peter Jackson</span></li>
        <li><strong>Written By:</strong> <span>Peter Jackson</span>, <span>Fran Walsh</span></li>
        <li><strong>Starring:</strong> <span>Martin Freeman</span>, <span>Ian McKellen</span>, <span>Richard Armitage</span>, <span>Aidan Turner</span>, <span>Orlando Bloom</span></li>
      </ul>
    </aside>
    <div class="article-body">
      <article>
        <h4 class="section-heading">Summary</h4>
          <div class="summary">
            <p><em>The Hobbit: The Battle of the Five Armies</em> brings to an epic conclusion the adventures of Bilbo Baggins, Thorin Oakenshield and the Company of Dwarves. Having reclaimed their homeland from the Dragon Smaug, the Company has unwittingly unleashed a deadly force into the world. Enraged, Smaug rains his fiery wrath down upon the defenseless men, women and children of Lake-town.</p>
            <p>Obsessed above all else with his reclaimed treasure, Thorin sacrifices friendship and honor to hoard it as Bilbo's frantic attempts to make him see reason drive the Hobbit towards a desperate and dangerous choice. But there are even greater dangers ahead. Unseen by any but the Wizard Gandalf, the great enemy Sauron has sent forth legions of Orcs in a stealth attack upon the Lonely Mountain.</p>
            <p>As darkness converges on their escalating conflict, the races of Dwarves, Elves and Men must decide unite or be destroyed. Bilbo finds himself fighting for his life and the lives of his friends in the epic Battle of the Five Armies, as the future of Middle-earth hangs in the balance.</p>
        </div>
        <h5 class="summary-toggle"><a href="javascript:void(0)">Show Full Summary</a></h5>
      </article>
      <div class="related-questions">
        <h2>Q &amp; A</h2>
        <ul>
          <?php
            include '_partials/related-qanda-card.php';
            include '_partials/related-qanda-card.php';
          ?>
        </ul>
      </div>
      <div class="related-articles">
        <h2>Articles</h2>
        <ul>
          <?php
            include '_partials/related-link-card.php';
            include '_partials/related-link-card.php';
            include '_partials/related-link-card.php';
            include '_partials/related-link-card.php';
          ?>
        </ul>
      </div>
      <div class="related-links">
        <h2>Around the Web</h2>
        <ul>
          <li>
            <a href="http://www.rogerebert.com/reviews/the-hobbit-the-battle-of-the-five-armies-2014">
              <h5>Sheila O'Malley's Review for Ebert Digital</h5>
              <p><strong>Source:</strong> rogerebert.com</p>
            </a>
          </li>
          <li>
            <a href="http://thedissolve.com/reviews/1275-the-hobbit-the-battle-of-the-five-armies/">
              <h5>Tasha Robinson's Review for The Dissolve</h5>
              <p><strong>Source:</strong> thedissolve.com</p>
            </a>
          </li>
          <li>
            <a href="http://www.rogerebert.com/reviews/the-hobbit-the-battle-of-the-five-armies-2014">
              <h5>Sheila O'Malley's Review for Ebert Digital</h5>
              <p><strong>Source:</strong> rogerebert.com</p>
            </a>
          </li>
          <li>
            <a href="http://thedissolve.com/reviews/1275-the-hobbit-the-battle-of-the-five-armies/">
              <h5>Tasha Robinson's Review for The Dissolve</h5>
              <p><strong>Source:</strong> thedissolve.com</p>
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
        <?php 
          include '_partials/film-card.php';
          include '_partials/film-card.php';
        ?>
      </ul>
    </aside>
  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>