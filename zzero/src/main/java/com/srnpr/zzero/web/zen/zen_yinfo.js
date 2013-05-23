zen.e({
	yinfo : {
		init : function() {
			$('.b_corner').corner();
			
		}
	}
});

$(window).ready(function() {
	zen.yinfo.init();
}
);