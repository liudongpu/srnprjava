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
		
		inValue:function(sId,oValue)
		{
			$('#'+sId).val(oValue);
		},
		
		upload : function(o) {
			
			if (o.flag) {
				$("#page_upload_call").hide();
				$('#page_upload_show').html(
						'<a href="' + o.result["fileurl"] + '" target="_blank">'
								+ o.result["fileurl"]+ '</a>');
				
				parent.zen.page.inValue(o.result["parentid"],o.result["fileurl"]);
				

			} else {
				parent.zen.page.model(o.message);
			}
		}

	}
}

);
