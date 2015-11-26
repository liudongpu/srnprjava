<#assign special_info=pageexec.upDataOne("info_special","uid",pageinfo.getWebSet()["Url_Option"])>
<@m_mb_common_header_new type="1" title=special_info["name"] button="back"/>
<img src="${bd_url}/zzero/web/themes/website/mimg/logo.jpg" alt="" style="position:absolute;left:-10000rem;top:-10000rem;">
<#assign goodCount = pageexec.upDataCount("info_good","special_uid",pageinfo.getWebSet()["Url_Option"])>
<div class="mobile_base_scroll_wrap" id="mobile_base_scroll_wrap">
<div class="mobile_base_scroll_box" id="mobile_base_scroll_box">
<div class="banner"><img src="${bd_url}/zzero/web/themes/website/mimg/bn01.jpg" alt=""><h2 class="h2">${special_info["name"]}</h2></div>
<div class="list">
	<div class="hd">
    	<h2>${special_info["name"]}</h2>
        <p>拍卖时间：${special_info["time"]}</p>
        <p id="count">拍品数量：${goodCount}</p>
        <p>成交总额：${special_info["success_price"]?default('')}</p>
    </div>

<div class="mobile_lay_main">
    <div class="mobile_mgoodlist_body" id="mobile_mgoodlist_body">
	    <div id="mobile_mgoodlist_scroll" class="">
		    <ul id="mobile_mgoodlist_list">
		    
		    </ul>
			<div class="more"><i></i>下拉加载更多</div>
		</div>
	</div>
</div>	
	<script type="text/javascript">
		$(function() {
			zen.mobile.page_mgoodlist("${pageinfo.getWebSet()["Url_Option"]}");
		});
	</script>
</div>

<@m_mb_common_footer_new />
</div>
</div>
<a class="up" href="javascript:history.back(-1);">返回</a>
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