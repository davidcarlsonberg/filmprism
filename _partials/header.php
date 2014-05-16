<div class="wrapper">
  <header>
    <form class="site-search">
      <input type="text" />
      <input type="submit" value="Search" />
    </form>
    <nav>
      <ol class="user-navigaiton">
        <li class="create-account"><a href="create-account.php">Create Account</a></li>
        <li class="login"><a href="login.php">Login</a></li>
      </ol>
      <ol class="site-navigation">
        <li class="films"><a href="<?php echo $siteUrl; ?>films.php">Films</a></li>
        <li class="topics"><a href="<?php echo $siteUrl; ?>topics.php">Topics</a></li>
        <li class="about"><a href="<?php echo $siteUrl; ?>about.php">About</a></li>
    </nav>
    <a class="nav-toggle" href="javascript:void(0)">Navigation</a>
    <h1><a href="<?php echo $siteUrl; ?>">Film Prism</a></h1>
  </header>