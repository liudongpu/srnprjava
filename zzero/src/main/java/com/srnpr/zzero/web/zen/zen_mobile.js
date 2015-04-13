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
					myScroll = new IScroll(
							'#mobile_base_scroll_wrap',
							{
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

				refresh_success : function(oResult) {
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

						aHtml.push('<div class="mobile_mpic_item">');
						aHtml
								.push('<a href="mgood-good-'
										+ oe["uid"]
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
				page_musercollect : function(sUid) {

					// zen.mobile.temp.refresh_func=zen.mobile.news_refresh;
					
					zen.mobile.refresh_page(function() {
						zen.mobile.usercollect_refresh();
					});

					zen.mobile.usercollect_refresh();

				},
				usercollect_refresh : function() {
					zen.site.post('collect_all', {
						page_index : zen.mobile.temp.page_index
					}, zen.mobile.usercollect_success);
				},
				usercollect_success : function(oResult) {

					zen.mobile.refresh_success(oResult);

					var aHtml = [];

					for ( var i in oResult.result) {
						var oe = oResult.result[i];

						aHtml.push('<div class="mobile_mlogin_item mobile_w_border_b">');
						
						aHtml.push('<a href="m'
								+ oe["info_url"]
								+ '"><div class="mobile_mlogin_title">'+oe["info_title"]+'</div>');
						aHtml.push('<div class="mobile_mlogin_date">'+oe["collect_date"]+'</div>');
						aHtml.push('</a></div>');

					}

					$('#mobile_mlogin_list').append(aHtml.join(''));

					myScroll.refresh();

				},
				page_musercomment : function(sUid) {

					// zen.mobile.temp.refresh_func=zen.mobile.news_refresh;
					
					zen.mobile.refresh_page(function() {
						zen.mobile.usercomment_refresh();
					});

					zen.mobile.usercomment_refresh();

				},
				usercomment_refresh : function() {
					zen.site.post('comment_all', {
						page_index : zen.mobile.temp.page_index
					}, zen.mobile.usercomment_success);
				},
				usercomment_success : function(oResult) {

					zen.mobile.refresh_success(oResult);

					var aHtml = [];

					for ( var i in oResult.result) {
						var oe = oResult.result[i];

						
						
						aHtml.push('<div class="mobile_mlogin_comment_item mobile_w_border_b mobile_w_border_t"><div class="mobile_mlogin_comment_title mobile_w_border_b">•&nbsp;'+oe["info_title"]+'</div>');
						aHtml.push('<div class="mobile_mlogin_comment_info"><span class="mobile_mlogin_comment_icon"></span>'+oe["note"]+'</div>');
						
						aHtml.push('<div class="mobile_mlogin_comment_date">'+oe["comment_date"]+'</div>');
						aHtml.push('<div class="mobile_w_h20"></div></div><div class="mobile_w_h20"></div>');

					}

					$('#mobile_mlogin_list').append(aHtml.join(''));

					myScroll.refresh();

				},
				initlogin : function() {

					var sName = zen.f.cookie("bgpm_user_name");
					if (sName != null) {
						$('#mobile_mlogin_topname').html(

						sName);

						zen.site.temp.user_cookieid = zen.f
								.cookie("bgpm_user_cookieid");
					} else {
						zen.site.href('newsinfo/mlogin-login');
					}

				},
				loginreg : function() {

					zen.site.post('reg', {
						reg_name : $('#reg_name').val(),
						reg_pass : $('#reg_pass').val(),
						reg_phone : $('#reg_phone').val(),
					}, zen.mobile.reg_success);

				},
				reg_success : function(o) {

					zen.mobile.login_success(o);
					zen.site.model('提示消息', '注册成功！', function() {
						zen.site.href('newsinfo/musercenter-user');
					});
				},
				login_forget : function() {

					zen.site.post('forget', {
						login_name : $('#login_name').val()
					}, zen.mobile.forget_success);

				},
				forget_success : function(o) {

					zen.site.model('提示消息', '发送邮件成功，请到邮箱继续下一步操作！', function() {

					});
				},
				login_repass : function() {

					if ($('#login_pass').val() != $('#login_pass2').val()) {
						zen.site.model('错误消息', '密码与重复密码输入不一致！');
					} else {

						zen.site.post('repass', {
							cookie_id : zen.site.urlget('code'),
							login_pass : $('#login_pass').val()
						}, zen.mobile.repass_success);
					}

				},
				repass_success : function(o) {

					zen.site.model('提示消息', '重置密码成功，请重新登陆！', function() {

					});
				},

				login_login : function() {
					zen.site.post('login', {
						login_name : $('#login_loginname').val(),
						login_pass : $('#login_loginpass').val()
					}, zen.mobile.login_success);
				},

				login_success : function(o) {

					zen.f.cookie("bgpm_user_cookieid",
							o.result["bgpm_user_cookieid"], {
								path : '/',
								expires : 365
							});
					zen.f.cookie("bgpm_user_name", o.result["bgpm_user_name"],
							{
								path : '/',
								expires : 365
							});

					zen.f.cookie("bgpm_user_levelid",
							o.result["bgpm_user_levelid"], {
								path : '/',
								expires : 365
							});

					var sFromUrl = "newsinfo/musercenter-user";
					if ($('#zen_site_url_login_from').length > 0
							&& $('#zen_site_url_login_from').val() != "") {
						sFromUrl = "newsinfo/"
								+ $('#zen_site_url_login_from').val();
					}

					zen.site.href(sFromUrl);
				},
				logout : function() {
					zen.f.cookie("bgpm_user_cookieid", null, {
						path : '/'
					});
					zen.f.cookie("bgpm_user_name", null, {
						path : '/'
					});

					zen.site.href('newsinfo/mlogin-login');
				},

				change_info : function() {
					zen.site.post('change_info', {
						cookie_id : zen.site.temp.user_cookieid,
						user_email : $('#user_email').val(),
						phone_num : $('#phone_num').val(),
						real_name : $('#real_name').val()
					});
				},

				change_pass : function() {

					if ($('#login_pass').val() != $('#login_pass2').val()) {
						zen.site.model('错误消息', '密码与重复密码输入不一致！');
					} else {

						zen.site.post('change_pass', {
							cookie_id : zen.site.temp.user_cookieid,
							old_login_pass : $('#old_login_pass').val(),
							login_pass : $('#login_pass').val()
						});
					}
				},
				last : {}

			}
		});

$(window).ready(function() {
	// zen.site.init();
}

);
