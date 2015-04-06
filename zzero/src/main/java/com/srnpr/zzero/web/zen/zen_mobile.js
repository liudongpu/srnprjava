zen
		.e({

			mobile : {
				temp : {
					// 当前页吗
					page_index : 0,

					flag_process : 0,
					refresh_func:null

				},
				menu_open : function() {

					$('#mobile_head_menu').toggle();

				},

				page_mnews : function() {

					//zen.mobile.temp.refresh_func=zen.mobile.news_refresh;
					zen.mobile.refresh_page(function() {
						zen.mobile.news_refresh();
					});

					zen.mobile.news_refresh();

				},

				refresh_page : function(f) {
					myScroll = new IScroll('#mobile_base_scroll_wrap', {
						probeType : 3,
						mouseWheel : true
					});

					function updatePosition() {

						var iScreenHeight = parseInt(document
								.getElementById('mobile_base_scroll_wrap').clientHeight);
						var iMaxHeight = parseInt(document
								.getElementById('mobile_base_scroll_box').offsetHeight);

						console.log((iMaxHeight - iScreenHeight)+','+this.y);
						if (iMaxHeight - iScreenHeight + this.y < 20) {
							// alert('end');

							// myScroll.refresh();
							if (zen.mobile.temp.flag_process == 0) {
								zen.mobile.temp.flag_process = 1;
								// zen.mobile.news_refresh();
								//console.log((zen.mobile.temp.refresh_func);
								f();
							}
						}

					}

					myScroll.on('scrollEnd', updatePosition);

					document.addEventListener('touchmove', function(e) {
						e.preventDefault();
					}, false);

				},

				news_refresh : function() {
					zen.site.post('news_show', {
						page_index : zen.mobile.temp.page_index
					}, zen.mobile.news_success);
				},
				news_success : function(oResult) {

					zen.mobile.temp.flag_process = 0;

					zen.mobile.temp.page_index = zen.mobile.temp.page_index + 1;

					var aHtml = [];

					for ( var i in oResult.result) {
						var oe = oResult.result[i];

						aHtml
								.push('<div class="mobile_mnews_item mobile_w_border_t"><div class="mobile_mnews_bg"><div class="mobile_mnews_box"><div class="mobile_w_h20"></div>');

						aHtml.push('<div class="mobile_mnews_title">'
								+ oe["title"]
								+ '</div><div class="mobile_w_h20"></div>');

						aHtml
								.push('<div class="<div class="mobile_mnews_tips">发表时间：'
										+ oe["create_time"]
										+ '&nbsp;&nbsp;|&nbsp;&nbsp;文章出处：博观拍卖</div><div class="mobile_w_h20"></div>');

						if (oe["file_url"]) {
							aHtml.push('<div><img src="'
									+ zen.site.config.img_url + oe["file_url"]
									+ '" /></div>');

						}

						aHtml.push('<div class="mobile_w_h20"></div>');
						aHtml.push('<div class="mobile_mnews_info">'
								+ oe["note"] + '</div>');
						aHtml
								.push('<div class="mobile_w_h30"></div></div></div><div class="mobile_w_h20 mobile_w_border_t"></div></div>');
						aHtml.push('');

					}

					$('#mobile_mnews_list').append(aHtml.join(''));

					myScroll.refresh();

				}

			}
		});

$(window).ready(function() {
	// zen.site.init();
}

);
