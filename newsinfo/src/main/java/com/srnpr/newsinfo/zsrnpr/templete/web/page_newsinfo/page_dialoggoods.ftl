</head>
<body>

<form id="page_form" class="form-horizontal"   action="${base_url}newsinfo/func-update_goods" method="post">


<input type="hidden" name="speuid" value="${pageinfo.getWebSet()["Url_Option"]}"/>
<input type="hidden" name="auctionid" value="${pageinfo.getWebSet()["Url_Param"]}"/>
 <div class="control-group">
    <label class="control-label" for="excel">Excel文件</label>
    <div class="controls">
      <input type="hidden" id="excel" name="excel" value=""  />
      <iframe src="${base_url}zyou-iframe/upload-images_upload?parentid=excel" frameborder="0" height="30px" width="100%"></iframe>
      
    </div>
  </div>


	<div class="control-group">
    <div class="controls">
    <a href="${base_zero}themes/website/temp/bgpmgoods.xls" target="_blank">下载模版文件</a>
    <br/>
      <button type="button" id="bt" class="btn btn-warning" onclick="page_dialoggoods_func_submit()">确认要批量更新</button>
      <label></label>
    </div>
  </div>

</form>

<script>

function page_dialoggoods_func_submit()
{

	if($('#excel').val()=="")
	{
		alert('Excel不能为空');
		return;
	}
	
	$('#page_form').ajaxSubmit(function(data) {
			var obj = $.evalJSON(data);
			if (obj.run) {
					zen.page[obj.run](obj);
			} else {
					zen.page.submit_result(obj);
			}

	});
	

}

</script>

</body>
