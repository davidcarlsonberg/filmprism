/*******************************************************************************
 JQUERY HELPER PLUGINS
*******************************************************************************/

;(function(window, document, $) {

	var isInputSupported = 'placeholder' in document.createElement('input'),
	    isTextareaSupported = 'placeholder' in document.createElement('textarea'),
	    prototype = $.fn,
	    valHooks = $.valHooks,
	    hooks,
	    placeholder;

	if (isInputSupported && isTextareaSupported) {

		placeholder = prototype.placeholder = function() {
			return this;
		};

		placeholder.input = placeholder.textarea = true;

	} else {

		placeholder = prototype.placeholder = function() {
			var $this = this;
			$this
				.filter((isInputSupported ? 'textarea' : ':input') + '[placeholder]')
				.not('.placeholder')
				.bind({
					'focus.placeholder': clearPlaceholder,
					'blur.placeholder': setPlaceholder
				})
				.data('placeholder-enabled', true)
				.trigger('blur.placeholder');
			return $this;
		};

		placeholder.input = isInputSupported;
		placeholder.textarea = isTextareaSupported;

		hooks = {
			'get': function(element) {
				var $element = $(element);
				return $element.data('placeholder-enabled') && $element.hasClass('placeholder') ? '' : element.value;
			},
			'set': function(element, value) {
				var $element = $(element);
				if (!$element.data('placeholder-enabled')) {
					return element.value = value;
				}
				if (value == '') {
					element.value = value;
					// Issue #56: Setting the placeholder causes problems if the element continues to have focus.
					if (element != document.activeElement) {
						// We can't use `triggerHandler` here because of dummy text/password inputs :(
						setPlaceholder.call(element);
					}
				} else if ($element.hasClass('placeholder')) {
					clearPlaceholder.call(element, true, value) || (element.value = value);
				} else {
					element.value = value;
				}
				// `set` can not return `undefined`; see http://jsapi.info/jquery/1.7.1/val#L2363
				return $element;
			}
		};

		isInputSupported || (valHooks.input = hooks);
		isTextareaSupported || (valHooks.textarea = hooks);

		$(function() {
			// Look for forms
			$(document).delegate('form', 'submit.placeholder', function() {
				// Clear the placeholder values so they don't get submitted
				var $inputs = $('.placeholder', this).each(clearPlaceholder);
				setTimeout(function() {
					$inputs.each(setPlaceholder);
				}, 10);
			});
		});

		// Clear placeholder values upon page reload
		$(window).bind('beforeunload.placeholder', function() {
			$('.placeholder').each(function() {
				this.value = '';
			});
		});

	}

	function args(elem) {
		// Return an object of element attributes
		var newAttrs = {},
		    rinlinejQuery = /^jQuery\d+$/;
		$.each(elem.attributes, function(i, attr) {
			if (attr.specified && !rinlinejQuery.test(attr.name)) {
				newAttrs[attr.name] = attr.value;
			}
		});
		return newAttrs;
	}

	function clearPlaceholder(event, value) {
		var input = this,
		    $input = $(input);
		if (input.value == $input.attr('placeholder') && $input.hasClass('placeholder')) {
			if ($input.data('placeholder-password')) {
				$input = $input.hide().next().show().attr('id', $input.removeAttr('id').data('placeholder-id'));
				// If `clearPlaceholder` was called from `$.valHooks.input.set`
				if (event === true) {
					return $input[0].value = value;
				}
				$input.focus();
			} else {
				input.value = '';
				$input.removeClass('placeholder');
				input == document.activeElement && input.select();
			}
		}
	}

	function setPlaceholder() {
		var $replacement,
		    input = this,
		    $input = $(input),
		    $origInput = $input,
		    id = this.id;
		if (input.value == '') {
			if (input.type == 'password') {
				if (!$input.data('placeholder-textinput')) {
					try {
						$replacement = $input.clone().attr({ 'type': 'text' });
					} catch(e) {
						$replacement = $('<input>').attr($.extend(args(this), { 'type': 'text' }));
					}
					$replacement
						.removeAttr('name')
						.data({
							'placeholder-password': true,
							'placeholder-id': id
						})
						.bind('focus.placeholder', clearPlaceholder);
					$input
						.data({
							'placeholder-textinput': $replacement,
							'placeholder-id': id
						})
						.before($replacement);
				}
				$input = $input.removeAttr('id').hide().prev().attr('id', id).show();
				// Note: `$input[0] != input` now!
			}
			$input.addClass('placeholder');
			$input[0].value = $input.attr('placeholder');
		} else {
			$input.removeClass('placeholder');
		}
	}

}(this, document, jQuery));

