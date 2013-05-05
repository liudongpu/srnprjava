

<body class="website_body">
	<@m_site_common_header nav="" />
 <#assign
	static_info=pageexec.upDataOne("info_static","code",pageinfo.getWebSet()["Url_Option"])>

	<div class="layout_main website_center">
		<div class="b_sitenav"></div>
		<div class="static_body">
			<div class="c_body">
				<div class="c_left">
					<div class="c_box">
						<div class="c_nav_title">
							相关信息
						</div>
						<ul>
						
						<#list pageexec.upDataOrder("info_static","order_index","system_cid","30330001") as el>
	                         
	                           
	                           <li><a <#if (static_info["code"]==el["code"]) >class="c_select"<#else> href="${base_url}newsinfo/static-static-${el["code"]}" </#if>>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${el["title"]}</a></li>
						
	                           
	                           
							 </#list>
						
						
						
						</ul>

					</div>

				</div>
				<div class="c_right">
					<div class="c_info_title">${static_info["title"]}</div>
					<div>
					${static_info["content"]?default('')}
					</div>
					
				</div>
				<div class="clearfix"></div>
				<div class="h_40"></div>
			</div>
			
			
			
		</div>
		 <@m_site_common_piclist />
	</div>
	
	
	<@m_site_common_footer />
</body>