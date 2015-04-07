
<@m_mb_common_header nav="main"  />

<#assign note_info=pageexec.upDataOne("info_news","uid",pageinfo.getWebSet()["Url_Option"])>




	<div class="mobile_lay_main">
		<div class="mobile_mcontent_body">

			<div class="mobile_mcontent_box">
				<div class="mobile_w_h20 "></div>
				<div class="mobile_w_h20 "></div>
				<div class="mobile_mcontent_title">${note_info["title"]}</div>
				<div class="mobile_w_h20"></div>
				<div class="mobile_mcontent_tips">发表时间：${note_info["create_time"]} | 文章出处：博观拍卖</div>
				<div class="mobile_w_h20"></div>
				<div class="mobile_w_h5 mobile_w_border_b"></div>
				<div class="mobile_w_h20"></div>
				<div class="mobile_mcontent_info">
				${note_info["content"]}
				</div>
				<div class="mobile_w_h30"></div>
				<div class="mobile_w_h30"></div>

			</div>
		</div>
	</div>

<@m_mb_common_footer />
</body>