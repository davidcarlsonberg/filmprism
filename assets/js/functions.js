var Site = window.Site || {};
(function($) {
  $(function() {
		
    // NAV TOGGLE
    
    $('header .nav-toggle').click(function(){
      $('header').toggleClass('open');
      $('header nav').slideToggle();
    });
    
    // STICKY HEADER
		$(function() {
		  function fixedHeader() {
  		  var siteHeader = $('.site-header');
  		  
  	    if ($(window).scrollTop() >= 140) {$(siteHeader).addClass('smallheader');}
  		  else {$(siteHeader).removeClass('smallheader');}
  		  
  	    if ($(window).scrollTop() >= 145) {$(siteHeader).addClass('transition');}
  		  else {$(siteHeader).removeClass('transition');}
  		  
  	    if ($(window).scrollTop() >= 180) {$(siteHeader).addClass('fixedheader');}
  		  else {$(siteHeader).removeClass('fixedheader');}
  		  
		  }
		  $(window).scroll(fixedHeader);
		});
    
    // MAILING LIST TOGGLE
    
    if ($(window).width() >= 720){
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
    }
    
    // SUMMARY TOGGLE
    
    $('.summary-toggle a').click(function(){
      var articleText = $(this).parents('h5').siblings('.summary');
      $(articleText).toggleClass('open');
      $(this).toggleText('Show Full Summary', 'Hide Summary');
    });

  });
})(jQuery);