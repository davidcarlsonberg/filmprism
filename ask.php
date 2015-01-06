<?php
  $pageTitle = 'Submit a Question | Film Prism';
  $bodyId = 'ask';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="main">
  <article class="submit-form">
    <div class="form-top">
      <header>
        <h1>Submit a Question</h1>
      </header>
      <p>Have a question about this film or want to start a discussion? Use the form below to submit a question and get the converstion started.</p>
    </div>
    <form>
      <textarea></textarea>
      <input type="submit" value="Submit" />
    </form>
  </article>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>