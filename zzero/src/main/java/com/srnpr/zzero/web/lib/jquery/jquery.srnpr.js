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






(function($) {

	$.fn.srnprscroll = function(options) {
		var defaults = {
			target : '',
			step : 100,
			show : false
		};
		var s = $.extend({}, defaults, options || {});
		var iNowIndex=0;
		var iEveryMove=4;
		var iMaxSize=$(this).find('img').size()-iEveryMove;
		var othis=$(this);
		
		$(this).find('.c_scroll').width(($(this).find('img').size())*s.step+'px');
		
		$(this).find('img').click(
				function()
		{
			$(s.target).attr('src',$(this).attr('src'));
		}
		);
		$(s.target).attr('src',$(this).find('img').eq(0).attr('src'));
		
		$(this).find('.c_prev').click(
				function()
				{
					if(iNowIndex>0)
						{
						
						iNowIndex=Math.max( iNowIndex-iEveryMove,0);
						$(this).parent().find('.c_scroll').animate({left:'-'+(iNowIndex*s.step)+'px'});
						}
				}
		);
		
		$(this).find('.c_next').click(
				function()
				{
					if(iNowIndex<iMaxSize)
						{
						
							iNowIndex=Math.min( iNowIndex+iEveryMove,iMaxSize-1);
							
							$(this).parent().find('.c_scroll').animate({left:'-'+(iNowIndex*s.step)+'px'});
							
						}
				}
		);
		
		

	}
})(jQuery);



















