

<body class="website_body">
<@m_site_common_header nav="people" />


<#assign work_info=pageexec.upDataOne("info_product","uid",pageinfo.getWebSet()["Url_Option"])>
<#assign product_people=pageexec.upDataOne("info_people","uid",work_info["product_people_uid"])>

<div class="layout_main website_center">
		<div class="b_sitenav"><@m_site_common_breadcrumb
			["名家论道","people-list",work_info["product_name"],""] /></div>
		<div class="work_body">
			<div class="work_left">
				<h2>${work_info["product_name"]}</h2>
				发表时间：${work_info["product_time"]?date("yyyy-MM-dd")}&nbsp;&nbsp;|&nbsp;&nbsp; 文章出处：博观拍卖
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
						src="http://bgpm.cf.srnpr.com/zzero/file/images_upload/20130512/7ff3b89909d14b2487e80d1c6f9ad423.jpg" />
				</div>
				<div class="work_meta">
					<h3>${product_people["name"]}</h3>
					${product_people["note"]}
				</div>
				
				
				
			</div>
			<div class="clearfix"></div>
			<div class="h_40"></div>
		</div>


</div>
	
	
	
	
	
	
	
	
	
	
	

<@m_site_common_footer />
</body>