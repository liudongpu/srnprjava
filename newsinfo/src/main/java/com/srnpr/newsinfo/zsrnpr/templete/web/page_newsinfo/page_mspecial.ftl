
<@m_mb_common_header nav="main"  button="back"/>





	<div class="mobile_lay_main">
		<div class="mobile_mspecital_body">

			<div class="mobile_mspecital_box">
				<div class="mobile_w_h20"></div>
				
				<#list
								pageexec.upData("info_special","auction_uid",pageinfo.getWebSet()["Url_Option"])
								as el>
				<div class="mobile_mspecital_item">
				<a href="mpic-list-${el["uid"]}">
					<div class="mobile_mspecital_img">
						<img
							src="${bd_img_cdn_url}${el["file_url"]}" />
					</div>
					<div class="mobile_w_h20"></div>
					<div class="mobile_mspecital_title">
					${el["name"]}
					</div>
					<div class="mobile_w_h10"></div>
					<div class="mobile_mspecital_text">
					时间：${el["time"]?date("yyyy-MM-dd")}
					</div>
					<div class="mobile_mspecital_text">
					成交总金额：￥${el["success_price"]}元 
					</div>
					</a>
					<div class="mobile_w_h10"></div>
					<div class="mobile_mspecital_split">
						<#-- <div class="mobile_mspecital_ico"></div> -->
					</div>
				</div>
				</#list>

			</div>
		</div>
	</div>
	
	
<@m_mb_common_footer />
</body>