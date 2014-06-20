var Site = window.Site || {};
(function($) {
  $(function() {
		
    // NAV TOGGLE
    
    $('header .nav-toggle').click(function(){
      $('header').toggleClass('open');
      $('header nav').slideToggle();
    });

  });
})(jQuery);