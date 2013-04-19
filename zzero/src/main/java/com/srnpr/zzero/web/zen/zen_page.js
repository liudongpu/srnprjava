zen.e({
	page : {

		submit : function(sId,sAction) {
			
			var aForm=$(sId).parents('form');
			
			aForm.attr("action",sAction);
			alert(aForm.html());
			$(aForm).ajaxSubmit(function(data) {
				
				var obj=$.evalJSON(data);
				
				alert(obj.flag);

			});

		},
		
		call:function(sUrl)
		{
			$.getJSON(sUrl, function(data) {
				
				alert(data.flag);
				
			});
		},
		
		
		init : function() {
			
		}

	}
}

);







$.ready(function() {
	zen.page.init();
});