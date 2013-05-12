zen
		.e({
			page : {

				submit : function(sId, sAction) {

					var aForm = $(sId).parents('form');
					if (sAction) {
						aForm.attr("action", sAction);
					}

					zen.r("zen.page.submit.beforesubmit");

					$(aForm).ajaxSubmit(function(data) {
						var obj = $.evalJSON(data);
						if (obj.run) {
							zen.page[obj.run](obj);
						} else {
							zen.page.submit_result(obj);
						}

					});

				},

				submit_result : function(oResult) {
					if (oResult.flag) {
						zen.page.okdo(oResult.flag);
					} else {
						zen.page.model('错误消息', oResult.message);
					}

				},

				login_success : function(o) {
					zen.f.cookie("bgpm_zyou_user_cookieid",
							o.result["uid"],{path:'/', expires:365});
					zen.f.cookie("bgpm_zyou_user_name", o.result["user_name"],{path:'/', expires:365});
					
					zen.page.href("zyou/chart-v_info_news");

				},
				
				logout : function() {
					zen.f.cookie("bgpm_zyou_user_cookieid", null,{path:'/'});
					zen.f.cookie("bgpm_zyou_user_name", null,{path:'/'});

					zen.page.href('manage');
				},
				
				href : function(sUrl) {
					top.location.href = zen.t.baseurl + sUrl;
				},
				
				

				call : function(sUrl) {
					$.getJSON(sUrl, function(obj) {

						zen.page.okdo(obj.flag);
					});
				},

				init : function() {

				},

				editorReload : function() {
					for (instance in CKEDITOR.instances) {

						CKEDITOR.instances[instance].updateElement();

					}
				},
				okdo : function(content) {

					$('#zen_page_model_show').modal('show');
				},

				model : function(sTitle, sContent, fHidden) {

					if (!$('#zen_page_model_box').length > 0) {
						var sModel = '<div id="zen_page_model_box" class="modal hide fade"><div class="modal-header"><button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>'
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

					$('#zen_page_model_box h3').html(sTitle);
					$('#zen_page_model_box p').html(sContent);
					$('#zen_page_model_box').modal('show');
					if (fHidden != undefined) {
						$('#zen_page_model_box').on('hide', function() {
							fHidden();
						})
					}
				},

				inValue : function(sId, oValue) {
					$('#' + sId).val(oValue);
				},
				upValue : function(sId) {
					return $('#' + sId).val();
				},

				upload : function(o) {

					if (o.flag) {

						zen.page.uploadreload(0, o.result["fileurl"]);
						parent.zen.page.inValue(o.result["parentid"],
								o.result["fileurl"]);

					} else {
						parent.zen.page.okdo(o.message);
					}
				},
				upcheck : function(sId) {
					var sVal = parent.zen.page.upValue(sId);
					if (sVal) {
						zen.page.uploadreload(0, sVal);

					}
				},
				uploadreload : function(iIndex, sUrl) {
					if (iIndex == 1) {
						$("#page_upload_call").show();
						$("#page_upload_show").hide();
					} else {
						$("#page_upload_show").show();
						$("#page_upload_call").hide();
					}
					if (sUrl) {
						$('#page_upload_text').html(
								'<a href="' + sUrl + '" target="_blank">'
										+ sUrl + '</a>');
					}

				}

			}
		}

		);
