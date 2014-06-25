<?php
  $pageTitle = 'Login | Film Prism';
  $bodyId = 'user';
  include '_partials/head.php';
  include '_partials/header.php';
?>

<section class="main">
  <div class="inner">
    <div class="login">
      <h1>Login</h1>
      <form class="login-form">
        <label>Username</label>
        <input type="text" />
        <label>Password</label>
        <input type="password" />
        <input type="submit" value="Login" />
      </form>
    </div>
    <div class="sign-up">
      <h1>Create Your Account</h1>
      <form class="login-form">
        <label>E-Mail Address</label>
        <input type="text" />
        <label>Create Password</label>
        <input type="password" />
        <label>Confirm Password</label>
        <input type="password" />
        <input type="submit" value="Sign Up" />
      </form>
    </div>
  </div>
</section>

<?php
  include '_partials/footer.php';
  include '_partials/foot.php';
?>