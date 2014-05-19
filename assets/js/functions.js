var Site = window.Site || {};
(function($) {
  $(function() {
  
    // NAV SELECT BOX
    
    $('nav select').change(function(){
			var navLink = $(this).find(':selected').attr('value');
			window.location.assign(navLink);
			return false;
    });
    
    // SELECT BOX
    
    $('.select-box select').change(function(){
      var navText = $(this).find(':selected').text();
      $(this).siblings('p').html(navText);
    });

  });
})(jQuery);