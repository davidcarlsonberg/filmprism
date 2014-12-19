<header class="site-header">
  <div class="header-top">
    <div class="inner">
      <h1><a href="index.php">ScreenPrism</a></h1>
      <nav>
        <?php include '_partials/nav.php'; ?>
        <div class="mailing-list">
          <a href="#mailing-list">Mailing List</a>
          <div class="form-wrapper">
            <form>
              <input type="text" placeholder="E-Mail Address">
              <input type="submit" value="Sign-Up">
            </form>
          </div>
        </div>
        <ol class="social-links">
          <li><a href="#"><svg viewBox="0 0 20 20" class="icon facebook-icon"><use xlink:href="#facebook-icon"></use></svg></a></li>
          <li><a href="#"><svg viewBox="0 0 20 20" class="icon twitter-icon"><use xlink:href="#twitter-icon"></use></svg></a></li>
        </ol>
      </nav>
      <a href="#" class="nav-toggle">Navigation</a>
    </div>
  </div>
  <div class="search-bar">
    <form>
      <input type="text" placeholder="Search by film title, genre, director&hellip;" />
      <button><span>Search</span><svg viewBox="0 0 20 20" class="icon search-icon"><use xlink:href="#search-icon"></use></svg></button>
    </form>
  </div>
</header>