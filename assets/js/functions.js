var Site = window.Site || {};
(function($) {
  $(function() {
		
    // NAV TOGGLE
    
    $('header .nav-toggle').click(function(){
      $('header').toggleClass('open');
      $('header nav').slideToggle();
    });
    
    // MAILING LIST TOGGLE
    
    $('header .mailing-list a').click(function(){
      $('header .mailing-list .form-wrapper').toggleClass('open');
      return false;
    });
    $('body').click(function(){
      $('header .mailing-list .form-wrapper').removeClass('open');
    });
    $('header .mailing-list .form-wrapper').click(function(event){
      event.stopPropagation();
    });

  });
})(jQuery);