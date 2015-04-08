zen
		.e({

			mobile : {
				temp : {
					// 当前页吗
					page_index : 0,

					flag_process : 0,
					refresh_func : null,
					temp_uid : ''

				},
				menu_open : function() {

					$('#mobile_head_menu').toggle();

				},

				to_page : function(sUrl) {
					location.href = sUrl;
				},
				page_mauction : function() {

					var s = $(".mobile_mauction_box").find(
							".mobile_mauction_item");

					var iLength = s.length - 1;
					var sLastYear = '';

					$
							.each(
									s,
									function(i, obj) {

										// var sYear
										var sThisYear = $(obj).find(
												'.mobile_mauction_year').text()
												.substr(0, 4);
										var sLastYear = '';
										if (i < iLength) {
											sLastYear = $(s[i + 1]).find(
													'.mobile_mauction_year')
													.text().substr(0, 4);
										}
										console.log(sThisYear != sLastYear);
										if (sThisYear != sLastYear) {
											$(obj)
													.append(
															'<div class="mobile_mauction_split">'
																	+ sThisYear
																	+ '年&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;</div>');
											$(obj)
													.after(
															'<div class="mobile_mauction_line">'
																	+ (i == iLength ? '<div class="mobile_mauction_from"></div>'
																			: '')
																	+ '</div>');

										}

									});

				},

				

				refresh_page : function(f) {
					myScroll = new IScroll('#mobile_base_scroll_wrap', {
						// probeType : 3,
						mouseWheel : true,
						// preventDefault:false,
						preventDefaultException : {
							tagName : /^(INPUT|TEXTAREA|BUTTON|SELECT|A|DIV|IMG)$/
						}

					});

					function updatePosition() {

						var iScreenHeight = parseInt(document
								.getElementById('mobile_base_scroll_wrap').clientHeight);
						var iMaxHeight = parseInt(document
								.getElementById('mobile_base_scroll_box').offsetHeight);

						console
								.log((iMaxHeight - iScreenHeight) + ','
										+ this.y);
						if (iMaxHeight - iScreenHeight + this.y < 20) {
							// alert('end');

							// myScroll.refresh();
							if (zen.mobile.temp.flag_process == 0) {
								zen.mobile.temp.flag_process = 1;
								// zen.mobile.news_refresh();
								// console.log((zen.mobile.temp.refresh_func);
								f();
							}
						}

					}

					myScroll.on('scrollEnd', updatePosition);
					/*
					 * document.addEventListener('touchmove', function(e) {
					 * e.preventDefault(); }, false);
					 */

				},
				
				refresh_success:function(oResult)
				{
					zen.mobile.temp.flag_process = 0;

					zen.mobile.temp.page_index = zen.mobile.temp.page_index + 1;
				},
				
				
				page_mnews : function() {

					// zen.mobile.temp.refresh_func=zen.mobile.news_refresh;
					zen.mobile.refresh_page(function() {
						zen.mobile.news_refresh();
					});

					zen.mobile.news_refresh();

				},
				news_refresh : function() {
					zen.site.post('news_show', {
						page_index : zen.mobile.temp.page_index
					}, zen.mobile.news_success);
				},
				news_success : function(oResult) {

					zen.mobile.refresh_success(oResult);

					

					var aHtml = [];

					for ( var i in oResult.result) {
						var oe = oResult.result[i];

						aHtml
								.push('<div class="mobile_mnews_item mobile_w_border_t"><div class="mobile_mnews_bg"><div class="mobile_mnews_box"><div class="mobile_w_h20"></div>');

						aHtml.push('<a href="/newsinfo/mcontent-content-'
								+ oe["uid"]
								+ '"><div class="mobile_mnews_title" >'
								+ oe["title"]
								+ '</div><div class="mobile_w_h20"></div></a>');

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

				},

				
				page_mnotice : function() {

					// zen.mobile.temp.refresh_func=zen.mobile.news_refresh;
					zen.mobile.refresh_page(function() {
						zen.mobile.notice_refresh();
					});

					zen.mobile.notice_refresh();

				},
				
				notice_refresh : function() {
					zen.site.post('notice_show', {
						page_index : zen.mobile.temp.page_index
					}, zen.mobile.notice_success);
				},
				notice_success : function(oResult) {

					zen.mobile.refresh_success(oResult);

					var aHtml = [];

					for ( var i in oResult.result) {
						var oe = oResult.result[i];

						aHtml
								.push('<div class="mobile_mnews_item mobile_w_border_t"><div class="mobile_mnews_bg"><div class="mobile_mnews_box"><div class="mobile_w_h20"></div>');

						aHtml.push('<div class="mobile_mnews_title" >'
								+ oe["title"]
								+ '</div><div class="mobile_w_h20"></div>');

						aHtml
								.push('<div class="<div class="mobile_mnews_tips">发表时间：'
										+ oe["create_time"]
										+ '&nbsp;&nbsp;|&nbsp;&nbsp;文章出处：博观拍卖</div><div class="mobile_w_h20"></div>');

						

						aHtml.push('<div class="mobile_w_h20"></div>');
						aHtml.push('<div class="mobile_mnews_info">'
								+ oe["content"] + '</div>');
						aHtml
								.push('<div class="mobile_w_h30"></div></div></div><div class="mobile_w_h20 mobile_w_border_t"></div></div>');
						aHtml.push('');

					}

					$('#mobile_mnews_list').append(aHtml.join(''));

					myScroll.refresh();

				},
				
				page_mpic : function(sUid) {

					// zen.mobile.temp.refresh_func=zen.mobile.news_refresh;
					zen.mobile.temp.temp_uid = sUid;
					zen.mobile.refresh_page(function() {
						zen.mobile.pic_refresh();
					});

					zen.mobile.pic_refresh();

				},
				pic_refresh : function() {
					zen.site.post('pic_show', {
						page_index : zen.mobile.temp.page_index,
						pic_uid : zen.mobile.temp.temp_uid
					}, zen.mobile.pic_success);
				},
				pic_success : function(oResult) {

					zen.mobile.refresh_success(oResult);

					var aHtml = [];

					for ( var i in oResult.result) {
						var oe = oResult.result[i];

						aHtml
								.push('<div class="mobile_mpic_item">');
						aHtml.push('<a href="mgood-good-' + oe["uid"]
								+ '"><div class="mobile_mpic_in"><div class="mobile_mpic_img">');
						aHtml.push('<img src="' + zen.site.config.img_url
								+ oe["file_url"] + '" />');
						aHtml.push('</div>');
						aHtml.push('<div class="mobile_mpic_title">'
								+ oe["name"] + '</div>');
						aHtml.push('<div class="mobile_mpic_info">图录号：'
								+ oe["code"] + '</div>');
						aHtml.push('<div class="mobile_mpic_info">参考价：'
								+ oe["assess_price"] + '</div>');
						aHtml.push('<div class="mobile_mpic_info">成交价：￥'
								+ oe["success_price"] + '</div>');
						aHtml.push('</div></a></div>');

					}

					$('#mobile_mpic_list').append(aHtml.join(''));

					myScroll.refresh();

				},

				last : {}

			}
		});

$(window).ready(function() {
	// zen.site.init();
}

);
