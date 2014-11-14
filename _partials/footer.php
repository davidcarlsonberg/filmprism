<footer class="site-footer">
  <div class="inner">
    <div class="site-map">
      <h1><a href="index.php">ScreenPrism</a></h1>
      <nav>
        <?php include '_partials/nav.php'; ?>
        <ol class="legal">
          <li><a href="#">Terms &amp; Conditions</a></li>
          <li><a href="#">Privacy Policy</a></li>
        </ol>
      </nav>
      <ol class="social">
        <li><a href="#"><svg viewBox="0 0 20 20" class="icon facebook-icon"><use xlink:href="#facebook-icon"></use></svg></a></li>
        <li><a href="#"><svg viewBox="0 0 20 20" class="icon twitter-icon"><use xlink:href="#twitter-icon"></use></svg></a></li>
      </ol>
    </div>
    <div class="mailing-list">
      <h3>Sign-up for our Mailing List</h3>
      <form>
        <input type="text" placeholder="E-Mail Address">
        <input type="submit" value="Sign-Up">
      </form>
    </div>
    <small class="copyright">&copy; <?php echo date('Y'); ?> Screen Prism, LLC</small>
  </div>
</footer>