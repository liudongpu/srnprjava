

<style>
.fileinput-button {
	position: relative;
	overflow: hidden
}

.fileinput-button input {
	position: absolute;
	top: 0;
	right: 0;
	margin: 0;
	opacity: 0;
	filter: alpha(opacity = 0);
	transform: translate(-300px, 0) scale(4);
	font-size: 23px;
	direction: ltr;
	cursor: pointer
}

.fileupload-buttonbar .btn, .fileupload-buttonbar .toggle {
	margin-bottom: 5px
}

.progress-animated .progress-bar, .progress-animated .bar {
	background: url(../img/progressbar.gif) !important;
	filter: none
}

.fileupload-loading {
	float: right;
	width: 32px;
	height: 32px;
	background: url(../img/loading.gif) center no-repeat;
	background-size: contain;
	display: none
}

.fileupload-processing .fileupload-loading {
	display: block
}

.files audio, .files video {
	max-width: 300px
}

@media ( max-width :767px) {
	.fileupload-buttonbar .toggle, .files .toggle, .files .btn span {
		display: none
	}
}
</style>

<script >
function upload_upload(oElm) {

	$('form').parent().parent().hide();
	//$('body').append('<span class="panel-loading">姝ｅ湪涓婁紶锛岃绋嶅悗鈥︹€�</span>');
	$('#formsubmit').click();
}
</script>


<div id="page_upload_show" style="display:none;">
	<div id="page_upload_text" class="page_upload_text"></div>
	
</div>
<div id="page_upload_call">
<form enctype="multipart/form-data" method="POST" dir="ltr" action="${base_url}zweb-file/upload-images_upload?parentid=${pageinfo.getReq().upRequestParam("parentid")}" style="margin:0px;">
<div style="padding:10px 0px 0px 30px;">


						<span class="btn btn-info fileinput-button"><i
							class="glyphicon glyphicon-plus" /><span>选择文件</span><input
							
							onchange="zen.page.submit(this)"
							name="upload" id="file" type="file" /></span><input class="w_none" style="display:none;"
							id="formsubmit" type="submit" value="" />
</div>


</form>
</div>

<input type="hidden" id="zen_page_upload_type" name="zen_page_upload_type" value="${pageinfo.getWebSet()["Url_View"]}"/>
<input type="hidden" id="zen_page_upload_parent" name="zen_page_upload_parent" value="${pageinfo.getReq().upRequestParam("parentid")}"/>
<@m_html_addscript "zen.page.upcheck('"+pageinfo.getReq().upRequestParam("parentid")+"');" />