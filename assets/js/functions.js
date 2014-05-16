var resizeSmoothScroll = function() {
  if ($(window).width() > 800){
    $('.hero .button').smoothScroll({offset: -90});
  }
  else {
    $('.hero .button').smoothScroll({offset: -20});
  }
};

var Site = window.Site || {};
(function($) {
  $(function() {

    // NAV TOGGLE
    
    $('.nav-toggle').click(function(){
      $('header nav').slideToggle();
    });
    
    // SMOOTH SCROLL
    
    resizeSmoothScroll();
    
    // SELECT BOX
    
    $('.select-box select').change(function(){
      var locationValue = $(this).val();
      $('.select-box p').html(locationValue);
      if (locationValue == 'United States'){
        $('.phone-box .cap').html('+1');
      }
      if (locationValue == 'Canada'){
        $('.phone-box .cap').html('+1');
      }
      if (locationValue == 'Israel'){
        $('.phone-box .cap').html('+972');
      }
    });

  });
})(jQuery);