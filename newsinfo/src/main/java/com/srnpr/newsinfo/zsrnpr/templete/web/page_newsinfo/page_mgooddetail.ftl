<#assign good_info=pageexec.upDataOne("info_good","uid",pageinfo.getWebSet()["Url_Option"])>

<#assign mgood_show_type=pageexec.upQrSum(pageinfo.getWebSet()["Url_Option"]) >
<@m_mb_common_header_new type="3" title=good_info["name"] button="back"/>
<div class="detail">
	<img src="${bd_img_cdn_url}${pageexec.upMobile(good_info["file_url"])}" />
    <div class="hd">
    	<h2>${good_info["name"]}<br>图录号：${good_info["code"]}</h2>
        <p>参考价：￥<b>${good_info["assess_price"]}</b></p>
        <p>成交价：￥<b>${good_info["success_price"]}</b></p>
    </div>
    <ul>
		<#assign names=good_info["name"]?trim?split(" ")>
		<#if ((names?size)>1)&&(names[0]!="")>
			<li><b>作者：</b>${names[0]}</li>
		<#else>
			<li><b>作者：</b></li>
		</#if>
    	<li><b>质地：</b>${good_info["texture"]}</li>
    	<li><b>尺寸：</b>${good_info["size"]}</li>
    </ul>
    <dl>
    	<dt>拍品介绍</dt>
        <dd>${good_info["note"]?default('暂无')}</dd>
    </dl>
</div>
<@m_mb_common_footer_new/>
<a class="up" href="javascript:history.back(-1);">返回</a>
</body>