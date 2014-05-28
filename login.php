<?php
  $pageTitle = 'Login | Film Prism';
  $bodyId = 'user';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="main">
  <div class="inner">
    <h1>Login</h1>
    <form class="login-form">
      <label>Username</label>
      <input type="text" />
      <label>Password</label>
      <input type="password" />
      <input type="submit" value="Login" />
    </form>
  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>