<#assign special_info=pageexec.upDataOne("info_special","uid",pageinfo.getWebSet()["Url_Option"])>
<@m_mb_common_header_new type="3" title=special_info["name"] button="back"/>
<div class="banner"><img src="${bd_url}/zzero/web/themes/website/mimg/bn01.jpg" alt=""><h2 class="h2">${special_info["name"]}</h2></div>
<#assign goodlist = pageexec.upDataOrder("info_good","code","special_uid",pageinfo.getWebSet()["Url_Option"])>

<div class="list">
	<div class="hd">
    	<h2>${special_info["name"]}</h2>

        <p>拍卖时间：${special_info["time"]}</p>
        <p>拍品数量：${goodlist?size}</p>
        <p>成交总额：${special_info["success_price"]?default('')}</p>
    </div>
    
    <ul>
    	<#list goodlist as el>
         <li>
        	<a href="mgooddetail-good-${el["uid"]}"><img src="${bd_img_cdn_url}${pageexec.upMobile(el["file_url"])}" / >
             <h2>${el["name"]}</h2>
             <p>图录号：${el["code"]}<br>
             参考价：<b>${el["assess_price"]}</b><br>
                                             成交价：<b>${el["success_price"]}</b>
             </p>
           </a>
        </li>
        </#list>
    </ul>
</div>
<@m_mb_common_footer_new />
<a class="up" href="javascript:history.back(-1);">返回</a>
</body>