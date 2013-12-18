$('#toc').toc({
    'selectors': '.anchor', //elements to use as headings
    'container': 'body', //element to find all selectors in
    'smoothScrolling': true, //enable or disable smooth scrolling on click
    'prefix': 'anchor', //prefix for anchor tags and class names
    'onHighlight': function(el) {}, //called when a new section is highlighted 
    'highlightOnScroll': true, //add class to heading that is currently in focus
    'highlightOffset': 100, //offset to trigger the next headline
    'anchorName': function(i, heading, prefix) { //custom function for anchor name
        return prefix+i;
    },
    'headerText': function(i, heading, $heading) { //custom function building the header-item text
        return $heading.text();
    },
	'itemClass': function(i, heading, $heading, prefix) { // custom function for item class
  		return $heading[0].tagName.toLowerCase();
	}
});


(function ($) {

	$(function(){

		// fix sub nav on long scroll page
		var $win = $(window),
				$nav = $('.subnav'),
				$subLink = $('#toc li:first-child'),
				subnavTop = ($('div.subnav').position().top*1 - 68),
				isFixed = 0;

		processScroll();

		$win.on('scroll', processScroll);


		function processScroll() {
			var i, scrollTop = $win.scrollTop();
			if (scrollTop >= subnavTop && !isFixed) {
				isFixed = 1;
				$nav.addClass('subnav-fixed');
				$subLink.addClass('active');
			} else if (scrollTop <= subnavTop && isFixed) {
				isFixed = 0;
				$nav.removeClass('subnav-fixed');
				$subLink.removeClass('active');
			}
		}

	});
})(window.jQuery);	