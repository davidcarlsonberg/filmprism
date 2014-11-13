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
        <h5><label>Username</label></h5>
        <input type="text" />
        <h5><label>Password</label></h5>
        <input type="password" />
        <input type="submit" value="Login" />
      </form>
    </div>
    <div class="sign-up">
      <h1>Create Your Account</h1>
      <form class="login-form">
        <h5><label>E-Mail Address</label></h5>
        <input type="text" />
        <h5><label>Create Password</label></h5>
        <input type="password" />
        <h5><label>Confirm Password</label></h5>
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