<#assign special_info=pageexec.upDataOne("info_special","uid",pageinfo.getWebSet()["Url_Option"])>
<@m_mb_common_header_new type="3" title=special_info["name"] button="back"/>
<img src="${bd_url}/zzero/web/themes/website/mimg/logo.jpg" alt="" style="position:absolute;left:-10000rem;top:-10000rem;">
<#assign goodlist = pageexec.upDataOrder("info_good","code","special_uid",pageinfo.getWebSet()["Url_Option"])>
<div class="banner"><img src="${bd_url}/zzero/web/themes/website/mimg/bn01.jpg" alt=""><h2 class="h2">${special_info["name"]}</h2></div>
<div class="list">
	<div class="hd">
    	<h2>${special_info["name"]}</h2>
        <p>拍卖时间：${special_info["time"]}</p>
        <p id="count">拍品数量：${goodlist?size}</p>
        <p>成交总额：${special_info["success_price"]?default('')}</p>
    </div>

	    <ul>
	    <#list goodlist as el>
    	 <li>
    	<a href="mgooddetail-good-${el["uid"]}"><img src="${bd_img_cdn_url}${pageexec.upMobile(el["file_url"])}" / >
         <h2>${el["name"]}</h2>
         <p>图录号${el["code"]}<br>
      		   参考价：<b>${el["assess_price"]}</b>
                                              成交价：<b>${el["success_price"]}</b>
         </p>
       </a>
    </li>
    </#list>
	    </ul>
</div>	

<@m_mb_common_footer_new />
<a class="up" href="mspecialindex-list-${special_info["auction_uid"]}">返回</a>
<script type="text/javascript">
document.addEventListener('WeixinJSBridgeReady',
            function onBridgeReady() {
                WeixinJSBridge.call('showOptionMenu');
                 // 发送给好友
                WeixinJSBridge.on('menu:share:appmessage', function(argv){
                  WeixinJSBridge.invoke('sendAppMessage',{
                "img_url": '${bd_url}/zzero/web/themes/website/mimg/logo.jpg',
                "img_width": "200",
                "img_height": "200",
                "link": window.location.href,
                "desc": '',
                "title": '${special_info["name"]}',
            }, function(res) {
                //_report('send_msg', res.err_msg);
            });
                });
                // 分享至朋友圈
                WeixinJSBridge.on('menu:share:timeline',
                function(argv) { 
                    WeixinJSBridge.invoke('shareTimeline', {
                        "img_url": '${bd_url}/zzero/web/themes/website/mimg/logo.jpg',
                        "link": window.location.href,
                        "title": '${special_info["name"]}',
                        "desc": ''
                    },
                    function(res) {
                        WeixinJSBridge.log(res.err_msg);
                        // alert(res);
		});
	});
});
</script>
</body>