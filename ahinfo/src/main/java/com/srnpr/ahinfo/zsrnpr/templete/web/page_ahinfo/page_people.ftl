


<#assign people_uid=pageinfo.getWebSet()["Url_View"]?default("") >

<#if people_uid=="0">
 	<#assign page_obj=pageexec.upDataOne("info_people")>
<#else>
	<#assign page_obj=pageexec.upDataOne("info_people","uid",people_uid)>

</#if>

<@m_site_common_header />

<@m_site_common_page_before />
				
				
				
				
				
						<div class="ahinfo_people">

							<div class="ahinfo_people_info">

								<img src="${page_obj["file_url"]}"> <b>${page_obj["name"]}</b><br /> <br />
								<span>${page_obj["type_cid"]}</span><br /> <br />
								${page_obj["note"]}

							</div>
							<div class="clearfix"></div>
							<div class="ahinfo_people_list">


								<#list pageexec.upData("info_people") as el>
								
								<div class="c_item">
									<img
										src="${el["file_url"]}">
									<div class="c_name">${el["name"]}</div>
									<div class="c_type">${el["type_cid"]}</div>
								</div>
								
								
								</#list>


								

								<div class="clearfix"></div>
							</div>
						</div>
		
					
<@m_site_common_page_after />
<@m_site_common_footer />



