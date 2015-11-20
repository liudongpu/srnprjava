<#assign special_info=pageexec.upDataOne("info_auction","uid",pageinfo.getWebSet()["Url_Option"])>
<@m_mb_common_header_new type="3" title=special_info["name"] button="back"/>
<div class="banner"><img src="${bd_url}/zzero/web/themes/website/mimg/bn02.jpg" alt=""></div>
<div class="list">
	<div class="hd">
    	<h2>${special_info['name']}</h2>  
        <p>拍卖时间：${special_info["time"]?date("yyyy-MM-dd")}</p>

    </div>
</div>
<ul class="index-list">
	<#list pageexec.upData("info_special","auction_uid",pageinfo.getWebSet()["Url_Option"])	as el>
	<li>
    	<a href="mgoodlist-list-${el["uid"]}"><img class="b_corner"
						src="${bd_img_cdn_url}${pageexec.upMobile(el["file_url"])}"/ >
			<#assign goodlist = pageexec.upDataOrder("info_good","code","special_uid",el["uid"])>
        	<h2>${el["name"]}</h2>
        	<p>拍卖时间：${el["time"]?date("yyyy-MM-dd")}</p>
            <p>拍卖数量：${goodlist?size}</p>
            <p>成交总额：${el["success_price"]}</p>
        </a>
    </li>
    </#list>
</ul>
<@m_mb_common_footer_new/>