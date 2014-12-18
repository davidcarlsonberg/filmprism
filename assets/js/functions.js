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
    
    // SUMMARY TOGGLE
    
    $('.summary-toggle a').click(function(){
      var articleText = $(this).parents('h5').siblings('.summary');
      $(articleText).toggleClass('open');
      $(this).toggleText('Show Full Summary', 'Hide Summary');
    });

  });
})(jQuery);