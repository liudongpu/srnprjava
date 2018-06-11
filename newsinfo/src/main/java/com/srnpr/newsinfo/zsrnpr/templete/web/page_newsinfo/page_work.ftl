<#assign work_info=pageexec.upDataOne("info_product","uid",pageinfo.getWebSet()["Url_Option"])>
<#assign product_people=pageexec.upDataOne("info_people","uid",work_info["product_people_uid"])>


<@m_site_common_header nav="people" title=work_info["product_name"] />




<div class="layout_main website_center">
		<div class="b_sitenav"><@m_site_common_breadcrumb
			["名家论道","people-list",work_info["product_name"],""] /></div>
		<div class="work_body">
			<div class="work_left">
				<h2>${work_info["product_name"]}</h2>
				发表时间：${work_info["product_time"]}&nbsp;&nbsp;|&nbsp;&nbsp; 文章出处：博观拍卖
				<div class="work_info">
					${work_info["product_note"]}</div>
					
				<div>
					<hr/>
					<@m_site_common_comment_text text="" uid=work_info["uid"] title=work_info["product_name"] url="work-work-"+work_info["uid"] />
			
				</div>
					
					
			</div>
			<div class="work_right">
				<div class="work_icons">
					<img
						src="${product_people["file_url"]}" />
				</div>
				<div class="work_meta">
					<h3>${product_people["name"]}</h3>
					${product_people["note"]}
				</div>
				
				
				
			</div>
			<div class="clearfix"></div>
			<div class="h_40"></div>
		</div>

<@m_site_common_qrcode />
</div>
	
	
	
	
	
	
	
	
	
	
	

<@m_site_common_footer />
</body>