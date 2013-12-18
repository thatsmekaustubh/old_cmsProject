$('.tooltipLink').tooltip({
	placement: 'top',
	trigger: 'click'
});

$('.navbar a, .subnav a, .home-box').smoothScroll();

$('#myCarousel').carousel({
	interval: 10000
});

$('#phoneCarousel').carousel({
	interval: 10000
});

$('#publishCarousel').carousel({
	interval: 10000
});

$('.table').tooltip({
	selector: "a[data-toggle=tooltip]"
});

$('#community').change( function() {
    $.myUrl = $(this).val();
    $('#download').attr('href',$.myUrl);
    $('#download').attr('class','btn btn-info');
});

$('select.jump_list').change(function() {
	window.location = "/reports/forms.dot?year=" + $(this).val();
});

var initPieChart = function() {
    $('.percentage').easyPieChart({
        animate: 1000,
        onStep: function(value) {
            this.$el.find('span').text(~~value);
        }
    });
    $('.percentage-light').easyPieChart({
        barColor: function(percent) {
            return "rgb(118,189,95)";
        },
        trackColor: '#f5f5f5',
        scaleColor: false,
        size: 250,
        lineCap: 'butt',
        rotate: -180,
        lineWidth: 40,
        animate: 1000,
        delay: 1000,
        onStep: function(value) {
            this.$el.find('span').text(~~value);
        }
    });
};

(function ($) {
	
	/* Scroll to Top */
	$(function () { 
		var scroll_timer;
		var displayed = false;
		var $message = $('a.backtop');
		var $window = $(window);
		var top = $(document.body).children(0).position().top;

		$window.scroll(function () {
			window.clearTimeout(scroll_timer);
			scroll_timer = window.setTimeout(function () { // use a timer for performance
				if($window.scrollTop() <= top) // hide if at the top of the page
					{
						displayed = false;
						$message.fadeOut(500);
					}
				else if(displayed == false) // show if scrolling down
					{
						displayed = true;
						$message.stop(true, true).fadeIn(500).click(function () {
							$('html, body').animate({scrollTop:0}, 300);
							return false;
						});
					}
			}, 10);
		});
	});
	
	initPieChart();

})(window.jQuery);