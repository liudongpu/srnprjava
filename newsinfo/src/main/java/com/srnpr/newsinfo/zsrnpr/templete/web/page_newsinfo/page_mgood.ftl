<#assign good_info=pageexec.upDataOne("info_good","uid",pageinfo.getWebSet()["Url_Option"])>

<#assign mgood_show_type=pageexec.upQrSum(pageinfo.getWebSet()["Url_Option"]) >
<@m_mb_common_header type="3" title=good_info["name"] button="back"/>






	<div class="mobile_lay_main">
		<div class="mobile_mgood_body">

			<div class="mobile_mgood_box">
				<div class="mobile_w_h20 "></div>
				
				<#if mgood_show_type!="">

					<div style="width:100%;height:60px;color: #3c763d;background-color:#dff0d8;border-color: #bce8f1;line-height:60px;text-indent:30px;font-size:30px;">正版验证 :  这是第${mgood_show_type}次验证   </div>
					<div class="mobile_w_h20 "></div>

				</#if>
				<div>
					<img
						src="${bd_img_cdn_url}${pageexec.upMobile(good_info["file_url"])}" />
				</div>
				<div class="mobile_w_h20 "></div>
				<div class="mobile_mgood_tip">
					<div id="mobile_mgood_click_last" style="float:left;"></div>
					<div id="mobile_mgood_click_next" style="float:right;"></div>
					<div style="clear:both;"></div>
				</div>
				
				<div class="mobile_w_h20 mobile_w_clear "></div>
				<div class="mobile_mgood_title">${good_info["name"]}</div>

				<div class="mobile_mgood_tip">图录号：${good_info["code"]}</div>
				<div class="mobile_mgood_tip">质地：${good_info["texture"]}</div>
				<div class="mobile_mgood_tip">尺寸：${good_info["size"]}</div>
				<div class="mobile_mgood_tip">参考价：${good_info["assess_price"]}</div>
				<div class="mobile_mgood_tip">成交价：${good_info["success_price"]}</div>
				<div class="mobile_w_h20 "></div>
				<div class="mobile_mgood_tip">拍品介绍：</div>
				<div class="mobile_w_h20 "></div>
				<div class="mobile_mgood_info">

					${good_info["note"]?default('暂无')}
				</div>
			</div>
		</div>
	</div>

	<script>
	
	var sLast="";
	
	var sNext="";
	
	<#assign good_info_last=pageexec.upDataOneOrder("info_good","special_uid=:ospecial_uid and code<:ocode","-code","ocode",good_info["code"],"ospecial_uid",good_info["special_uid"])?default('') >
							<#if good_info_last?is_hash>
								sLast="${good_info_last["uid"]}";							
							</#if>

	<#assign good_info_last=pageexec.upDataOneOrder("info_good","special_uid=:ospecial_uid and code>:ocode","code","ocode",good_info["code"],"ospecial_uid",good_info["special_uid"])?default('') >
							<#if good_info_last?is_hash>
sNext="${good_info_last["uid"]}";
							</#if>

$(function(){

			if(sNext)
			{
				$(".mobile_mgood_box").on("swipeleft",function(){
				 location.href="mgood-good-"+sNext;
				});
				$('#mobile_mgood_click_next').html('<a href="mgood-good-'+sNext+'">下一个&nbsp;&gt;</a>');
				
			}
			if(sLast)
			{
				$(".mobile_mgood_box").on("swiperight",function(){
				 location.href="mgood-good-"+sLast;
				});
				
				$('#mobile_mgood_click_last').html('<a href="mgood-good-'+sLast+'">&lt;&nbsp;上一个</a>');
				
			}


			
});
	</script>	
	
	


<@m_mb_common_footer />
</body>