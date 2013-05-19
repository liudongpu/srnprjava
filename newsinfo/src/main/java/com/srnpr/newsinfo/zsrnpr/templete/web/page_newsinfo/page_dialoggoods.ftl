</head>
<body>

<form id="page_form" class="form-horizontal"   action="${base_url}newsinfo/func-update_goods" method="post">


<input type="hidden" name="speuid" value="${pageinfo.getWebSet()["Url_Option"]}"/>
<input type="hidden" name="auctionid" value="${pageinfo.getWebSet()["Url_Param"]}"/>
<div class="clearfix">
    <label  class="pull-left"  for="excel"  style="width:20%;"><a href="${base_zero}themes/website/temp/bgpmgoods.xls" target="_blank">Excel文件</a></label>
    <div class="pull-right" style="width:79%;">
      <input type="hidden" id="excel" name="excel" value=""  />
      <iframe src="${base_url}zyou-iframe/upload-images_upload?parentid=excel" frameborder="0" height="30px" width="100%"></iframe>
      
    </div>
 </div>

<div class="clearfix">
    <label  class="pull-left" for="zip" style="width:20%;">zip文件</label>
    <div class="pull-right"  style="width:79%;">
      <input type="hidden" id="zip" name="zip" value=""  />
      <iframe src="${base_url}zyou-iframe/upload-images_upload?parentid=zip" frameborder="0" height="30px" width="100%"></iframe>
      
    </div>
 </div>
<div class="clearfix">
	
	<input type="checkbox" name="flag" id="flag" value="1"/>删除所有
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <button type="button" id="bt" class="btn btn-warning" onclick="page_dialoggoods_func_submit()">批量更新</button>
      
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
					parent.zen.page.model("提示消息",obj.message,'zen.page.href()');
			}

	});
	

}

</script>

</body>
