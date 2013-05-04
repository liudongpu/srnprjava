zen
		.e({

			site : {

				temp : {
					picnav_index : 0,
					picnav_size : 0,
					user_cookieid : ''

				},

				init : function() {
					zen.site.initlogin();
					$('.b_corner').corner();
				},

				post : function(url, data, success) {
					$.ajax({
						type : 'POST',
						url : zen.t.baseurl + 'newsinfo/func-' + url,
						data : data,
						success : function(data) {
							zen.site.success(data, success)
						},
						error : zen.site.error
					});

				},
				success : function(data, fSuc) {
					// alert(o);
					var obj = $.evalJSON(data);
					if (obj.flag == true) {
						fSuc(obj);

					} else {
						zen.site.model("错误消息", obj.message);
					}

				},
				error : function(o) {

					zen.site.model('错误消息', '调用失败，请稍后重试或者联系技术人员，谢谢！');
				},

				href : function(sUrl) {
					top.location.href = zen.t.baseurl + sUrl;
				},

				initlogin : function() {

					var sName = zen.f.cookie("bgpm_user_name");
					if (sName != null) {
						$('#header_user')
								.html(
										'欢迎你:'
												+ sName
												+ '&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onclick="zen.site.href(\'newsinfo/usercenter-user\')">[个人中心]</a>&nbsp;&nbsp;<a href="#" onclick="zen.site.logout()">[退出]</a>');

					}

				},
				loginreg : function() {

					if ($('#reg_pass').val() != $('#reg_pass2').val()) {
						zen.site.model('错误消息', '密码与重复密码输入不一致！');
					} else {
						zen.site.post('reg', {
							reg_name : $('#reg_name').val(),
							reg_pass : $('#reg_pass').val()
						}, zen.site.reg_success);
					}

				},
				reg_success : function(o) {

					zen.site.login_success(o);
					zen.site.model('提示消息', '注册成功！', function() {
						zen.site.href('newsinfo/usercenter-user');
					});
				},

				login_login : function() {
					zen.site.post('login', {
						login_name : $('#login_loginname').val(),
						login_pass : $('#login_loginpass').val()
					}, zen.site.login_success);
				},

				login_success : function(o) {

					zen.f.cookie("bgpm_user_cookieid",
							o.result["bgpm_user_cookieid"], 365);
					zen.f.cookie("bgpm_user_name", o.result["bgpm_user_name"],
							365);

					zen.site.href('newsinfo/usercenter-user');
				},
				logout : function() {
					zen.f.cookie("bgpm_user_cookieid", null);
					zen.f.cookie("bgpm_user_name", null);

					zen.site.href('');
				},

				model : function(sTitle, sContent, fHidden) {

					if (!$('#zen_site_model').length > 0) {
						var sModel = '<div id="zen_site_model" class="modal hide fade"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>'
								+ '<h3>'
								+ sTitle
								+ '</h3></div><div class="modal-body">'
								+ '<p>'
								+ sContent
								+ '</p>'
								+ '</div>'
								+ '<div class="modal-footer"><a  class="btn" data-dismiss="modal" aria-hidden="true">关闭</a>'
								+ '</div></div>';
						$(document.body).append(sModel);

					}

					$('#zen_site_model h3').html(sTitle);
					$('#zen_site_model p').html(sContent);
					$('#zen_site_model').modal('show');
					if (fHidden != undefined) {
						$('#zen_site_model').on('hide', function() {
							fHidden();
						})
					}
				},

				picnav : function(sId,oTarget) {

					 
					
					
					
					
					
					

					if (oTarget != "i") {

						
						
						var iNow=parseInt($('#'+sId).attr('zen_picnav_index'));
						var iSize=parseInt($('#'+sId).attr('zen_picnav_size'));
						
						var iEverySize=parseInt($('#'+sId).attr('zen_picnav_itemwidth'));
						

						if (oTarget == "p") {
							oTarget = iNow - 1;

						} else if (oTarget == "n") {
							oTarget = iNow + 1;

						}else if (oTarget == "a") {
							oTarget = iNow + 1;
							if (oTarget > iSize) {
								oTarget=0;
							}
						}

						if (oTarget <= 0) {
							oTarget = 0;
							$('#'+sId+' .c_prev').parent().addClass(
									'c_nav');
							$('#'+sId+' .c_prev').parent()
									.removeClass('c_nav_select');
						} else {
							$('#'+sId+' .c_prev').parent().addClass(
									'c_nav_select');
						}

						if (oTarget >= iSize) {
							oTarget = iSize;
							$('#'+sId+' .c_next').parent().addClass(
									'c_nav');
							$('#'+sId+' .c_next').parent()
									.removeClass('c_nav_select');
						} else {
							$('#'+sId+' .c_next').parent().addClass(
									'c_nav_select');
						}

						$('#'+sId+'_item_' + iNow).removeClass(
								'c_select');
						
						
						$('#'+sId).attr('zen_picnav_index',oTarget);
						
						$('#'+sId+' .zen_picnav_list').animate(
								{
									left : '-'
											+ (oTarget * iEverySize).toString()
											+ "px"
								});
						$('#'+sId+'_item_' + oTarget).addClass(
								'c_select');

					} else {
						var iSize = $('#'+sId+' .zen_picnav_list ul li').size();
						
						
						var iItemSize=parseInt( $('#'+sId+' .zen_picnav_list ul li').width());
						
						var iShowSize=Math.floor( $('#'+sId).width()/iItemSize);
						
						
						
						
						
						$('#'+sId+' .zen_picnav_list').css('width',(iSize*iItemSize)+'px');
						
						if (iSize > iShowSize) {
							for ( var i = iSize - iShowSize, j = 0; i >= j; i--) {
								$('#'+sId+' .zen_picnav_nav ul').prepend(
										'<li id="'+sId+'_item_'
												+ i
												+ '" onclick="zen.site.picnav(\''+sId+'\','
												+ (i.toString())
												+ ')"'
												+ (i == 0 ? 'class="c_select"'
														: '') + '></li>');
							}
							
							$('#'+sId+' .zen_picnav_nav ul').append('<li class="c_nav" onclick="zen.site.picnav(\''+sId+'\',\'p\')"><span class="c_prev"></span></li>');
							$('#'+sId+' .zen_picnav_nav ul').append('<li class="c_nav" onclick="zen.site.picnav(\''+sId+'\',\'n\')"><span class="c_next"></span></li>');
							
							
							$('#'+sId).attr('zen_picnav_size',iSize - iShowSize);
							$('#'+sId).attr('zen_picnav_itemwidth',iItemSize);
							zen.site.picnav(sId,0);
							$('#'+sId).show();
							
							//setInterval(function(){zen.site.picnav(sId,'a');},5000);
							
						}

					}
				}
			}
		});

$(window).ready(function() {
	zen.site.init();
}

);
