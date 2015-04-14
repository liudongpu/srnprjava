
<@m_mb_common_header nav="main"  button="back"/>




<#assign note_info=pageexec.upDataOne("user_send","uid",pageinfo.getWebSet()["Url_Option"])>

	<div class="mobile_lay_main">
		<div class="mobile_mbid_body">

			<div class="mobile_mbid_box">

				<div class="mobile_mbid_show">
					<div class="mobile_mbid_show_title">${note_info["good_name"]}</div>
				</div>
				<div class="mobile_w_h20"></div>
				<div class="mobile_mbid_show">
					名称：${note_info["good_name"]}<br /> 作者：${note_info["good_author"]}<br /> 尺寸：${note_info["good_size"]}<br />重量：${note_info["good_weight"]}<br /> 委托底价：￥${note_info["good_price"]}
				</div>
				<div class="mobile_w_h20"></div>
				<div class="mobile_mbid_show">
					图片展示
					<div class="mobile_w_h20"></div>
					<div class="mobile_mbid_show_img">
						<img
							src="${note_info["photo_one"]}" />

					</div>
					<div class="mobile_w_h20"></div>
					<div class="mobile_mbid_show_img">
						<img
							src="${note_info["photo_two"]}" />

					</div>
					<div class="mobile_w_h20"></div>
					<div class="mobile_mbid_show_img">
						<img
							src="${note_info["photo_three"]}" />

					</div>
					<div class="mobile_w_h20"></div>
				</div>
			</div>
		</div>
	</div>

<@m_mb_common_footer />
</body>