/*! SVG fallback to PNG in IE8, call function with svg container selector as argument */
var svgReplace = function(selector){
  var images = $(selector).find('img[src$=".svg"]');
  $(images).each(function(){
    var newSrc = $(this).attr('src').replace('.svg','.png')
    $(this).attr('src',newSrc);
  });
};

/*******************************************************************************

 ANYSTRETCH

 jQuery Anystretch
 Version 1.2 (@jbrooksuk / me.itslimetime.com)
 https://github.com/jbrooksuk/jquery-anystretch
 Based on Dan Millar's Port
 https://github.com/danmillar/jquery-anystretch

 Add a dynamically-resized background image to the body
 of a page or any other block level element within it

 Copyright (c) 2012 Dan Millar (@danmillar / decode.uk.com)
 Dual licensed under the MIT and GPL licenses.
 
 This is a fork of jQuery Backstretch (v1.2)
 Copyright (c) 2011 Scott Robbin (srobbin.com)

*******************************************************************************/

;(function($) {
    
    $.fn.anystretch = function(src, options, callback) {
        var isBody = this.selector.length ? false : true; // Decide whether anystretch is being called on an element or not

        return this.each(function(i){
            var defaultSettings = {
                positionX: 'center',     // Should we center the image on the X axis?
                positionY: 'center',     // Should we center the image on the Y axis?
                speed: 0,                // fadeIn speed for background after image loads (e.g. "fast" or 500)
                elPosition: 'relative',  // position of containing element when not being added to the body
                dataName: 'stretch'      // The data-* name used to search for
            },
            el = $(this),
            container = isBody ? $('.anystretch') : el.children(".anystretch"),
            settings = container.data("settings") || defaultSettings, // If this has been called once before, use the old settings as the default
            existingSettings = container.data('settings'),
            imgRatio, bgImg, bgWidth, bgHeight, bgOffset, bgCSS;

            // Extend the settings with those the user has provided
            if(options && typeof options == "object") $.extend(settings, options);
            
            // Just in case the user passed in a function without options
            if(options && typeof options == "function") callback = options;
        
            // Initialize
            $(document).ready(_init);
      
            // For chaining
            return this;
        
            function _init() {
                // Prepend image, wrapped in a DIV, with some positioning and zIndex voodoo
                if(src || el.length >= 1) {
                    var img;
                    
                    if(!isBody) {
                        // If not being added to the body set position to elPosition (default: relative) to keep anystretch contained
                        el.css({position: settings.elPosition, background: "none"});
                    }
                    
                    // If this is the first time that anystretch is being called
                    if(container.length == 0) {
                        container = $("<div />").attr("class", "anystretch")
                                                .css({left: 0, top: 0, position: (isBody ? "fixed" : "absolute"), overflow: "hidden", zIndex: (isBody ? -999999 : -999998), margin: 0, padding: 0, height: "100%", width: "100%"});
                    } else {
                        // Prepare to delete any old images
                        container.find("img").addClass("deleteable");
                    }
    
                    img = $("<img />").css({position: "absolute", display: "none", margin: 0, padding: 0, border: "none", zIndex: -999999})
                                      .bind("load", function(e) {                                          
                                          var self = $(this),
                                              imgWidth, imgHeight;
        
                                          self.css({width: "auto", height: "auto"});
                                          imgWidth = this.width || $(e.target).width();
                                          imgHeight = this.height || $(e.target).height();
                                          imgRatio = imgWidth / imgHeight;
    
                                          _adjustBG(function() {
                                              self.fadeIn(settings.speed, function(){
                                                  // Remove the old images, if necessary.
                                                  container.find('.deleteable').remove();
                                                  // Callback
                                                  if(typeof callback == "function") callback();
                                              });
                                          });
                                          
                                      })
                                      .appendTo(container);
                     
                    // Append the container to the body, if it's not already there
                    if(el.children(".anystretch").length == 0) {
                        if(isBody) {
                            $('body').append(container);
                        } else {
                            el.append(container);
                        }
                    }
                    
                    // Attach the settings
                    container.data("settings", settings);
                        
                    var imgSrc = "";
                    if(src) {
                        imgSrc = src;
                    }else if(el.data(settings.dataName)) {
                        imgSrc = el.data(settings.dataName);
                    }else{
                        return;
                    }
                    img.attr("src", imgSrc); // Hack for IE img onload event
                    
                    // Adjust the background size when the window is resized or orientation has changed (iOS)
                    $(window).resize(_adjustBG);
                }
            }
                
            function _adjustBG(fn) {
                try {
                    bgCSS = {left: 0, top: 0};
                    bgWidth = _width();
                    bgHeight = bgWidth / imgRatio;
    
                    // Make adjustments based on image ratio
                    // Note: Offset code provided by Peter Baker (http://ptrbkr.com/). Thanks, Peter!
                    if(bgHeight >= _height()) {
                        bgOffset = (bgHeight - _height()) /2;
                        if(settings.positionY == 'center' || settings.centeredY) { // 
                            $.extend(bgCSS, {top: "-" + bgOffset + "px"});
                        } else if(settings.positionY == 'bottom') {
                            $.extend(bgCSS, {top: "auto", bottom: "0px"});
                        }
                    } else {
                        bgHeight = _height();
                        bgWidth = bgHeight * imgRatio;
                        bgOffset = (bgWidth - _width()) / 2;
                        if(settings.positionX == 'center' || settings.centeredX) {
                            $.extend(bgCSS, {left: "-" + bgOffset + "px"});
                        } else if(settings.positionX == 'right') {
                            $.extend(bgCSS, {left: "auto", right: "0px"});
                        }
                    }
    
                    container.children("img:not(.deleteable)").width( bgWidth ).height( bgHeight )
                                                       .filter("img").css(bgCSS);
                } catch(err) {
                    // IE7 seems to trigger _adjustBG before the image is loaded.
                    // This try/catch block is a hack to let it fail gracefully.
                }
          
                // Executed the passed in function, if necessary
                if (typeof fn == "function") fn();
            }
            
            function _width() {
                return isBody ? el.width() : el.innerWidth();
            }
            
            function _height() {
                return isBody ? el.height() : el.innerHeight();
            }
            
        });
    };
    
    $.anystretch = function(src, options, callback) {
        var el = ("onorientationchange" in window) ? $(document) : $(window); // hack to acccount for iOS position:fixed shortcomings
        
        el.anystretch(src, options, callback);
    };
  
})(jQuery);



