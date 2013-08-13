


<@m_site_common_header />

<@m_site_common_page_before />
				
					<div class="ahinfo_service">
					
					
					
									
<#list pageexec.upData("ah_service") as el>

						<div class="c_item">
								<div class="c_img">
									<img
										src="${el["file"]}" />
								</div>
								<div class="c_title">${el["name"]}</div>
								<div class="c_note">${el["note"]}</div>
								<div class="c_more">
									<span>现在了解更多&gt;</span> 
									
									<#list pageexec.upData("ah_item","service_uid",el["uid"]) as ec>
									
									
										<a href="/ahinfo/item-${ec["uid"]}">${ec["name"]}</a>
									</#list>
									
									
								</div>
							</div>




</#list>
					
					
					
							
						</div>
			
			

		
					
<@m_site_common_page_after />
<@m_site_common_footer />



