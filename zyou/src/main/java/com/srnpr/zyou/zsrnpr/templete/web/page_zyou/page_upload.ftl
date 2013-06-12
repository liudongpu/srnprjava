
<div id="page_upload_show" style="display:none;">
	<div id="page_upload_text" class="page_upload_text"></div>
	
</div>
<div id="page_upload_call">
<form enctype="multipart/form-data" method="POST" dir="ltr" action="${base_url}zweb-file/upload-images_upload?parentid=${pageinfo.getReq().upRequestParam("parentid")}" style="margin:0px;">
<div style="width:100%;">
<input type="file" name="upload"/>

<input type="button" class="btn  btn-small" value="提交" onclick="zen.page.submit(this)"/>

</div>
</form>
</div>

<input type="hidden" id="zen_page_upload_type" name="zen_page_upload_type" value="${pageinfo.getWebSet()["Url_View"]}"/>
<input type="hidden" id="zen_page_upload_parent" name="zen_page_upload_parent" value="${pageinfo.getReq().upRequestParam("parentid")}"/>
<@m_html_addscript "zen.page.upcheck('"+pageinfo.getReq().upRequestParam("parentid")+"');" />