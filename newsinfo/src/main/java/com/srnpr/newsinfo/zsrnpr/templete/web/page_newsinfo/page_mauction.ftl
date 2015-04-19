
<@m_mb_common_header nav="main"  button="back"/>






	<div class="mobile_lay_main">
		<div class="mobile_mauction_body">
			<div class="mobile_w_h20"></div>
			<div class="mobile_w_h20"></div>
			<div class="mobile_mauction_box">


			<#list pageexec.upDataOrder("info_auction","-time") as el> 	 

				<#assign now_time=el["time"]?date("yyyy-MM-dd") />
					<div class="mobile_mauction_item">
					<div class="mobile_mauction_left">
						<div class="mobile_mauction_date">
							<div class="mobile_mauction_day">${now_time?substring(8,10)}</div>
							<div class="mobile_mauction_year">${now_time?substring(0,4)}年${now_time?substring(5,7)}月</div>
						</div>
					</div>
					<div class="mobile_mauction_right">

						<div class="mobile_mauction_img_bg">

							<div class="mobile_mauction_img_show">
								<a href="mspecial-list-${el["uid"]}">
								<div>
									<img
										src="${bd_img_cdn_url}${pageexec.upImg(el["file_url"],355)}" />
								</div>
								<div class="mobile_w_h20"></div>
								<div class="mobile_mauction_title">${el["name"]}</div>
								<div class="mobile_w_h5"></div>
								<div class="mobile_mauction_desc">专场：共${el["special_num"]}个专场 时间：${el["time"]?date("yyyy-MM-dd")}</div>
								<#if el["auction_type_cid"]==30310001><div class="mobile_mauction_img_one"></div></#if>
								<#if el["auction_type_cid"]==30310002><div class="mobile_mauction_img_two"></div></#if>
							</div>
						</div>
						<div class="mobile_w_h20"></div>
					</div>
					<div class="mobile_mauction_absolute_tip"></div>



				</div>
							 
			</#list>





				





			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			zen.mobile.page_mauction()
		});
	</script>

<@m_mb_common_footer />
</body>