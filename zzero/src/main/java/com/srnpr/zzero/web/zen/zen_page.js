zen.e({
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
					zen.page.model(obj.flag);
				}

			});

		},

		call : function(sUrl) {
			$.getJSON(sUrl, function(obj) {

				zen.page.model(obj.flag);
			});
		},

		init : function() {

		},

		editorReload : function() {
			for (instance in CKEDITOR.instances) {

				CKEDITOR.instances[instance].updateElement();

			}
		},
		model : function(content) {

			$('#zen_page_model_show').modal('show');
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
				parent.zen.page.model(o.message);
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
						'<a href="' + sUrl + '" target="_blank">' + sUrl
								+ '</a>');
			}

		}

	}
}

);
