</div>
<nav class="mobile-nav">
  <form class="search-bar">
    <input type="search" placeholder="Search" />
    <input type="submit" value="Submit" />
  </form>
  <?php include '_partials/nav.php'; ?>
</nav>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script>!window.jQuery && document.write(unescape('%3Cscript src="assets/js/jquery.js"%3E%3C/script%3E'))</script>
<script src="assets/js/scripts.foot.deploy.js"></script>

<!--[if (lt IE 9) & (!IEMobile)]>
<script src="assets/js/ie8.scripts.deploy.js"></script>
<![endif]-->

<!--[if (lt IE 8) & (!IEMobile)]>
<script src='assets/js/imgsizer.js'></script>
<script>
  addLoadEvent(function() {
    if (document.getElementById && document.getElementsByTagName) {
      var aImgs = document.getElementById("content").getElementsByTagName("img");
      imgSizer.collate(aImgs);
    }
  });
</script>
<![endif]-->

</body>
</html>