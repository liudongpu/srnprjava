<div id="page_upload_call">
<form enctype="multipart/form-data" method="POST" dir="ltr" action="${base_url}zweb-file/upload-images_upload?parentid=${pageinfo.getReq().upRequestParam("parentid")}" style="margin:0px;">
<div style="width:100%;">
<input type="file" name="upload"/>

<input type="button" class="btn  btn-small" value="提交" onclick="zen.page.submit(this)"/>

</div>
</form>
</div>
<div id="page_upload_show" style="display:none;">
	<span id="page_upload_text"></span>
	<a class="btn" onclick="zen.page.uploadreload(1)">重新上传</a>
</div>


<@m_html_addscript "zen.page.upcheck('"+pageinfo.getReq().upRequestParam("parentid")+"');" />