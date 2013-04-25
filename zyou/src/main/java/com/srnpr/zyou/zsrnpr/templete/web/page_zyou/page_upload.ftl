<div id="page_upload_call">
<form enctype="multipart/form-data" method="POST" dir="ltr" action="${base_url}zweb-file/upload-images_upload?parentid=${pageinfo.getReq().upRequestParam("parentid")}" style="margin:0px;">
<div style="width:100%;">
<input type="file" name="upload"/>

<input type="button" class="btn  btn-small" value="提交" onclick="zen.page.submit(this)"/>

</div>
</form>
</div>
<div id="page_upload_show">

</div>