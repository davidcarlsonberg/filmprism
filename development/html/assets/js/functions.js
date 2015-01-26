var resizeSmoothScroll = function() {
  if ($(window).width() >= 900){ $('.inner-nav a, .by-line a').smoothScroll({offset: -60}); }
  else { $('.faq-list a').smoothScroll(); }
};

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
    
    // CHOSEN
    
    $(".chosen-select").chosen();
    $(".chosen-select").chosen().change(function(){
			var tagLink = $(this).find(":selected").attr("value");
			window.location.assign(tagLink);
			return false;
		});
    
    // SMOOTH-SCROLL

    resizeSmoothScroll();
    
    // STICKY SIDEBAR
    
		$(function() {
  	  var stickyAside = $('.single aside .aside-content');
  	  var stickyWidth = $(stickyAside).width();
  	  var stickyHeight = $(stickyAside).height();
  	  var stickyTop = $(stickyAside).offset().top;
  	  var imageHeight = $('.article-image').height();
  	  var asideBottom = $('.discussion').offset().top;
  	  var asideHeight = asideBottom - imageHeight - 240;
  	  var stickyBottom = asideBottom - stickyHeight - 120;
		  function stickySidebar() {
  	    if ($(window).scrollTop() >= stickyTop - 90) {$(stickyAside).addClass('sticky');}
  		  else {$(stickyAside).removeClass('sticky');}
  	    if ($(window).scrollTop() >= stickyBottom) {$(stickyAside).addClass('bottom');}
  		  else {$(stickyAside).removeClass('bottom');}
		  }
      $(window).scroll(stickySidebar);
  	  if ($(window).width() >= 900){
  		  $(stickyAside).width(stickyWidth);
  		  $('.single aside').height(asideHeight);
  		}
		});
    
  });
})(jQuery);