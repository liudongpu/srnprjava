zen.e({
	yinfo : {
		init : function() {
			$('.b_corner').corner();
			
		},
		//参数bFlagShow 表示是否固定位置
		headernav:function(bFlagShow)
		{
			
			$('.yinfo_nav_box .c_tip').srnprtip({
				target : '.yinfo_nav_query'
			,show:bFlagShow

			});
			
			$('#yinfo_nav_box_address_other').srnprtip({
				target : '.yinfo_nav_address'

			});
			$('.yinfo_nav_address').hover(function() {
				$('#yinfo_nav_box_address_other').addClass('c_active')
			}, function() {
				$('#yinfo_nav_box_address_other').removeClass('c_active')
			});
			
		}
		
		
	}
});

$(window).ready(function() {
	zen.yinfo.init();
}
);