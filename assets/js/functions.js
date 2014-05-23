var Site = window.Site || {};
(function($) {
  $(function() {
		
    // NAV TOGGLE
    
    $('.wrapper').click(function(){
      if ($('body').hasClass('open-nav')){
        $('body').removeClass('open-nav');
      }
    });
    
    $('header .nav-toggle').click(function(event){
      event.stopPropagation();
      $('body').toggleClass('open-nav');
    });

    // FLEXSLIDER

    $('.slideshow').flexslider({
      animation: "fade",
      prevText: "&#10094;",
      nextText: "&#10095;",
      start: function(slider){
      $('body').removeClass('loading');
      }
    });

  });
})(jQuery);