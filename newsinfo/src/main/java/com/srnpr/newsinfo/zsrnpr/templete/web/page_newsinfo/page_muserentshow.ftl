
<@m_mb_common_header nav="main"  button="back"/>




<#assign note_info=pageexec.upDataOne("user_ent","uid",pageinfo.getWebSet()["Url_Option"])>

	<div class="mobile_lay_main">
		<div class="mobile_mbid_body">

			<div class="mobile_mbid_box">

				<div class="mobile_mbid_show">
					<div class="mobile_mbid_show_title">${note_info["good_name"]}</div>
				</div>
				<div class="mobile_w_h20"></div>
				<div class="mobile_mbid_show">
					委托人姓名：${note_info["user_name"]}<br /> 竞投号牌：${note_info["user_number"]}<br /> 拍品图录号：${note_info["good_code"]}<br /> 委托出价：￥${note_info["good_price"]}
				</div>
				<div class="mobile_w_h20"></div>
				<div class="mobile_mbid_show">
					图片展示
					<div class="mobile_w_h20"></div>
					<div class="mobile_mbid_show_img">
						<img
							src="${bd_img_cdn_url}${note_info["good_file"]}" />

					</div>
					<div class="mobile_w_h20"></div>
					
					<div class="mobile_w_h20"></div>
				</div>
			</div>
		</div>
	</div>

<@m_mb_common_footer />
</body>