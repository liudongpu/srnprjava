<#assign special_info=pageexec.upDataOne("info_auction","uid",pageinfo.getWebSet()["Url_Option"])>
<@m_mb_common_header_new type="3" nav="" title=special_info["title"] />
<div class="wrap" style="background:url(${bd_img_cdn_url}${pageexec.upMobile(special_info["file_url"])}) no-repeat center top;background-size:100%;"></div>
<div class="bottom"><img src="${bd_url}/zzero/web/themes/website/mimg/bottom.jpg" alt=""></div>
<script type="text/javascript">
setTimeout(function(){window.location.href='mspecialindex-list-${pageinfo.getWebSet()["Url_Option"]}';},3000)
</script>
</body>