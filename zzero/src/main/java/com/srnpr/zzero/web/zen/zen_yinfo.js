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
			
		},
		pagination : function() {
			$(".pagination").each(

			function(n, el) {
				zen.yinfo.navel(el);

			}

			);

		},

		navel : function(el) {

			var iSize = parseInt($(el).attr("zen_page_pagination_size"));
			var iIndex = parseInt($(el).attr(
					"zen_page_pagination_index"));
			var iCount = parseInt($(el).attr(
					"zen_page_pagination_count"));

			var iMaxPage = Math.ceil(iCount / iSize);
			var eUL = $(el).children('ul');
			if (eUL.children().length > 0)
				return;

			var aArr = [ iIndex, iCount, iSize ];
			aArr[0] = 1;

			var aHtml = [];

			aHtml.push('<li '
					+ (iIndex == 1 ? ('class="disabled"><a ')
							: '><a href="'
									+ zen.yinfo.urlreplace(4, aArr
											.join('_')) + '" ')
					+ ' >«</a></li>');

			var aNav = [];
			var iNavSize = 5;

			aNav.push(iIndex);

			for ( var i = 1; i <= iNavSize; i++) {
				if (aNav.length < iNavSize) {
					if (iIndex - i > 0) {
						aNav.splice(0, 0, iIndex - i);
					}
					if (iIndex + i <= iMaxPage) {
						aNav.push(iIndex + i);
					}
				}

			}

			for ( var i = 0, j = aNav.length; i < j; i++) {
				aArr[0] = aNav[i];
				aHtml.push('<li '
						+ (aNav[i] == iIndex ? 'class="active"' : '')
						+ ' ><a href="'
						+ zen.yinfo.urlreplace(4, aArr.join('_')) + '">'
						+ aNav[i] + '</a></li>');
			}

			aArr[0] = iMaxPage;

			aHtml.push('<li '
					+ (iIndex == iMaxPage ? ('class="disabled"><a')
							: '><a <a href="'
									+ zen.yinfo.urlreplace(4, aArr
											.join('_')) + '" ')
					+ ' >»</a></li>');

			$(eUL).append(aHtml.join(''));

		},

		urlreplace : function(iIndex, sTo) {
			var sShareUrl = location.href;
			var iQuery = sShareUrl.indexOf('?');
			var sQuery = "";
			if (iQuery > -1) {
				sQuery = sShareUrl.substring(iQuery);
				sShareUrl = sShareUrl.substring(0, iQuery);
			}
			var iLeft = sShareUrl.lastIndexOf('/');
			var sPageUrl = sShareUrl.substring(iLeft);
			sShareUrl = sShareUrl.substring(0, iLeft);

			var aUrls = sPageUrl.split('-');

			for ( var i = aUrls.length; i <= iIndex; i++) {
				aUrls.push('');
			}

			aUrls[iIndex] = sTo;
			return sShareUrl + aUrls.join('-') + sQuery;

		}
		
		
	}
});

$(window).ready(function() {
	zen.yinfo.init();
}
);