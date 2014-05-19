<div class="wrapper">

<header>
  <form class="site-search">
    <input type="text" placeholder="Search" />
  </form>
  <nav class="user-navigation">
    <p><a href="create-account.php">Create Account</a> / <a href="login.php">Login</a></p>
  </nav>
  <h1><a href="<?php echo $siteUrl; ?>">Film Prism</a></h1>
  <nav class="site-navigation">
    <ol>
      <li class="films"><a href="<?php echo $siteUrl; ?>films.php">Films</a></li>
      <li class="topics"><a href="<?php echo $siteUrl; ?>topics.php">Topics</a></li>
      <li class="about"><a href="<?php echo $siteUrl; ?>about.php">About</a></li>
    </ol>
    <div class="select-box">
      <select>
        <option>Navigation</option>
        <option value="films.php">Films</option>
        <option value="films.php">Topics</option>
        <option value="films.php">About</option>
      </select>
      <p>Navigation</p>
    </div>
  </nav>
</header>