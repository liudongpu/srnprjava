zen.e({
	page : {

		submit : function(sFormId) {
			$('#' + sFormId).ajaxSubmit(function(data) {

				
				var obj=$.evalJSON(data);
				
				alert(obj.flag);

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