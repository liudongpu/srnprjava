zen.e({
	page : {

		submit : function(sFormId) {
			$('#' + sFormId).ajaxSubmit(function(data) {

				alert(data);

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