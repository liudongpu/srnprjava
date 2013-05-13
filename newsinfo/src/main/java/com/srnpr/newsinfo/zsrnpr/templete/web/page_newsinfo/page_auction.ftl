
<@m_site_common_header nav="auction" />


<@m_html_addjs [base_zero+"zen/zen_timeline.js"] />

<div class="layout_main website_center">

		<div class="layout_height8"></div>

	<div class="auction_body">
		<script type="text/javascript">
			$(function() {
				// masonry plugin call
				$('#container').masonry({
					itemSelector : '.c_item'
				});
				zen_timeline();
			});
		</script>


		<div class="prep_timebox">
			<div id="container" class="prep_timeline">

				<!-- E TimeLine导航 -->
				<div class="timeline_container">
					<div class="timeline">
						<div class="plus"></div>
					</div>
				</div>
				<!-- E TimeLine导航 -->
				<div class="c_item">
					<div class="c_height"></div>
				</div>


				<#list pageexec.upData("info_auction") as el> 	 
					<div class="c_item">
					<div class="c_inner">
					<a href="special-list-${el["uid"]}">
						<div class="c_image">
							<img
								src="${el["file_url"]}" />
						</div></a>
						<div class="c_info">
							<div class="c_title">拍卖会：${el["name"]}</div>
							<div>专场：共${el["special_num"]}个专场</div>
							<div class="c_time">
								时间：<span>${el["time"]?date("yyyy-MM-dd")}</span>
							</div>
							<div class="c_href">
							<#if el["auction_type_cid"]==30310001><span class="c_flagprep"></span></#if>
								<a href="special-list-${el["uid"]}">查看详情 ></a>
							</div>
						</div>
						
					</div>
				</div>
							 
					</#list>



				
			</div>


			<div class="layout_height8" style="height: 100px;"></div>
		</div>
		</div>
	</div>

<@m_site_common_footer />
</body>