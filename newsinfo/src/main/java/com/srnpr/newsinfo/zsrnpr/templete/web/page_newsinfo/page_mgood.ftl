
<@m_mb_common_header nav="main"  button="back"/>

<#assign good_info=pageexec.upDataOne("info_good","uid",pageinfo.getWebSet()["Url_Option"])>




	<div class="mobile_lay_main">
		<div class="mobile_mgood_body">

			<div class="mobile_mgood_box">
				<div class="mobile_w_h20 "></div>
				<div>
					<img
						src="${bd_img_cdn_url}${pageexec.upMobile(good_info["file_url"])}" />
				</div>
				<div class="mobile_w_h20 "></div>
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

<@m_mb_common_footer />
</body>