/********************************************************************************

 SMOOTH SCROLLING

 Smooth Scroll - v1.4.10 - 2013-03-02
 https://github.com/kswedberg/jquery-smooth-scroll
 Copyright (c) 2013 Karl Swedberg
 
********************************************************************************/

(function($) {
var version = '1.4.10',
    defaults = {
      exclude: [],
      excludeWithin:[],
      offset: 0,
      direction: 'top',
      scrollElement: null,
      scrollTarget: null,
      beforeScroll: function() {},
      afterScroll: function() {},
      easing: 'swing',
      speed: 400,
      autoCoefficent: 2
    },
    getScrollable = function(opts) {
      var scrollable = [],
          scrolled = false,
          dir = opts.dir && opts.dir == 'left' ? 'scrollLeft' : 'scrollTop';
      this.each(function() {
        if (this == document || this == window) { return; }
        var el = $(this);
        if ( el[dir]() > 0 ) {
          scrollable.push(this);
        } else {
          el[dir](1);
          scrolled = el[dir]() > 0;
          if ( scrolled ) {
            scrollable.push(this);
          }
          el[dir](0);
        }
      });
      if (!scrollable.length) {
        this.each(function(index) {
          if (this.nodeName === 'BODY') {
            scrollable = [this];
          }
        });
      }
      if ( opts.el === 'first' && scrollable.length > 1 ) {
        scrollable = [ scrollable[0] ];
      }
      return scrollable;
    },
    isTouch = 'ontouchend' in document;
$.fn.extend({
  scrollable: function(dir) {
    var scrl = getScrollable.call(this, {dir: dir});
    return this.pushStack(scrl);
  },
  firstScrollable: function(dir) {
    var scrl = getScrollable.call(this, {el: 'first', dir: dir});
    return this.pushStack(scrl);
  },
  smoothScroll: function(options) {
    options = options || {};
    var opts = $.extend({}, $.fn.smoothScroll.defaults, options),
        locationPath = $.smoothScroll.filterPath(location.pathname);
    this
    .unbind('click.smoothscroll')
    .bind('click.smoothscroll', function(event) {
      var link = this,
          $link = $(this),
          exclude = opts.exclude,
          excludeWithin = opts.excludeWithin,
          elCounter = 0, ewlCounter = 0,
          include = true,
          clickOpts = {},
          hostMatch = ((location.hostname === link.hostname) || !link.hostname),
          pathMatch = opts.scrollTarget || ( $.smoothScroll.filterPath(link.pathname) || locationPath ) === locationPath,
          thisHash = escapeSelector(link.hash);
      if ( !opts.scrollTarget && (!hostMatch || !pathMatch || !thisHash) ) {
        include = false;
      } else {
        while (include && elCounter < exclude.length) {
          if ($link.is(escapeSelector(exclude[elCounter++]))) {
            include = false;
          }
        }
        while ( include && ewlCounter < excludeWithin.length ) {
          if ($link.closest(excludeWithin[ewlCounter++]).length) {
            include = false;
          }
        }
      }
      if ( include ) {
        event.preventDefault();
        $.extend( clickOpts, opts, {
          scrollTarget: opts.scrollTarget || thisHash,
          link: link
        });
        $.smoothScroll( clickOpts );
      }
    });
    return this;
  }
});
$.smoothScroll = function(options, px) {
  var opts, $scroller, scrollTargetOffset, speed,
      scrollerOffset = 0,
      offPos = 'offset',
      scrollDir = 'scrollTop',
      aniProps = {},
      aniOpts = {},
      scrollprops = [];
  if (typeof options === 'number') {
    opts = $.fn.smoothScroll.defaults;
    scrollTargetOffset = options;
  } else {
    opts = $.extend({}, $.fn.smoothScroll.defaults, options || {});
    if (opts.scrollElement) {
      offPos = 'position';
      if (opts.scrollElement.css('position') == 'static') {
        opts.scrollElement.css('position', 'relative');
      }
    }
  }
  opts = $.extend({link: null}, opts);
  scrollDir = opts.direction == 'left' ? 'scrollLeft' : scrollDir;
  if ( opts.scrollElement ) {
    $scroller = opts.scrollElement;
    scrollerOffset = $scroller[scrollDir]();
  } else {
    $scroller = $('html, body').firstScrollable();
  }
  opts.beforeScroll.call($scroller, opts);
  scrollTargetOffset = (typeof options === 'number') ? options :
                        px ||
                        ( $(opts.scrollTarget)[offPos]() &&
                        $(opts.scrollTarget)[offPos]()[opts.direction] ) ||
                        0;
  aniProps[scrollDir] = scrollTargetOffset + scrollerOffset + opts.offset;
  speed = opts.speed;
  if (speed === 'auto') {
    speed = aniProps[scrollDir] || $scroller.scrollTop();
    speed = speed / opts.autoCoefficent;
  }
  aniOpts = {
    duration: speed,
    easing: opts.easing,
    complete: function() {
      opts.afterScroll.call(opts.link, opts);
    }
  };
  if (opts.step) {
    aniOpts.step = opts.step;
  }
  if ($scroller.length) {
    $scroller.stop().animate(aniProps, aniOpts);
  } else {
    opts.afterScroll.call(opts.link, opts);
  }
};
$.smoothScroll.version = version;
$.smoothScroll.filterPath = function(string) {
  return string
    .replace(/^\//,'')
    .replace(/(index|default).[a-zA-Z]{3,4}$/,'')
    .replace(/\/$/,'');
};
$.fn.smoothScroll.defaults = defaults;
function escapeSelector (str) {
  return str.replace(/(:|\.)/g,'\\$1');
}
})(jQuery);