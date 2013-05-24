(function($) {

	$.fn.srnprtip = function(options) {
		var defaults = {
			target : '',
			timer : 10,
			show : false
		};
		var s = $.extend({}, defaults, options || {});

		if (s.show) {
			$(s.target).show();
			return;
		}

		var oTimer = null;
		$(this).hover(function() {

			$(s.target).slideDown(400);
			clearTimeout(oTimer);
			oFunc.flag = false;
		}, function() {
			oFunc.flag = true;
			oFunc.close();
		});

		$(s.target).hover(function() {
			clearTimeout(oTimer);
			oFunc.flag = false;
		}, function() {
			oFunc.flag = true;
			oFunc.close();
		});

		var oFunc = {
			flag : false,
			close : function() {

				oTimer = setTimeout(function() {
					oFunc.hide()
				}, s.timer);
			},
			hide : function() {

				// $(s.target).hide();
				$(s.target).slideUp(400);

			}
		};

	}
})(jQuery);