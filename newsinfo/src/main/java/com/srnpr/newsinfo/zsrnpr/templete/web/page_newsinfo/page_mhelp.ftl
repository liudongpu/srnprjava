
<#assign static_info=pageexec.upDataOne("info_static","code",pageinfo.getWebSet()["Url_Option"])>
<@m_mb_common_header_new type="3" nav="" title=static_info["title"] />
<div class="content">
	<h2>${static_info["title"]}</h2>
    <div class="bd">
    	<p>${static_info["content"]?default('')}</p>
    </div>
</div>
<a class="up" href="javascript:history.back(-1);">返回</a>
</body>
