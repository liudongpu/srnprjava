<#assign product_people=pageexec.upDataOne("info_people","uid",pageinfo.getWebSet()["Url_Option"])>
<@m_site_common_header nav="people" title=product_people["name"] />


<@m_html_addjs [base_zero+"zen/zen_timeline.js"] />

<div class="layout_main website_center">


		<div class="b_sitenav"><@m_site_common_breadcrumb ["名家论道","people-list",product_people["name"],""] /></div>
		
		<div class="product_body">
		
		<div class="product_people">
			<div class="c_note"><h3>${product_people["name"]}</h3><div class="c_note_info">${product_people["note"]}</div></div>
			<div class="c_img"><img src="${product_people["file_url"]}"/></div>
			
		</div>
		


		<script type="text/javascript">
			$(function() {
				// masonry plugin call
				$('#container').masonry({
					itemSelector : '.c_item'
				});
				zen_timeline();
			});
		</script>
		
		<div class="">
		</div>
		
		
		
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


				<#list pageexec.upData("info_product","product_people_uid",pageinfo.getWebSet()["Url_Option"]) as el> 	 
					<div class="c_item">
					<div class="c_inner">
						<div class="c_image">
							<a href="work-work-${el["uid"]}"><img
								src="${el["file_url"]}" /></a>
						</div>
						<div class="c_info">
							<div class="c_title">名称：<a href="work-work-${el["uid"]}">${el["product_name"]}</a></div>
							
							<div class="c_time">
								时间：<span>${el["product_time"]?date("yyyy-MM-dd")}</span>
							</div>
							${el["product_note"]}
						</div>

					</div>
				</div>
							 
					</#list>
			</div>
			<div class="product_from">
				<div class="c_from"></div>
			</div>

			<div class="layout_height8" style="height: 100px;"></div>
		</div>
	</div>
	</div>

<@m_site_common_footer />
</body>