<#assign special_info=pageexec.upDataOne("info_auction","uid",pageinfo.getWebSet()["Url_Option"])>
<@m_mb_common_header_new type="1" title=special_info["name"] button="back"/>

<div class="wrap" style="background:url(${bd_img_cdn_url}${pageexec.upMobile(special_info["file_url"])}) no-repeat center top;background-size:100%;display:none;"></div>
<div class="bottom" style="display:none;"><img src="${bd_url}/zzero/web/themes/website/mimg/bottom.jpg" alt=""></div>

<script type="text/javascript">
var uId = $.cookie("id");
if(undefined == uId || null == uId || '' == uId){
	$('.wrap').show();
	$('.bottom').show();
	$.cookie('id', 1 ,{expires:30});
	setTimeout(function(){
		$('.wrap').fadeOut('slow');
		$('.bottom').fadeOut('slow');
	},3000)
}
</script>

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
	
    	<a href="mgoodlist-list-${el["uid"]}"><img src="${bd_img_cdn_url}${pageexec.upMobile(el["file_url"])}"/ >
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