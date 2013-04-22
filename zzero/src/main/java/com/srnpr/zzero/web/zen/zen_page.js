zen.e({
	page : {

		submit : function(sId,sAction) {
			
			var aForm=$(sId).parents('form');
			aForm.attr("action",sAction);
			
			zen.r("zen.page.submit.beforesubmit");
			
			$(aForm).ajaxSubmit(function(data) {
				
				var obj=$.evalJSON(data);

				zen.page.model(obj.flag);
				

			});

		},
		
		call:function(sUrl)
		{
			$.getJSON(sUrl, function(obj) {
				
			
				zen.page.model(obj.flag);
			});
		},

		init : function() {
			
		},
		
		editorReload:function()
		{
				for ( instance in CKEDITOR.instances ){

				  CKEDITOR.instances[instance].updateElement();

				}
		},
		model:function(content)
		{
			
			$('#zen_page_model_show').modal('show');
		}
		
		

	}
}

);

